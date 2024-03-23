<%--
  Created by IntelliJ IDEA.
  User: lamar
  Date: 23/03/2024
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- App Icons -->
    <link rel="shortcut icon" href="/back/assets/images/favicon.ico">

    <!-- App css -->
    <link href="/back/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/back/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="/back/assets/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div class="accountbg"></div>
    <div class="wrapper-page">

        <div class="card">
            <div class="card-body">

                <h3 class="text-center m-0">
                    <a href="" class="logo logo-admin"><img
                            src="{{ asset('template/back/assets/images/logo_dark.png') }}" height="30" alt="logo"></a>
                </h3>

                <div class="p-3">
                    <h4 class="text-muted font-18 m-b-5 text-center">Bon retour !</h4>
                    <p class="text-muted text-center">Veuillez vous connectez</p>

                    <form class="form-horizontal m-t-30" method="POST">

                        <div class="form-group">
                            <label for="email">Adresse mail</label>
                            <input id="email" class="form-control" type="text" name="email">
                        </div>

                        <div class="form-group">
                            <label for="password">Mot de passe</label>
                            <input id="password" class="form-control" type="text" name="password">
                        </div>

                        <div class="form-group row m-t-20">
                            <div class="col-sm-12 text-right">
                                <button class="btn btn-primary w-md waves-effect waves-light" type="submit">Connexion</button>
                            </div>
                        </div>

                        <div class="form-group m-t-10 mb-0 row">
                            <div class="col-12 m-t-20">
                                <a href="/register" class="text-muted">
                                    <i class="mdi mdi-lock"></i> Vous n'avez pas de compte ? Inscrivez-vous</a>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>

    <!-- jQuery  -->
    <script src="/back/assets/js/jquery.min.js"></script>
    <script src="/back/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/back/assets/js/modernizr.min.js"></script>
    <script src="/back/assets/js/waves.js"></script>
    <script src="/back/assets/js/jquery.slimscroll.js"></script>
    <script src="/back/assets/js/jquery.nicescroll.js"></script>
    <script src="/back/assets/js/jquery.scrollTo.min.js"></script>

    <!-- App js -->
    <script src="{{ asset('template/back/assets/js/app.js') }}"></script>
</body>
</html>
