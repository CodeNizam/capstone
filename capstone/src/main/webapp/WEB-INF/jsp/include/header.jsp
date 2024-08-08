<%--<!doctype html>--%>

<%--<html lang="en">--%>

<%--<head>--%>

<%--    <meta charset="UTF-8">--%>

<%--    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>

<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>

<%--    <title>Document</title>--%>



<%--    <link href="/pub/css/global.css" rel="stylesheet">--%>



<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>

<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>

<%--</head>--%>

<%--<body>--%>

<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>

<%--    <div class="container-fluid">--%>

<%--        <a class="navbar-brand" href="#">Navbar</a>--%>

<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>

<%--            <span class="navbar-toggler-icon"></span>--%>

<%--        </button>--%>

<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>

<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>

<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" aria-current="page" href="/">Home</a>--%>

<%--                </li>--%>

<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" href="/all-products">All Products</a>--%>

<%--                </li>--%>

<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" href="/search">Search</a>--%>

<%--                </li>--%>

<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" href="/order-details">Order Details</a>--%>

<%--                </li>--%>


<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" href="/account/loginPageUrl">Login</a>--%>

<%--                </li>--%>

<%--                <li class="nav-item">--%>

<%--                    <a class="nav-link" href="/account/create-account">Create Account</a>--%>

<%--                </li>--%>


<%--            </ul>--%>

<%--        </div>--%>

<%--    </div>--%>

<%--</nav>--%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="/pub/css/navbar.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="/pub/images/Mirage-Market.png" alt="Logo" style="height: 50px;"> <!-- Adjust the height as needed -->
        </a>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/search">Search</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/account/create-account">Create Account</a>
                </li>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="/account/loginPageUrl">Login</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="/account/logout">Logout</a>
                    </li>
                    <li class="nav-item">
                        <span class="nav-link"><sec:authentication property="name"/></span>
                    </li>
                    <sec:authorize access="hasAnyAuthority('ADMIN')">
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/dashboard">Admin Dashboard</a>
                        </li>
                    </sec:authorize>
                    <sec:authorize access="hasAnyAuthority('ADMIN')">
                        <li class="nav-item">
                            <a class="nav-link" href="/product/create">Create Product</a>
                        </li>
                    </sec:authorize>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>

<!-- Add a margin to the next element -->
<div class="content-container"  >

    <!-- Your content starts here -->



