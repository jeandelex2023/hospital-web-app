

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script lang="javascript">
    function maj_fourn() {
        document.location = "FormMajFourn.jsp";
    }
    function accueil() {
        document.location = "MenuPPALE.jsp";
    }

    function comd() {
        document.location = "TEfournisseur.jsp";
    }
</script>
<html>

    <jsp:useBean id="getfour" scope="session" class="gestion.GestionFournisseur" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = getfour.getAll(ide);
        resultats.next();
    %>
    <jsp:include page="entete.jsp"></jsp:include>
        <div id="menu_c">
            <br>
            <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd">Fournisseur</a> > <a href="javascript:liste">Mis à jour</a> > Modification </p>
            <form name="form1" method="post" action="update_fourn.jsp">
                <center><div align="center" id="formtext">
                        <table width="415" border="0" align="center">
                            <tr>
                                <td colspan="2" bgcolor="#F2F2F2"><div align="center"><span class="Style24 Style14">FORMULAIRE DE MODIFICATION </span> </div></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="92"><span class="Style24 Style16">Identification :</span></td>
                                <td width="290"><span class="Style11">
                                        <label>
                                            <input  name="idfourn" type="text" value="<%=resultats.getString("idfourn")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Nom :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="nomfourn" type="text" value="<%=resultats.getString("nomfourn")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Adresse :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input  name="adrs_fourn" type="text" value="<%=resultats.getString("adrs_fourn")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Contact : </span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="cont_fourn" type="text" value="<%=resultats.getString("cont_fourn")%>" />
                                    </label>
                                </span></td>
                        </tr>
                                           <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#F2F2F2"><span class="Style25"></span></td>
                            <td bgcolor="#F2F2F2"><span class="Style26">
                                    <div id="formbouton">
                                        <label>

                                            <input type="submit" name="Submit2" value="Valider" />
                                        </label>
                                        <label>
                                            &nbsp;&nbsp;&nbsp;
                                            <input type="reset" name="Submit3" value="Annuler" onClick="maj_fourn()"/>
                                        </label></div>
                                </span></td>
                        </tr>
                    </table></div>                
            </center>
        </form>
    </div>
</div>
<jsp:include page="pied.jsp"></jsp:include>
</body>       
</html>
