<%@ page import="java.sql.*"%>


<%

String email=request.getParameter("email");

String pass=request.getParameter("pass");


try{
 Class.forName("oracle.jdbc.OracleDriver");
 Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","klcse","klcse");
 PreparedStatement ps=conn.prepareStatement("select * from userdetails where email=? and pass=?");
ps.setString(1,email);
ps.setString(2,pass);

 int x=ps.executeQuery();
 if(x!=0){
out.print("Login Sucessfull");
}
 else
{
	out.print("Something went wrong.Try after sometime");
}
}
catch(Exception e)
{
out.print(e);
}

%>

