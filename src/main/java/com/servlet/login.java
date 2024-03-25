package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.entity.User;
import com.helper.SessionProvider;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public login() {
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
		String email = request.getParameter("email");
		String password= request.getParameter("password");
		
		// validating user details
		
		if (validateUser(email, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("userLoggedIn", true);
			
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("signin.jsp?error=true");
		}
		
	}
	private boolean validateUser(String email, String password) {
		Session session= factory.getCurrentSession();
		boolean isValidUser= false;
		
		try {
			session.beginTransaction();
			
			//chack if the user is exist or not in database
			Query<User> query = session.createQuery("FROM User WHERE email = :email AND password = :password", User.class);
			query.setParameter("email", email);
			query.setParameter("password", password);
			User user = query.uniqueResult();
			
			if (user != null) {
				isValidUser= true;
				session.getTransaction().commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return isValidUser;
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		SessionProvider.shutdown();
	}

}
