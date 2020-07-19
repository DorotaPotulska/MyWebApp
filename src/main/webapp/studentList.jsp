<%@ page import="com.javagda34.webapp.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 18.07.2020
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<%
    Object studentListResult = session.getAttribute("studentList");
    List<Student> studentList;
    if(studentListResult instanceof List){
        studentList = (List<Student>) studentListResult;
    }else {
        studentList = new ArrayList<>();
    }
    out.print("<table>");
    out.print("<tr>" +
            "<th>Index</th>" +
            "<th>First Name</th>" +
            "<th>Last Name</th>" +
            "<th>Average</th>" +
            "<th>Gender</th>" +
            "<th>Is active</th>" +
            "<th>Edit</th>" +
            "<th>Deleta</th>" +
            "</tr>");
    for (int i = 0; i < studentList.size(); i++) {
        out.print("<tr>");
        out.print("<td>");
        out.println(studentList.get(i).getIndexNumber());
        out.print("</td>");
        out.print("<td>");
        out.println(studentList.get(i).getFirstName());
        out.print("</td>");
        out.print("<td>");
        out.println(studentList.get(i).getLastName());
        out.print("</td>");
        out.print("<td>");
        out.println(studentList.get(i).getAverage());
        out.print("</td>");
        out.print("<td>");
        out.println(studentList.get(i).getGender());
        out.print("</td>");
        out.print("<td>");
        out.println(studentList.get(i).isActive());
        out.print("<td>");
        out.println("<a href=\"studentEditHandler.jsp?studentIndex="+studentList.get(i).getIndexNumber()+"\">Edit</a>");
        out.print("</td>");
        out.print("<td>");
        out.println("<a href=\"studentDeleteHandler.jsp?studentIndex="+studentList.get(i).getIndexNumber()+"\">Delete</a>");
        out.print("</td></tr>");
    }
    out.print("</table>");
%>
<%--table>
    <%
        for(int i=0; i<studentList.size();i++){%>

    <tr>
        <td>Dane: </td>
        <td>Student: </td>

    </tr>
    <tr>
        <td> Index </td>
        <td><%= ((Student)studentList.get(i)).getIndexNumber() %></td>

    </tr>
    <tr>
        <td> First name: </td>
        <td><%= ((Student)studentList.get(i)).getFirstName() %></td>

    </tr>
    <tr>
        <td> Last name: </td>
        <td><%= ((Student)studentList.get(i)).getLastName() %></td>
    </tr>
    <tr>
        <td> Average: </td>
        <td><%= ((Student)studentList.get(i)).getAverage()%></td>
    </tr>
    <tr>
        <td> Gender: </td>
        <td><%= ((Student)studentList.get(i)).getGender() %></td>
    </tr>
    <tr>
        <td> Is Active: </td>
        <td><%= ((Student)studentList.get(i)).isActive() %></td>
    </tr>
    <%}%>
</table>--%>
</body>
</html>
