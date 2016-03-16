
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HR Project</title>

        <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>  
        <div class="container">
            <h1>Order Management</h1>
            <head>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img alt="Home" src="...">
                        </a>
                        <ul class="nav navbar-nav">
                            <li><a href="${SITE_URL}/department">Department</a></li>

                        </ul>
                        <ul class="nav navbar-nav">
                            <li><a href="${SITE_URL}/department/order">Order</a></li>

                        </ul>
                        <ul class="nav navbar-nav">
                            <li><a href="${SITE_URL}/department">Customer</a></li>

                        </ul>
                    </div>
                </div>
            </nav>
        </head>