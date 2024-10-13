<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Note</title>
<%@include file="all_js_css.jsp" %>
<style>
  body {
    background-color: #f8f9fa;
    color: #343a40;
  }
  .container-fluid {
    padding: 50px;
  }
  .form-label {
    font-weight: bold;
  }
  .form-control {
    border-radius: 8px;
  }
  .btn-success {
    background-color: #28a745;
    border: none;
    transition: background-color 0.3s ease;
  }
  .btn-success:hover {
    background-color: #218838;
  }
</style>
</head>
<body>

<div class="container-fluid">
  <%@include file="navbar.jsp" %>
  <h1 class="text-center mb-4">Edit Your Note</h1>
  
  <%
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    Session s = FactoryProvider.getFactory().openSession();
    Transaction tx = s.beginTransaction();
    Note note = s.get(Note.class, noteId);
  %>
  
  <form action="UpdateServlet" method="post">
    <input value="<%= note.getId() %>" name="noteId" type="hidden"/>
  
    <div class="mb-3">
      <label for="title" class="form-label">Note Title</label>
      <input name="title" required type="text" class="form-control" id="title" placeholder="Enter title" value="<%= note.getTitle()%>"/>
    </div>
    <div class="mb-3">
      <label for="content" class="form-label">Note Content</label>
      <textarea required name="note" id="content" class="form-control" style="height:300px;" placeholder="Enter your content here"><%= note.getContent()%></textarea>
    </div>
  
    <div class="text-center">
      <button type="submit" class="btn btn-success">Save Changes</button>
    </div>
  </form>
  
</div>

</body>
</html>
