
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style type="text/css">
        <!--
        .Style1 {
            font-size: 18px;
            font-weight: bold;
        }
        -->
    </style>
    <script lang="javascript">
        function ControllechampVide1(champ) {
                if (champ == "") {
                    confirm("Le nom d'utilisateur est vide!");

                }
            }
        function ControllechampVide2(champ) {
                if (champ == "") {
                    confirm("Completez le mot de passe svp!!!");
                }
            }
        function ControlerLogin(form1) {               
                ControllechampVide1(document.form1.logina.value);
                document.form1.logina.value.setFocus(true);
            }
        function ControlerMdp(form1) {               
                ControllechampVide2(document.form1.mdp.value);
                document.form1.mdp.value.setFocus(true);
            }
        function ListeAdmin() {
            document.location = "FormMajUtil.jsp";
        }
        function accueil() {
            document.location = "MenuPPALE.jsp";
        }
    </script>
 <script langage="javascript">
 function getInputElements() {
document.forms["form1"].getElementsByTagName("input");
}</script>
    <jsp:include page="entete.jsp"></jsp:include>
        <div id="menu_c">
            <form id="form1" name="form1" method="post" action="insert_utilisat.jsp">

                <p>Vous allez d'enregistrer un nouveau <a href="javascript:accueil()">Utilisateur</a></p>
                <div style="text-align:center;">
    <a href="#!" style="position:absolute;top:255px;right:50px;color:blue;list-style: none;text-decoration:overline;" onclick="javascript:location.reload();">Actualiser</a>
</div>
                <center class="Style1">
                    Nouveau utilisateur 
                </center>
                <BR><div id="formtext">
                    <table width="412" height="195" border="0" align="center">
                        <tr>
                            <td width="146" height="64">Identifiant:</td>
                            <td>
                                 <div align="center">
                                 <div class="input-field col s6">
                                   <i class="material-icons prefix">person</i>
                                    <label for="last_name">Username</label>
                                    <input type="tel" name="logina" id="logina" size="32" length="20" onblur="ControlerLogin(form1);" required/>
                                 </div>
                                 </div>
                            </td>          
                        </tr>               
                        <tr>
                            <td height="58">Mot de passe :</td>
                            <td><div align="center">
                            <div class="input-field col s6">
                               <i class="material-icons prefix">lock_open</i>
                                <label for="last_name">Password</label>
                                    <input type="tel" name="mdp" id="mdp" size="32" length="8" onblur="ControlerMdp(form1);" required/>
                            </div>
                            </div>
                            </td>     
                        </tr>
                        <tr>
                        <div align="left" >
                          <td align="right"><div id="formbouton">
                            <label>
                                <button class="btn waves-effect waves-light  teal lighten-3" type="submit" name="ajouter">Ajouter
                               <i class="material-icons right">send</i>
                               </button>
                            </label>
                            <label>
                                <button class="btn waves-effect waves-light red lighten-4" type="reset" name="annuler" onclick="javascript:getInputElements();">Annuler
                                  <i class="material-icons right">cancel</i>
                                </button>
                            </label>
                            </td>
                        </tr>
                    </table></div>
            </form>
        </div>
    </div>
<jsp:include page="pied.jsp"></jsp:include>
</body>
</html>
