<%-- 
    Document   : CreationConsultation
    Created on : 8 févr. 2018, 22:01:26
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <script language="javascript">
            // code mampivoha y pop up kedekey
            function ouvrir() {
                fenetre = window.open("Vue_listeConsultation1.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_recherche() {
                fenetre = window.open("Vue_listeConsultation.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_import_export() {
                fenetre = window.open("Vue_listeConsultation.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }

        </script>
        <body class="no-skin">
        <jsp:include page="contenuConsultation.jsp"></jsp:include>
<BR>
            <h4 class="white-opaque">
                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                <a href="#modal-table" role="button"  data-toggle="modal">Ouvrir le Formulaire des consultations!</a>
            </h4>

            <div class="hr hr-18 dotted hr-double"></div>
            <div class="row">

            </div>


            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">&times;</span>
                                </button>
                                PANNEAU DE REGLEMENT DE CONSULTATION
                            </div>
                        </div>
                        <div  class="modal-body no-padding">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div style="position:relative;top:20px;">
                                        <form action="serveletConsultation.jsp" method="POST">

                                            <input type="text" name="com_identifiant" value="" placeholder='CONTACT (+261):'/>


                                            <input type="text" name="cons_nomMedecin" id="form-field-1" placeholder="Nom du Medecin" class="col-xs-10 col-sm-5" required/>

                                            <input type="text" name="cons_nomPatient" id="form-field-1" placeholder="Nom du Patient" class="col-xs-10 col-sm-5" required/>

                                            </BR>
                                            <input type="text" name="cons_montant" data-rel="tooltip" type="text" id="form-field-6" placeholder="Montant" title="Hello Tooltip!" data-placement="bottom" required/>

                                            <button class="btn waves-effect waves-light pull-right" type="submit" >ENREGISTRER

                                            </button>


                                        </form>

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
    <a class="btn-floating btn-large teal">
        <i class="large material-icons">group</i>
    </a>
    <ul>
        <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listeConsultation.jsp"><i class="material-icons">search</i></a></li>
        <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listeConsultation.jsp"><i class="material-icons">import_export</i></a></li>
        <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listeConsultation.jsp"><i class="material-icons">print</i></a></li>
        <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listeConsultation1.jsp"><i class="material-icons">update</i></a></li>
    </ul>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
