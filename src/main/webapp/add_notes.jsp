<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
<style>
    body {
        background-image: url('Image/Note.jpg'); /* Add a beautiful background image URL */
        background-size: cover;
        background-position: center;
        color: #fff;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin: 0;
    }
    .navbar {
        background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent navbar */
        width: 100%;
        position: fixed;
        top: 0;
        z-index: 1000;
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
    }
    .container-fluid {
        margin-top: 80px; /* Space for navbar */
    }
    .form-container {
        background: rgba(0, 0, 0, 0.7); /* Add a dark overlay */
        padding: 30px;
        border-radius: 10px;
        max-width: 600px;
        width: 100%;
        text-align: center;
    }
    h1 {
        font-size: 2.5rem;
        font-weight: bold;
        margin-bottom: 20px;
    }
    .form-label {
        color: #d1c4e9;
    }
    .form-control {
        background: rgba(255, 255, 255, 0.8);
        border: none;
        color: #000;
    }
    .btn-primary {
        background-color: #6f42c1;
        border: none;
        padding: 10px 20px;
        font-size: 1.2rem;
        transition: background-color 0.3s ease;
    }
    .btn-primary:hover {
        background-color: #5a3399;
    }
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Note Taker</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item mx-2">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="add_notes.jsp">Add Notes</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="all_notes.jsp">Show Notes</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    
    <div class="container-fluid">
        <div class="form-container">
            <h1>Please fill your note detail</h1>
            <form action="SaveNoteServlet" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label">Note Title</label>
                    <input
                        name="title"
                        required
                        type="text"
                        class="form-control"
                        id="title"
                        placeholder="Enter here"
                    />
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">Note Content</label>
                    <textarea
                        required
                        name="note"
                        id="content"
                        placeholder="Enter your content here"
                        class="form-control"
                        style="height:300px;"
                    ></textarea>
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
