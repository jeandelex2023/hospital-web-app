<%-- 
    Document   : form_modif_dossier
    Created on : 5 févr. 2018, 06:53:41
    Author     : Delex
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:useBean id="getfour" scope="session" class="gestion.GestionDossier" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = getfour.getAll();
        resultats.next();
    %>
    <jsp:include page="header.jsp"></jsp:include>
    <body>
    <jsp:include page="contenu.jsp"></jsp:include>
    <div  style="position:relative;width:550px !important;margin-left:300px !important;" class="card-panel">
    <div class="progress">
      <span>Mise à jour des dossiers de la liste sélectionnée......en attente de modification........</span>
      <div class="indeterminate"></div>
    </div>
    <span class="card-title grey-text text-darken-4"><a class="btn-floating halfway-fab waves-effect waves-light teal"><i class="material-icons">edit</i></a></span>
    <form name="form1" method="post" action="update_dossier.jsp">
             <div class="row">
                  <div class="input-field col s6">
                       <i class="material-icons prefix">number</i>
                       <input  name="automatique" type="text" value="<%=resultats.getString("automatique")%>"/>
                  </div>
                  <div class="input-field col s6">
                       <i class="material-icons prefix">call</i>
                       <label for="last_name">CELL NO: +261</label>
                       <input  name="dos_numeroPhone" type="text" value="<%=resultats.getString("dos_numeroPhone")%>"/>
                  </div>
                 <div class="input-field col s6">
                      <i class="material-icons prefix">group</i>
                      <label for="last_name">SURNAME & NAME CHILD</label>
                      <input  name="dos_nomPrenom" type="text" value="<%=resultats.getString("dos_nomPrenom")%>"/> 
                 </div>
      
                  <div class="input-field col s6">
                       <i class="material-icons prefix">person</i>
                       <label for="last_name">MOTHER:</label>
                       <input  name="dos_mere" type="text" value="<%=resultats.getString("dos_mere")%>"/>  
                  </div>
                  <div class="input-field col s6">
                       <i class="material-icons prefix">person</i>
                       <label for="last_name">FATHER:</label>
                       <input  name="dos_pere" type="text" value="<%=resultats.getString("dos_pere")%>"/>
                 </div>
   
                  <div class="input-field col s6">
                       <label for="last_name">:</label>
                       <i class="material-icons prefix">face</i>
                       <input  name="dos_dateNaissance" type="text" value="<%=resultats.getString("dos_dateNaissance")%>"/> 
                  </div>
                  <div class="input-field col s6">
                       <label for="last_name">Nationality:</label>
                       <i class="material-icons prefix">flag</i>
                       <input  name="dos_nationalite" type="text" value="<%=resultats.getString("dos_nationalite")%>"/>
                  </div>                 
            
                  <div class="input-field col s6">
                       <label for="last_name">Sex:</label>
                       <i class="material-icons prefix">home</i>
                       <input  name="dos_sexe" type="text" value="<%=resultats.getString("dos_sexe")%>"/>
                  </div>
                  <div class="input-field col s6">
                       <label for="last_name">ADRESS:</label>
                       <i class="material-icons prefix">home</i>
                       <input  name="dos_adresse" type="text" value="<%=resultats.getString("dos_adresse")%>"/>
                  </div>
        
                  <div class="input-field col s6">
                       <i class="material-icons prefix">local_hospital</i>
                       <label for="last_name">MEDICAL INSURANCE:</label>
                       <input  name="dos_insurranceMedicale" type="text" value="<%=resultats.getString("dos_insurranceMedicale")%>"/> 
                   </div>
                   <div class="input-field col s6">
                       <i class="material-icons prefix">local_hospital</i>
                       <label for="last_name">VACCINATIONS:</label>
                       <input  name="dos_vaccine" type="text" value="<%=resultats.getString("dos_vaccine")%>"/>  
                  </div>                  
    
                 <div class="input-field col s6">
                      <i class="material-icons prefix">local_hospital</i>
                      <label for="last_name">MED.INSURANCE NO:</label>
                      <input  name="dos_numInsurrance" type="text" value="<%=resultats.getString("dos_numInsurrance")%>"/>
                 </div>
                 <div class="input-field col s6">
                      <i class="material-icons prefix">local_pharmacy</i>
                      <label for="last_name">PAST MEDICAL HISTORY:</label>
                      <input  name="dos_medicaleHistorique" type="text" value="<%=resultats.getString("dos_medicaleHistorique")%>"/>
                 </div>
  
                 <div class="input-field col s6">
                      <i class="material-icons prefix">local_pharmacy</i>
                      <label for="last_name">PAST SURGICAL HISTORY:</label>
                      <input  name="dos_surgicaleHistorique" type="text" value="<%=resultats.getString("dos_surgicaleHistorique")%>"/>
                 </div>
                 <div class="input-field col s6">
                      <i class="material-icons prefix">local_pharmacy</i>
                      <label for="last_name">CHRONIC MEDICATION:</label>
                      <input  name="dos_chroniqueMedicale" type="text" value="<%=resultats.getString("dos_chroniqueMedicale")%>"/>
                 </div>

                <div class="input-field col s6">
                     <i class="material-icons prefix">local_pharmacy</i>
                     <label for="last_name">ALERGIE:</label>
                     <input  name="dos_alergie" type="text" value="<%=resultats.getString("dos_alergie")%>"/>
                </div>
                <div class="input-field col s12">
                     <i class="material-icons prefix">local_hospital</i>
                     <label for="last_name">DEVELOPPEMENTAL</label>
                     <input  name="dos_devlpNaissance" type="text" value="<%=resultats.getString("dos_devlpNaissance")%>"/>
                </div>
            </div>
            <div class="row" style="position:relative; margin-left:90px! important;">
                 <div class="input-field col s6">
                      <label>
                            <button class="btn waves-effect waves-light  cyan darken-2" type="submit">Créer
                            <i class="material-icons right"></i>
                            </button>
                      </label>
                 </div>
                 <div class="input-field col 6">
                      <label>
                             <button class="btn waves-effect waves-light red lighten-3" type="reset" onClick="maj_fourn()">Annuler
                             <i class="material-icons right"></i>
                             </button>
                      </label> 
                 </div>
            </div>                
        </form>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 </body>
</html>
