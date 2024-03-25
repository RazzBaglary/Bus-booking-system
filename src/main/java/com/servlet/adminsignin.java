package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Native;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import com.helper.SessionProvider;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class adminsignin
 */
public class adminsignin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public adminsignin() {
        // TODO Auto-generated constructor stub
    }
    
    private SessionFactory factory;
    
    


	@Override
	public void init() throws ServletException {
		super.init();
		factory= SessionProvider.getSessionFactory();
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
		Session session=factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			
			String sqlQuery= "SELECT * FROM admin WHERE email=:email AND password=:password";
			List<Object[]> result = session.createNativeQuery(sqlQuery)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getResultList();
			
			if (!result.isEmpty()) {
				//Authentication successful, set user attribute id session
				HttpSession httpSession=request.getSession();
				httpSession.setAttribute("adminLoggedIn", true);
				response.sendRedirect("index.jsp");
				
			} else {
				//Authentication failed
				out.println("<script>alert('Invalid email or password');</script>");
				response.sendRedirect("index.jsp");
			}
			session.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			
		}finally {
			session.close();
		}
		
	}
	@Override
	public void destroy() {
		super.destroy();
		SessionProvider.shutdown();
	}
	
	

		

}
