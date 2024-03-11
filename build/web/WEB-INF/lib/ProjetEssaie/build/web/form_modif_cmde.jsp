
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script lang="javascript">
    function maj_cmd(){
        document.location = "FormMajCmd.jsp";
    }
</script>
<html>
    <jsp:useBean id="getcmd" scope="session" class="gestion.GestionCommande" />                  
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = getcmd.getAll(ide);
        resultats.next();
    %>
    <jsp:include page="entete.jsp"></jsp:include>
        <div id="menu_c">
            <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd()">Commande</a> > <a href="javascript:liste()">Mis à jour</a> > Modification </p>
            <form name="form1" method="post" action="update_cmd.jsp">
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
                                <td width="92"><span class="Style24 Style16">Numéro :</span></td>
                                <td width="290"><span class="Style11">
                                        <label>
                                            <input  name="numcmd" type="text" value="<%=resultats.getString("numcmd")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Num table :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="numtable" type="text" value="<%=resultats.getString("numtable")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Consommation :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input  name="numconsom" type="text" value="<%=resultats.getString("numconsom")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Qte cmd : </span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="qte_cmd" type="text" value="<%=resultats.getString("qte_cmd")%>" />
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Date : </span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="date_cmd" type="text" value="<%=resultats.getString("date_cmd")%>" />
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
                                            <button class="btn waves-effect waves-light red lighten-4" type="button" name="Submit3" onClick="maj_cmd()"/>cancel
                                            <i class="material-icons right">cancel</i> 
                                        </label>
                                    </div>
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

