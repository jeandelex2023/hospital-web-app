<%-- 
    Document   : ErreurUtilisateur
    Created on : 13 févr. 2018, 18:41:13
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <body class="no-skin">
            <h4 class="white-opaque">
                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                <a href="#modal-table" role="button"  data-toggle="modal">Vous avez besoin d'aide, clicquez ici!</a>
            </h4>                   
            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="error-container">
                            <div class="well">
                                <h1 class="lighter smaller">
                                    <span class=" bigger-125">
                                        <i class="ace-icon fa fa-random"></i>
                                        404
                                    </span>
                                    Something Went Wrong
                                </h1>

                                <hr />
                                <h3 class="lighter smaller">
                                    But we are working
                                    <i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
                                    on it!
                                </h3>


                                <div>
                                    <h4 class="lighter smaller">Meanwhile, try one of the following:</h4>

                                    <ul class="list-unstyled spaced inline bigger-110 margin-15">
                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right"></i>
                                            Read the faq
                                        </li>

                                        <li>
                                            <i class="ace-icon fa fa-hand-o-right"></i>
                                            Give us more info on how this specific error occurred!
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
