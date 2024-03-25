package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.User;
import com.helper.SessionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public register() {
		// TODO Auto-generated constructor stub
	}

	public SessionFactory factory;

	@Override
	public void init() throws ServletException {
		super.init();
		factory = SessionProvider.getSessionFactory();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");

		// Create new User object
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setPassword(password);
		user.setGender(gender);
		System.out.println(user);

		// Save user to Database
		saveUser(user);

		// Redirect after register
		response.sendRedirect("signin.jsp");
	}
	
	private void saveUser(User user) {
		Session session= factory.getCurrentSession();
		Transaction transaction=null;
		
		try {
			transaction= session.beginTransaction();
			session.save(user);
			transaction.commit();
		} catch (Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			
		}
		finally {
			session.close();
		}
	}
	public void destroy() {
		super.destroy();
		SessionProvider.shutdown();
	}

}
