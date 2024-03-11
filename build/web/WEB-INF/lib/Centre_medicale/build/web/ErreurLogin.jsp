<%-- 
    Document   : ErreurLogin
    Created on : 13 févr. 2018, 18:40:47
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <body class="no-skin">
            <h4 class="white-opaque">
                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                <a href="#modal-table" role="button"  data-toggle="modal">Détails du probllème, clicquez ici!</a>
            </h4>                   
            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="error-container">
                            <div class="well">
                                <h1 class="red-text lighter smaller">
                                    <span class="red-text bigger-125">
                                        <i class="ace-icon fa fa-random"></i>
                                        404
                                    </span>
                                    Accès contrôle réfuser
                                </h1>

                                <hr />
                                <h3 class="lighter smaller">
                                    On a beaucoup de chose à régler sur votre compte
                                    <i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
                                    le système ne parvient pas à votre compte, peut être vous n'avez pas le droit d'utiliser un tels compte!
                                </h3>


                                <div>
                                    <h4 class="lighter smaller">Maintenant, Essaier d'avoir un certains notions dans l'aide ci-pres:</h4>

                                    <ul class="list-unstyled spaced inline bigger-110 margin-15">
                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right"></i>
                                            Assurer vous que vous êtes déja inscris!
                                        </li>

                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right"></i>
                                            Si vous avez de problème sur votre compte,ressaier le ou connecter vous sur facebook!
                                        </li>
                                    </ul>
                                </div>

                                <hr />
                                <div class="space"></div>

                                <div class="center">
                                    <a href="javascript:history.back()" class="btn btn-grey">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Revenu vers la page
                                    </a>

                                    <a href="#" class="btn btn-primary">
                                        <i class="ace-icon fa fa-signal"></i>
                                        Solution sur internet
                                    </a>
                                </div>
                            </div>


                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- PAGE CONTENT ENDS --> 


                <br />
                <br />
                <br />
                <br />
            </div>

            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->
<jsp:include page="footer.jsp"></jsp:include>      
</body>
</html>
