<%@ page import="com.javagda34.webapp.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javagda34.webapp.Gender" %><%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 18.07.2020
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<%
    String index = request.getParameter("index");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String average = request.getParameter("average");
    String gender = request.getParameter("gender");
    String active = request.getParameter("active");
    Student student = Student.builder()
            .indexNumber(index)
            .firstName(firstName)
            .lastName(lastName)
            .average(Double.parseDouble(average))
            .gender(Gender.valueOf(gender))
            .active(active !=null && active.equalsIgnoreCase("on"))
            .build();

    Object studentListResult = session.getAttribute("studentList");
    List<Student> studentList;
    if(studentListResult instanceof List){
        studentList = (List<Student>) studentListResult;
    }else {
        studentList = new ArrayList<>();
    }
    studentList.add(student);
    session.setAttribute("studentList", studentList);
    response.sendRedirect("/studentList.jsp");
%>
</body>
</html>
