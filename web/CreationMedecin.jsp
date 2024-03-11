<%-- 
    Document   : CreationMedecin
    Created on : 13 févr. 2018, 09:41:26
    Author     : Delex
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <script language="javascript">
    <!--
            function ouvrir() {
                fenetre = window.open("Vue_listeMedecin.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=450,height=300,top=0,left=50")
            }
    // -->
        </script>
        <body class="no-skin">
        <jsp:include page="contenuConsultation.jsp"></jsp:include>

  <div class="fixed-action-btn toolbar" style="position:relative;top:-175px;left:-50px;">
    <a class="btn-floating btn-large blue darken-3">
      <i class="large material-icons">menu</i>
    </a>
    <ul>
      <li class="waves-effect waves-light"><a href="#!" onclick="ouvrir();"><i class="material-icons">insert_chart</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">format_quote</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">publish</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">attach_file</i></a></li>
    </ul>
  </div>

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
                                PANNEAU D'ENREGISTREMENT DES MEDECIN
                            </div>
                        </div>
                        <div  class="modal-body no-padding">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <div style="position:relative;top:20px;">
                                        <form action="serveletMedecin.jsp" method="POST">
                                            <input type="text" name="med_matricule" placeholder="Numéro matricule" required/>
                                            <input type="text" name="med_nomPrenom" placeholder="Nom et Prenom" required/>

                                            <div class="input-field col s6" style="position:relative !important;left:335px !important;width:210px !important;">
                                                <select name="med_sexe" class="form-control" id="form-field-select-1">
                                                    <option value="">SEX</option>
                                                    <option value="Femme">Femme</option>
                                                    <option value="Homme">Homme</option>
                                                </select>
                                            </div>

                                            <div class="input-field col s6" style="position:relative !important;left:-10px !important;width:555px !important;">
                                                <select name="med_nationalite" class="form-control" id="form-field-select-1">
                                                    <option value="">NATIONALITE:</option>
                                                    <option value="Malagasy">Malagasy</option>
                                                    <option value="Français">Français</option>
                                                    <option value="Malagasy">Anglais</option>
                                                    <option value="Français">Italien</option>
                                                </select>
                                            </div>

                                            <div class="input-field col s6" style="position:relative !important;left:-10px !important;width:555px !important;">
                                                <select name="med_indice" class="form-control" id="form-field-select-1">
                                                    <option value="">INDICE:</option>
                                                    <option value="Specialiste">Specialiste</option>
                                                    <option value="Débutant">Débutant</option>
                                                    <option value="Malagasy">Anglais</option>
                                                    <option value="Français">Italien</option>
                                                </select>
                                            </div>

                                            <div class="input-field col s6" style="position:relative !important;left:100px !important;width:210px !important;">
                                                <i class="material-icons prefix">face</i>
                                                <label for="last_name"></label>
                                                <input type="date" name="med_datebutEmbauche" class="datepicker" size="50" placeholder="Date de début d'Ambauche" required/>
                                            </div>

                                            <div class="input-field col s6" style="position:relative !important;left:110px !important;width:210px !important;">
                                                <i class="material-icons prefix">face</i>
                                                <label for="last_name"></label>
                                                <input type="date" name="med_datefinEmbauche" class="datepicker" size="50" placeholder="Date de fin d'Ambauche" required/>
                                            </div>

                                            <input type="text" name="med_contact" placeholder='Contacte du nouveau médecin' required />
                                            </BR>
                                            <input type="text" name="med_domicile" placeholder="Domicile" required/>
                                            <button class="btn waves-effect waves-light pull-right" type="submit" >ENREGISTRER
                                                <i class="material-icons right">send</i>
                                            </button>

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
       
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listeMedecin.jsp"><i class="material-icons">search</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listeMedecin.jsp"><i class="material-icons">import_export</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listeMedecin.jsp"><i class="material-icons">print</i></a></li>
        <li><a class="btn-floating blue tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listeMedecin1.jsp"><i class="material-icons">update</i></a></li>
    </ul>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
