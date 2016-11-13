package ValidateLogin;

import java.io.IOException;
import java.lang.ClassNotFoundException;
import com.mysql.jdbc.Driver;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  System.out.println("MySQL Connect Example.");
		  Connection conn = null;
		  String url = "jdbc:mysql://127.0.0.1/";
		  String dbName = "jwd";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "1900561558";
		 String username="";
		 String userpass="";
		 String strQuery= ""; 
		  Statement st=null;
		  ResultSet rs=null;
		  HttpSession session = request.getSession(true);
		 try {
		  Class.forName(driver).newInstance();
		  conn = DriverManager.getConnection(url+dbName,userName,password);
		  if(request.getParameter("username")!=null &&
		     request.getParameter("username")!="" && request.getParameter("password")!=null &&
		     request.getParameter("password")!="")
		  {
		  username = request.getParameter("username").toString();
		  userpass = request.getParameter("password").toString();
		  strQuery="select * from userinfo where UserName='" +username+ "' and  Password='"+userpass+"'";
		 System.out.println(strQuery);
		  st = conn.createStatement();
		  rs = st.executeQuery(strQuery);
		  int count=0;
		  while(rs.next())
		  {
		  session.setAttribute("username",rs.getString(2));
		  count++;
		  }
		  if(count>0)
		  {
		  response.sendRedirect("Cn Calendar 2.jsp");
		  }
		  else
		  {
		 response.sendRedirect("Home Page.jsp");
		  }
		  }
		  else
		  {
		 response.sendRedirect("Home Page.jsp");
		  }
		  System.out.println("Connected to the database"); 
		  conn.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

}