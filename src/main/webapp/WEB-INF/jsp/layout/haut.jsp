<%--
  Created by IntelliJ IDEA.
  User: lamar
  Date: 23/03/2024
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Fonik - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Themesbrand" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App Icons -->
    <link rel="shortcut icon" href="/back/assets/images/favicon.ico">

    <!-- Basic Css files -->
    <link href="/back/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/back/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="/back/assets/css/style.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/asset('css/toastr.min.css">

</head>


<body class="fixed-left">

<div id="preloader"><div id="status"><div class="spinner"></div></div></div>

<div id="wrapper">
    <%@ include file="sidebare.jsp" %>

    <div class="content-page">
        <div class="content">

            <%@ include file="header.jsp" %>

            <div class="page-content-wrapper">
                <div class="container-fluid">
