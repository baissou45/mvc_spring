<%@ page import="mvc_spring.mvc_spring.models.DiplomeModel" %><%--
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
                <h4 class="text-muted font-18 text-center">Inscription</h4>

                <form class="form-horizontal" action="/register" method="POST">

                    <div class="form-group">
                        <label for="nom">Nom</label>
                        <input id="nom" class="form-control" type="text" name="nom">
                    </div>

                    <div class="form-group">
                        <label for="prenom">Prénom</label>
                        <input id="prenom" class="form-control" type="text" name="prenom">
                    </div>

                    <div class="form-group">
                        <label for="email">Adresse mail</label>
                        <input id="email" class="form-control" type="text" name="email">
                    </div>

                    <div class="form-group">
                        <label for="annee">Année d'étude</label>
                        <input id="annee" class="form-control" type="int" name="annee">
                    </div>

                    <div class="form-group">
                        <label for="diplome">Diplôme</label>
                        <select id="diplome" class="form-control" name="diplome">
                            <%
                                Iterable<DiplomeModel> diplomes = (Iterable<DiplomeModel>)request.getAttribute("diplomes");

                                for (DiplomeModel diplome:diplomes){
                                    out.print("<option value='" + diplome.getCodeDiplome() + "'>" + diplome.getNomDiplome() + "</option>");
                                }
                            %>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="password">Mot de passe</label>
                        <input id="password" class="form-control" type="text" name="password">
                    </div>

                    <div class="form-group row m-t-20">
                        <div class="col-sm-12 text-right">
                            <button class="btn btn-primary w-md waves-effect waves-light" type="submit">Inscription</button>
                        </div>
                    </div>

                    <div class="form-group m-t-10 mb-0 row">
                        <div class="col-12 m-t-20">
                            <a href="/login" class="text-muted">
                                <i class="mdi mdi-lock"></i> Vous avez déjà un compte ? Connecter-vous</a>
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
