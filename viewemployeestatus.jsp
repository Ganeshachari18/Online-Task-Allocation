<%@ include file="managerheader.jsp" %>
<%@ include file="connect.jsp" %>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>View Employee Status<br> </h2>
            </div>
          </div>
        </div>
      </div> </section><br><br>
      
<%
String name=session.getAttribute("name").toString();
try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addtask where managername='"+name+"'");
	out.println("<table border='1' cellpadding='15'><thead><tr><th>id</th><th>projectname</th><th>email</th><th>task</th><th>fromdate</th><th>status</th><th>managername</th><th>todate</th></tr></thead><tbody>");
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+rs.getString(5)+"</td>");
		out.println("<td>"+rs.getString(6)+"</td>");
		out.println("<td>"+rs.getString(7)+"</td>");
		out.println("<td>"+rs.getString(8)+"</td>");
		
		
		out.println("</tr>");
	}
	out.println("</tbody></table>");
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
<br><br>
   <%@ include file="managerfooter.jsp" %>