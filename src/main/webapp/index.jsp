<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Note Taker : Home page</title>
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
        }
        .container-fluid {
            background: rgba(0, 0, 0, 0.6); /* Add a dark overlay */
            padding: 50px;
            border-radius: 10px;
            max-width: 800px;
            text-align: center;
        }
        h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .quote {
            font-size: 1.5rem;
            font-style: italic;
            margin-top: 20px;
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

    <div class="container-fluid">
        <h1>Welcome to Note Taker</h1>
        <p class="quote">"The palest ink is better than the best memory." - Chinese Proverb</p>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
