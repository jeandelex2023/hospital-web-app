
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script language="javascript">
        function maj_cons() {
            document.location = "FormMajConsom.jsp";
        }
    </script>
    <jsp:useBean id="getcons" scope="session" class="gestion.GestionConsommation"/>
    <%
        String ide = request.getParameter("code");
        ResultSet resultats = getcons.getAll(ide);
        resultats.next();
    %>
    <jsp:include page="entete.jsp"></jsp:include>
        <div id="menu_c">
            <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > <a href="javascript:comd()"> Consommation</a> > <a href="javascript:liste()"> Mis à jour</a> > Modification </p>
            <form id="formCmd" name="form1" method="post" action="update_consom.jsp">
                <center>
                    <div align="center" id="formtext">
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
                                            <input  name="numconsom" type="text" value="<%=resultats.getString("numconsom")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Libellé :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="libelle" type="text" value="<%=resultats.getString("libelle")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Prix unitaire :</span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input  name="prix_unit" type="text" value="<%=resultats.getString("prix_unit")%>"/>
                                    </label>
                                </span></td>
                        </tr>
                        <tr>
                            <td><span class="Style24 Style16">Quantité : </span></td>
                            <td><span class="Style11">
                                    <label>
                                        <input name="qte_init" type="text" value="<%=resultats.getString("qte_init")%>" />
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
                                            <input type="reset" name="Submit3" value="Annuler" onClick="maj_cons()"/>
                                        </label>
                                    </div>
                                </span></td>
                        </tr>
                    </table></div>
            </center>
            <div align="center">

            </div>
        </form>
    </div>
</div>
<jsp:include page="pied.jsp"></jsp:include>
</body>
</html>
