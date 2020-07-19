<%@ page import="com.javagda34.webapp.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 18.07.2020
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Delete Handler</title>
</head>
<body>
<%
    String studentIndex = request.getParameter("studentIndex");
    Object studentListResult = session.getAttribute("studentList");
    List<Student> studentList;
    if(studentListResult instanceof List){
        studentList = (List<Student>) studentListResult;
    }else {
        studentList = new ArrayList<>();
    }
    for (int i = 0; i < studentList.size(); i++) {
        if (studentList.get(i).getIndexNumber().equalsIgnoreCase(studentIndex)){
            studentList.remove(studentList.get(i));
        }
    }
    session.setAttribute("studentList",studentList);
    response.sendRedirect("/studentList.jsp");

%>
</body>
</html>
