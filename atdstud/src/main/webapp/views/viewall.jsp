<%@page import="com.atd.entity.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2 class="container">All products</h2>
<h4 class="container"> <a href="/add"> add student here</a> </h4>

<table class="container">
<thead class="thead-dark">
  <tr>
    <th>Student Id</th>
    <th>Student Name</th>
    <th>Student Joiningdate</th>
    <th>Student Birthdate</th>
  </tr>
  </thead >
  <tbody>
  <%
	List<student> product=(List<student>)request.getAttribute("getall"); 
  for(student pr:product)
  {
  %>
 
  <tr>
    <td><%=pr.getSTUDENT_NO() %></td>
    <td><%=pr.getSTUDENT_NAME()%></td>
    <td><%=pr.getSTUDENT_DOJ() %></td>
    <td><%=pr.getSTUDENT_DOB()%></td>
    <td><a class="btn btn-primary" href="update/<%=pr.getSTUDENT_NO() %>" role="button">Edit</a></td>
    <td><a class="btn btn-danger" href="delete/<%=pr.getSTUDENT_NO() %>" role="button">Delete</a></td>
  </tr>
  <%
  }
  %>
</tbody>
</table>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>