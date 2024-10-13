<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<%@include file="all_js_css.jsp" %>
<style>
  .navbar {
    background-color: #6f42c1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
  }
  .navbar-brand {
    font-weight: bold;
    font-size: 1.5rem;
    color: #fff;
    transition: color 0.3s ease;
  }
  .navbar-brand:hover {
    color: #d1c4e9;
  }
  .nav-link {
    color: #fff !important;
    margin-right: 1rem;
    transition: color 0.3s ease;
  }
  .nav-link:hover {
    color: #d1c4e9 !important;
  }
  .btn-outline-light {
    border-color: #fff;
    color: #fff;
    transition: background-color 0.3s ease, color 0.3s ease;
  }
  .btn-outline-light:hover {
    background-color: #fff;
    color: #6f42c1;
  }
  .navbar-toggler-icon {
    filter: brightness(0) invert(1);
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
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add_notes.jsp">Add Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="all_notes.jsp">Show Notes</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>
