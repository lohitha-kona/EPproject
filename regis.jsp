<%@ page import="java.sql.*"%>


<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String year=request.getParameter("year");
String br=request.getParameter("br");
String email=request.getParameter("email");
String num=request.getParameter("num");
String dat=request.getParameter("dat");
String mon=request.getParameter("mon");
String yr=request.getParameter("yr");
String gender=request.getParameter("gender");
String addr=request.getParameter("addr");
try{
 Class.forName("oracle.jdbc.OracleDriver");
 Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","klcse","klcse");
 PreparedStatement ps=conn.prepareStatement("insert into project values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
 ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,id);
ps.setString(4,pass);
ps.setString(5,year);
ps.setString(6,br);
ps.setString(7,email);
ps.setString(8,num);
ps.setString(9,dat);
ps.setString(10,mon);
ps.setString(11,yr);
ps.setString(12,gender);
ps.setString(13,addr);
 
 int x=ps.executeUpdate();
 if(x!=0){
out.print("Registration is done");
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

