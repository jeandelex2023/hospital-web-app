<%-- 
    Document   : CreationPatient
    Created on : 12 févr. 2018, 09:49:53
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
				PANNEAU D'ENREGISTREMENT DES PATIENTS
				</div>
		        </div>
	                <div  class="modal-body no-padding">
		             <div class="widget-body">
                                  <div class="widget-main">
                                      <div style="position:relative;top:20px;">
                                          <form action="serveletPatient.jsp" method="POST">
                                              <input type="text" name="pat_numero" placeholder='Numero de CIN ou Contacte du patient' value="" required/>
                                              <input type="text" name="pat_nomPrenom" placeholder='Nom et Prenom de tels patients' value="" required/>
                                              
                                              <div class="input-field col s6" style="position:relative !important;left:100px !important;width:210px !important;">
                                                   <i class="material-icons prefix">face</i>
                                                   <label for="last_name"></label>
                                                   <input type="date" name="pat_dateNaissance" placeholder='Date de Naissance' class="datepicker" size="42" required/>
                                              </div>
                                              
                                              <div class="input-field col s6" style="position:relative !important;left:125px !important;width:210px !important;">
                                               <select name="pat_sexe" class="form-control" id="form-field-select-1">
							<option value="">SEX</option>
							<option value="Femme">Femme</option>
						        <option value="Homme">Homme</option>
					        </select>
                                              </div>
                                             
                                              <input type="text" name="pat_domicile" placeholder='Adresse du patient' value="" required/>
                                              
                                              <div class="input-field col s6" style="position:relative !important;left:-10px !important;width:550px !important;">
                                                <select name="pat_nationalite" class="form-control" id="form-field-select-1">
							<option value="">NATIONALITE:</option>
							<option value="Malagasy">Malagasy</option>
						        <option value="Français">Français</option>
                                                        <option value="Malagasy">Anglais</option>
						        <option value="Français">Italien</option>
					        </select>
                                                </div>
                                              </BR></BR></BR>
                                              <input type="text" name="pat_contact" placeholder='Numéro de son télephone' value="" required/>
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
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listePatient.jsp"><i class="material-icons">search</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listePatient.jsp"><i class="material-icons">import_export</i></a></li>
        <li><a class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listePatient.jsp"><i class="material-icons">print</i></a></li>
        <li><a class="btn-floating blue tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listePatient1.jsp"><i class="material-icons">update</i></a></li>
    </ul>
</div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
