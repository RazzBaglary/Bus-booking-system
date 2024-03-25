	package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.bus;
import com.helper.SessionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteBus
 */
public class deleteBus extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public deleteBus() {
        
    }
    SessionFactory factory;
    


	@Override
	public void init() throws ServletException {
		super.init();
		factory= SessionProvider.getSessionFactory();
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// receive the bus id from request
		String BusId= request.getParameter("id");
		int busId = Integer.parseInt(BusId);
		
		Session session= null;
		Transaction transaction= null;
		
		try {
			session = factory.getCurrentSession();
			transaction= session.beginTransaction();
			
			// received the bus object base on the id
			bus b= session.get(bus.class, busId);
			
			// delete the bus id it exist
			if(b != null) {
				session.delete(b);
			}
			
			transaction.commit();
			
			
		} catch (Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		response.sendRedirect("busdetails.jsp");
	}
	@Override
	public void destroy() {
		
		super.destroy();
		
		SessionProvider.shutdown();
	}

}
