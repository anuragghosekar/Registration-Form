package org.nlt.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface ParentInterface 
{
	public final static SessionFactory sf=getSessionFactory();
	public final static Session ses=getHibernateSession();
	
	public static SessionFactory getSessionFactory()
	{
		System.out.println("SF loaded");
		return new Configuration().configure("org/nlt/controller/hibernate.cfg.xml").buildSessionFactory();
	}
	
	public static Session getHibernateSession()
	{
		System.out.println("GHS loaded");
		return sf.openSession();
	}

}
