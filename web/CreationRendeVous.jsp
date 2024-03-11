<%-- 
    Document   : CreationRendeVous
    Created on : 9 févr. 2018, 22:12:04
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <body class="no-skin">
        <jsp:include page="contenuConsultation.jsp"></jsp:include>
            <h4 class="white-opaque">
                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                <a href="#modal-table" role="button"  data-toggle="modal">Cliquez Ici!</a>
            </h4>                   
            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">&times;</span>
                                </button>
                                PANNEAU DE REGLEMENT DES RENDEZ-VOUS
                            </div>
                        </div>

                        <div  class="modal-body no-padding">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div style="position:relative;top:20px;">
                                        <form action="serveletRendeVous.jsp" method="POST">
                                            <input data-rel="tooltip" type="text" name="automatique"  id="form-field-6" placeholder="Identifiant du patient" title="Hello Tooltip!" data-placement="bottom" />


                                            <div class="input-field col s6">
                                                <i class="material-icons prefix">perm_contact_calendar</i>
                                                <label for="last_name"></label>
                                                <input type="date" name="rend_date" class="datepicker" size="50" placeholder="Date du rendez vous" required/>
                                            </div>

                                            <input data-rel="tooltip" type="text" name="rend_docConcerne" id="form-field-6" placeholder="Nom et Prenom du Médecin" title="Hello Tooltip!" data-placement="bottom" />
                                            <input data-rel="tooltip" type="text" name="rend_patNumero" id="form-field-6" placeholder="Numéro téléphone" title="Hello Tooltip!" data-placement="bottom" required/>

                                            <div style="position:relative;margin-left:460px;">
                                                <button class="btn btn-app btn-grey btn-xs radius-0" type="submit">
                                                    <i class="ace-icon fa fa-floppy-o bigger-100"></i>
                                                    <span class="badge badge-transparent">
                                                        <i class="light-red ace-icon fa fa-asterisk"></i>
                                                    </span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer no-margin-top">
                            <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                Fermer
                            </button>
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
<div class="fixed-action-btn vertocal">
    <a class="btn-floating btn-large blue darken-3">
        <i class="large material-icons">group</i>
    </a>
    <ul>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listeRendeVous.jsp"><i class="material-icons">search</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listeRendeVous.jsp"><i class="material-icons">import_export</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listeRendeVous.jsp"><i class="material-icons">print</i></a></li>
        <li><a class="btn-floating blue tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listeRendeVous1.jsp"><i class="material-icons">update</i></a></li>
    </ul>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
