
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" import="action.*" import="action.classe.*" import="gestion.*"%>
<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<html>
<link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css'>

<link rel="stylesheet" href="css/style_1.css">
    <jsp:useBean id="gestfourn" class="gestion.GestionFournisseur"/>
    <jsp:include page="entete.jsp"></jsp:include>
            <p>Page de listes: <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd()">Fournisseurs</a> > <a href="javascript:liste()">Mis à jour</a> > Listes </p>
            <br><center style="font-weight: bold"> LISTE DES FOURNISSEURS </center>
         
            <br>
            <%
                ResultSet res = gestfourn.getAll();
                int i = 0;
            %>
<div class="section">
  <div id="clip_edit_page">
      <div class="card-panel" style="margin-top:-90px;"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">group</i></a>
    <div class="row">
        <div class="col s12 m9">
            <table class="striped dataTabularized" id="clips_table">
               <thead>
                    <tr>
                        <th style="padding: 0 5px; width:50px; text-transform: none;">IdFours</th>
                        <th style="padding: 0 5px; width:50px; text-transform: none;">NomFourns</th>
                        <th style="padding: 0 5px; width:50px; text-transform: none;">AdresFourns</th>
                        <th style="padding: 0 5px; width:50px; text-transform: none;">ContFourns</th>
                    </tr>
                </thead>
                 <tbody>
                 <% while (res.next()) {%>
                        <tr>
                            <td>
                                <%=res.getString("IDFOURN")%>
                            </td>
                            <td>
                                <%=res.getString("NOMFOURN")%>
                            </td>
                            <td>
                                <%=res.getString("ADRS_FOURN")%>                          </td>
                            <td>
                                <%=res.getString("CONT_FOURN")%>
                            </td>
                        </tr>
                <% i++;%>
                <%}%>
                  </tbody>
            </table>
        </div>
    </div>
</div></div>
<script type="text/javascript">

</script>          
        <div align="center" id="formbouton">
           <label>
               <button class="btn waves-effect waves-light  teal lighten-3" type="button" name="Imprimer" onClick="javascript:Imprimer();">Imprimer
                   <i class="material-icons right">print</i>
               </button>
           </label>
           <label>
           <button class="btn waves-effect waves-light red lighten-4" type="button" name="exporter" onClick="javascript:excel();">Exporter
                   <i class="material-icons right">list</i>
           </button>
           </label>
        </div>
<div style=" margin-left:250px !important;">
      <label>
         <button class="btn waves-effect waves-light blue lighten-4" type="button" name="Exporter" onclick="selectElementContents('clips_table');">Copier
             <i class="material-icons right">group</i>
         </button>
      </label>
</div></div>
<br><br>
 <div id="pied">
      <p><center> 
         <p> Snack-Bar Universitaire</p>
            <p>Gestion de Snack-Bar, Universite de Fianarantsoa</p>
         </center></p>
 </div>
<script langage="javascript">
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}
function topFunction() {
  if (document.body.scrollTop!=0 || document.documentElement.scrollTop!=0){
    window.scrollBy(0,-80);
    timeOut=setTimeout('topFunction()',3);
  }
  else clearTimeout(timeOut);
}
</script>

<button style="display: block;" onclick="topFunction()" id="myBtn" title="Monter  en haut">⇧</button>
<script id="__debug_kit" data-id="af5cb9ad-f786-4ec6-b658-4ab80f77d665" data-url="http://localhost:1000/" src="/debug_kit/js/toolbar.js"></script></body>
<script src='https://code.jquery.com/jquery-2.1.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js'></script>
<script src='https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js'></script>

<script src="js/index.js"></script>
</body>
</html>
<!--mbo hafahagne toy satria gestion 3 avao ty angatahe y directeur ie hosoloako gestion client str srt ty migerer consommmation nah tsy maza va ty uml-->