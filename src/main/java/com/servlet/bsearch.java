	package com.servlet;
	
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
	
	import jakarta.servlet.ServletException;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	
	import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.query.Query;
	
	import com.entity.bus;
	import com.helper.SessionProvider;
	
	public class bsearch extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	    private SessionFactory factory;
	
	    @Override
	    public void init() throws ServletException {
	        super.init();
	        factory = SessionProvider.getSessionFactory();
	    }
	
	    @Override
	    public void destroy() {
	        super.destroy();
	        if (factory != null && !factory.isClosed()) {
	            factory.close();
	        }
	    }
	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String source = request.getParameter("from");
	        String destination = request.getParameter("to");
	        String date = request.getParameter("date");
	
	        if (source == null || destination == null || date == null || source.isEmpty() || destination.isEmpty() || date.isEmpty()) {
	            // If any of the parameters are missing, display an error message
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><head><title>Error</title></head><body>");
	            out.println("<h1>Error</h1>");
	            out.println("<p>Please provide valid source, destination, and date.</p>");
	            out.println("</body></html>");
	            return;
	        }
	
	        try {
	            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	            LocalDate selectedDate = LocalDate.parse(date, formatter);
	            LocalDate currentDate = LocalDate.now();
	            if (selectedDate.isBefore(currentDate)) {
	                // If selected date is in the past, display an error message
	                response.setContentType("text/html");
	                PrintWriter out = response.getWriter();
	                out.println("<html><head><title>Error</title></head><body>");
	                out.println("<h1>Error</h1>");
	                out.println("<p>Please select a date from today or future dates.</p>");
	                out.println("</body></html>");
	                return;
	            }
	
	            List<bus> buses = searchBuses(source, destination);
	
	            // Forward the request to bus search result JSP
	            request.setAttribute("buses", buses);
	            request.getRequestDispatcher("busresult.jsp").forward(request, response);
	        } catch (Exception e) {
	            // Error handling
	            e.printStackTrace();
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
	        }
	    }
	
	    private List<bus> searchBuses(String source, String destination) {
	        try (Session session = factory.openSession()) {
	            String hql = "FROM bus WHERE source = :source AND destination = :destination";
	            Query<bus> query = session.createQuery(hql, bus.class);
	            query.setParameter("source", source);
	            query.setParameter("destination", destination);
	            return query.getResultList();
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	}
