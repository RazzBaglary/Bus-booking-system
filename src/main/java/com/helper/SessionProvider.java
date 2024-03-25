package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entity.User;

public class SessionProvider {

	private static final SessionFactory SESSION_FACTORY = buildSesssionFactory();

	private static SessionFactory buildSesssionFactory() {
		try {
			return new Configuration()
					.configure("hibernate.cfg.xml")
					.addAnnotatedClass(User.class)
					.buildSessionFactory();
		} catch (Exception e) {
			System.out.println("Initila Session Factory creation error : " + e);
			throw new ExceptionInInitializerError(e);
		}
		
	}
	public static SessionFactory getSessionFactory() {
		return SESSION_FACTORY;
	}
	public static void shutdown() {
		getSessionFactory().close();
	}
}
