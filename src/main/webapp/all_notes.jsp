<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Notes: Note Taker</title>
<%@include file="all_js_css.jsp" %>
<style>
  body {
    background-color: #f8f9fa;
  }
  .card {
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
  }
  .card-body {
    padding: 1.5rem;
  }
  .card-title {
    font-weight: bold;
    color: #343a40;
  }
  .card-text {
    color: #6c757d;
  }
  .btn-danger {
    background-color: #dc3545;
    border: none;
    transition: background-color 0.3s ease;
  }
  .btn-danger:hover {
    background-color: #c82333;
  }
  .btn-primary {
    background-color: #6f42c1;
    border: none;
    margin-left: 10px;
    transition: background-color 0.3s ease;
  }
  .btn-primary:hover {
    background-color: #5a3399;
  }
</style>
</head>
<body>

<div class="container-fluid">
  <%@include file="navbar.jsp" %>
  <br>
  <h1 class="text-uppercase text-center my-4">All Notes</h1>
  
  <div class="row justify-content-center">
    <div class="col-lg-8">
      <%
      Session s = FactoryProvider.getFactory().openSession();
      Query q = s.createQuery("from Note");
      List<Note> list = q.list();
      for(Note note : list) {
      %>
      <div class="card">
        <div class="row no-gutters">
          <div class="col-md-2 d-flex align-items-center justify-content-center">
            <img src="Image/sticky-note.png" class="card-img m-4" style="max-width: 50px;">
          </div>
          <div class="col-md-10">
            <div class="card-body">
              <h5 class="card-title"><%= note.getTitle() %></h5>
              <p class="card-text"><%= note.getContent() %></p>
              <p><b class="text-primary">Added Date: <%= note.getAddedDate() %></b></p>
              <div class="container text-center">
                <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
                <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <% 
      }
      s.close();
      %>
    </div>
  </div>
</div>

</body>
</html>
