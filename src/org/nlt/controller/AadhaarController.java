package org.nlt.controller;

//import javax.persistence.Id;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
//import org.hibernate.Session;
import org.nlt.model.Aadhaars;
import org.nlt.model.Users;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

public class AadhaarController extends HttpServlet implements ParentInterface {

	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 service(req, resp);
	}
	 
	 @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			service(req, resp);
		}
	
	
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			//System.out.println("Request Coming");
			//System.out.println(ParentInterface.ses);
		HttpSession httpSession=req.getSession();
		PrintWriter out=((ServletResponse) resp).getWriter();
		resp.setContentType("text/html");
		
		String pageName=req.getParameter("page");
		
		if(pageName.equalsIgnoreCase("Person"))
		{
			String name=req.getParameter("name");
			String dob=req.getParameter("dob");
			String gender=req.getParameter("gender");
		
			RequestDispatcher rd=req.getRequestDispatcher("person.jsp");
			if(name.isEmpty()||dob.isEmpty()||gender==null||gender.isEmpty())
			{
				out.println("Invalid Personal Info");
				rd.include(req,resp);
			}
			//personal
			else
			{
//				System.out.println(name);
//				System.out.println(dob);
//				System.out.println(gender);
				httpSession.setAttribute("nameAtt", name);
				httpSession.setAttribute("dobAtt", dob);
				httpSession.setAttribute("genderAtt", gender);
				resp.sendRedirect("contact.jsp");
			}
		}
		//contact
		else if(pageName.equalsIgnoreCase("Contact"))
		{
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			String address=req.getParameter("address");
			
			RequestDispatcher rd=req.getRequestDispatcher("contact.jsp");
			if(phone.isEmpty()||email.isEmpty()||address.isEmpty())
			{
				out.println("Invalid Contact Info");
				rd.include(req, resp);
			}
			else
			{
//				System.out.println(phone);
//				System.out.println(email);
//				System.out.println(address);
				httpSession.setAttribute("phoneAtt",phone);
				httpSession.setAttribute("emailAtt",email);
				httpSession.setAttribute("addressAtt",address);
				resp.sendRedirect("education.jsp");
			}
		}
		
		//education
		else if(pageName.equalsIgnoreCase("education"))
		{
			String[] edu=req.getParameterValues("education");
			String education="";
			for(String e:edu)
			{
				education=education.concat(e+" ");
			}
			education=education.trim();
			
			String[] lang=req.getParameterValues("languages");
			String languages="";
			for(String l:lang)
			{
				languages=languages.concat(l+" ");
			}
			languages=languages.trim();
			
			String[] hob=req.getParameterValues("hobbies");
			String hobbies="";
			for(String h:hob)
			{
				hobbies=hobbies.concat(h+" ");
			}
			hobbies=hobbies.trim();
			
			String name=httpSession.getAttribute("nameAtt").toString();
			String dob=httpSession.getAttribute("dobAtt").toString();
			String gender=httpSession.getAttribute("genderAtt").toString();
			String phone=httpSession.getAttribute("phoneAtt").toString();
			String email=httpSession.getAttribute("emailAtt").toString();
			String address=httpSession.getAttribute("addressAtt").toString();
			
			Aadhaars aadhaar=new Aadhaars();
			aadhaar.setAddress(address);
			aadhaar.setCreated(new Date());
			aadhaar.setEmail(email);
			aadhaar.setDob(dob);
			aadhaar.setEducation(education);
			aadhaar.setEmail(email);
			aadhaar.setGender(gender);
			aadhaar.setHobbies(hobbies);
			aadhaar.setLanguages(languages);
			aadhaar.setModified(new Date());
			aadhaar.setName(name);
			aadhaar.setPhone(phone);
			aadhaar.setStatus(1);
			
			
			ses.beginTransaction();
			ses.save(aadhaar);
			ses.getTransaction().commit();
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			out.println("<h1>New Aadhaar Info Submitted</h1>");
			rd.include(req, resp);
		}
			//update
			
			else if(pageName.equalsIgnoreCase("updateaadhaarcontent"))
			{
			String pid=req.getParameter("aid");
		    String name=req.getParameter("name");
		    String dob=req.getParameter("dob");
			String gender=req.getParameter("gender");
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			String address=req.getParameter("address");
			String[] edu=req.getParameterValues("education");
			String education="";
			for(String e:edu)
			{
				education=education.concat(e+" ");
			}
			education=education.trim();

			String[] lang=req.getParameterValues("languages");
			String languages="";
			for(String l:lang)
			{
				languages=languages.concat(l+" ");
			}
			languages=languages.trim();
			String[] hob=req.getParameterValues("hobbies");
			String hobbies="";
			for(String h:hob)
			{
				hobbies=hobbies.concat(h+" ");
			}
			hobbies=hobbies.trim();
			
			//Aadhaars aadhaar=new Aadhaars();
			//ses.get(Aadhaars.class, aadhaar.getId());

			Aadhaars aadhaar=(Aadhaars)ses.get(Aadhaars.class, Integer.parseInt(pid));
			aadhaar.setName(name);
			aadhaar.setDob(dob);
			aadhaar.setGender(gender);
			aadhaar.setPhone(phone);
			aadhaar.setEmail(email);
			aadhaar.setAddress(address);
			aadhaar.setLanguages(languages);
			aadhaar.setHobbies(hobbies);
			aadhaar.setEducation(education);
			aadhaar.setStatus(1);
			ses.beginTransaction();
			ses.update(aadhaar);
			ses.getTransaction().commit();
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.include(req, resp);
			out.println("<h1>Record Updated sucessfully</h1>");
			
			}
		
		//delete
			else if(pageName.equalsIgnoreCase("deleteaadhaarcontent"))
			{
			String pid=req.getParameter("did");
		    String name=req.getParameter("name");
		    String dob=req.getParameter("dob");
			String gender=req.getParameter("gender");
			String phone=req.getParameter("phone");
			String email=req.getParameter("email");
			String address=req.getParameter("address");
			String[] edu=req.getParameterValues("education");
			String education="";
			for(String e:edu)
			{
				education=education.concat(e+" ");
			}
			education=education.trim();

			String[] lang=req.getParameterValues("languages");
			String languages="";
			for(String l:lang)
			{
				languages=languages.concat(l+" ");
			}
			languages=languages.trim();
			String[] hob=req.getParameterValues("hobbies");
			String hobbies="";
			for(String h:hob)
			{
				hobbies=hobbies.concat(h+" ");
			}
			hobbies=hobbies.trim();
			
			//Aadhaars aadhaar=new Aadhaars();
			//ses.get(Aadhaars.class, aadhaar.getId());

			Aadhaars aadhaar=(Aadhaars)ses.get(Aadhaars.class, Integer.parseInt(pid));
			
			aadhaar.setStatus(0);
			ses.beginTransaction();
			ses.delete(aadhaar);
			ses.getTransaction().commit();
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.include(req, resp);
			out.println("<h1>Record Updated sucessfully</h1>");
			}
		
		//login
			else if(pageName.equalsIgnoreCase("login"))
			{
				String username=req.getParameter("username");
		        String password=req.getParameter("parameter");
				ses.beginTransaction();
				Query query=ses.createQuery("from Users where status=1 and username='"+username+"'");
				List<Users> userList=query.list();
				ses.getTransaction().commit();
				
				if(userList.size()==0)
				{
					RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
					out.println("Invalid Username or Password");
					rd.include(req, resp);
				}
				else {
					
					Users user=userList.get(0);
					
					httpSession.setAttribute("LoginUser", user.getName());
					httpSession.setAttribute("IP", req.getRemoteAddr());
					
					String osAndBrowserDetails=req.getHeader("User-Agent");
					String os=getOSDetails(osAndBrowserDetails);
					String browser=getBrowserDetails(osAndBrowserDetails);
					httpSession.setAttribute("OS", os);
					httpSession.setAttribute("Browser", browser);
					
					RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
					rd.include(req, resp);
				}
			
					
					
//					ses.save(users);
//					ses.getTransaction().commit();
//		 			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
//		 			rd.include(req, resp);
//		 		 	
//		 			
//		 			
//		 			//System.out.println(user);
//		 			System.out.println("OS= "+os);
//		 		 	System.out.println("Browser= "+browser);
//		 		 	System.out.println("IP= "+clientIp);
//		 		 	System.out.println("machine= "+user);
//					String system=req.getParameter("os");
//					String brow=req.getParameter("browser");
//					String cli=req.getParameter("clientIp");
//
//		 		 	httpSession.setAttribute("osAtt",os);
//					httpSession.setAttribute("browserAtt",browser);
//					httpSession.setAttribute("clientIpAtt",clientIp);
//					resp.sendRedirect("index.jsp");
//
//					out.println(os);
//		 		 	out.println(browser);
//		 		 	out.println(clientIp); 
			}
		}	
	
	private String getOSDetails(String machineDetails)
	{
		String os="";
		 if (machineDetails.toLowerCase().indexOf("windows") >= 0 )
         {
             os = "Windows";
         } else if(machineDetails.toLowerCase().indexOf("mac") >= 0)
         {
             os = "Mac";
         } else if(machineDetails.toLowerCase().indexOf("x11") >= 0)
         {
             os = "Unix";
         } else if(machineDetails.toLowerCase().indexOf("android") >= 0)
         {
             os = "Android";
         } else if(machineDetails.toLowerCase().indexOf("iphone") >= 0)
         {
             os = "IPhone";
         }else{
             os = "UnKnown, More-Info: "+machineDetails;
         }
		 return os;
	}
	private String getBrowserDetails(String machineDetails)
	{
		String user=machineDetails.toLowerCase();
        String browser="";
        if (user.contains("msie"))
        {
            String substring=machineDetails.substring(machineDetails.indexOf("MSIE")).split(";")[0];
            browser=substring.split(" ")[0].replace("MSIE", "IE")+"-"+substring.split(" ")[1];
        } 
        else if (user.contains("safari") && user.contains("version"))
        {
            browser=(machineDetails.substring(machineDetails.indexOf("Safari")).split(" ")[0]).split("/")[0]+"-"+(machineDetails.substring(machineDetails.indexOf("Version")).split(" ")[0]).split("/")[1];
        } 
        else if ( user.contains("opr") || user.contains("opera"))
        {
            if(user.contains("opera"))
                browser=(machineDetails.substring(machineDetails.indexOf("Opera")).split(" ")[0]).split("/")[0]+"-"+(machineDetails.substring(machineDetails.indexOf("Version")).split(" ")[0]).split("/")[1];
            else if(user.contains("opr"))
                browser=((machineDetails.substring(machineDetails.indexOf("OPR")).split(" ")[0]).replace("/", "-")).replace("OPR", "Opera");
        } 
        else if (user.contains("chrome"))
        {
            browser=(machineDetails.substring(machineDetails.indexOf("Chrome")).split(" ")[0]).replace("/", "-");
        } 
        else if ((user.indexOf("mozilla/7.0") > -1) || (user.indexOf("netscape6") != -1)  || (user.indexOf("mozilla/4.7") != -1) || (user.indexOf("mozilla/4.78") != -1) || (user.indexOf("mozilla/4.08") != -1) || (user.indexOf("mozilla/3") != -1) )
        {
            //browser=(machineDetails.substring(machineDetails.indexOf("MSIE")).split(" ")[0]).replace("/", "-");
            browser = "Netscape-?";
          
        } 
        else if (user.contains("firefox"))
        {
            browser=(machineDetails.substring(machineDetails.indexOf("Firefox")).split(" ")[0]).replace("/", "-");
        } 
        else if(user.contains("rv"))
        {
            browser="IE-" + user.substring(user.indexOf("rv") + 3, user.indexOf(")"));
        } 
        else
        {
            browser = "UnKnown, More-Info: "+machineDetails;
        }	
        return browser;
	}
	}