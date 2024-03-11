<%-- 
    Document   : Vue_listeDossier
    Created on : 6 févr. 2018, 19:36:11
    Author     : Delex
--%>
<%@page import="java.sql.ResultSet"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        if (!confirm("Es-tu certain de vouloir accéder à cette page ? Clique sur OK pour continuer ou Annuler pour retourner à la page précédente"))
            history.go(-1);
    </script>
    <jsp:include page="header_liste.jsp"></jsp:include>
        <script lang="javascript">
            function supprimer_mati(nbmax) {
                exist = 0;
                ident = "";
                for (i = 0; i < nbmax; i++) {
                    if (document.forms[0].elements['checkbox' + i].checked) {
                        ident += "&code" + exist + "=" + document.forms[0].elements['id' + i].value;
                        exist += 1;
                    }
                }
                if (exist == 0)
                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à supprimer!!');
                else if (exist >= 1)
                    if (confirm('Si vous allez supprimer cet élement, vous risque de perdre son contenu!!\n \n \f NB: Effectuer pour\t [ OK ou ANNULER ]:\n \n \f -OK :: Pour éliminer cet élement! \n \n \f - Annuler :: Pour garder encore cet élement!'))
                        document.location = "Supprimer_listeDossier.jsp?nbsuppr=" + exist + ident;
            }

            function modifier_matie(nbmax) {
                exist = 0;
                for (i = 0; i < nbmax; i++) {
                    if (document.forms[0].elements['checkbox' + i].checked == true) {
                        exist += 1;
                        ident = document.forms[0].elements['id' + i].value;
                    }
                }
                if (exist == 0)
                    alert('Veuillez selectionner au plus une seule enregistrement de la liste souhaitez-vous à modifier!');
                else
                if (exist > 1)
                    alert('Veuillez selectionner un seul enregistrement !');
                else if (exist == 1) {
                    if (confirm('Vous êtes entrain de mêtre à jour une liste qui vient d/être sélectionner!! \n \n \f NB: Apuiez sur \t [ OK ou ANNULER ]:\n \n \f -OK :: Pour effectuer le changement ! \n \n \f - Annuler :: Pour ne pas changer !'))
                        document.location = "form_modif_dossier.jsp?code=" + ident;
                }
            }

            //    misy karazana roa ny fanaovana impression, ray le code comment io de ray le lavai o       
            function excel() {
                //            var htmltable= document.getElementById('clips_table');
                //            var html = htmltable.outerHTML;
                //            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));

                var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
                var textRange;
                var j = 0;
                tab = document.getElementById('dynamic-table'); // id of table

                for (j = 0; j < tab.rows.length; j++)
                {
                    tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
                    //tab_text=tab_text+"</tr>";
                }

                tab_text = tab_text + "</table>";
                tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
                tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
                tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

                var ua = window.navigator.userAgent;
                var msie = ua.indexOf("MSIE ");

                if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
                {
                    txtArea1.document.open("txt/html", "replace");
                    txtArea1.document.write(tab_text);
                    txtArea1.document.close();
                    txtArea1.focus();
                    sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
                }
                else                 //other browser not tested on IE 11
                    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

                return (sa);

            }
            function selectElementContents(el) {
                var body = document.body, range, sel;
                if (document.createRange && window.getSelection) {
                    range = document.createRange();
                    sel = window.getSelection();
                    sel.removeAllRanges();
                    try {
                        range.selectNodeContents(el);
                        sel.addRange(range);
                    } catch (e) {
                        range.selectNode(document.getElementById(el));
                        sel.addRange(range);
                    }
                } else if (body.createTextRange) {
                    range = body.createTextRange();
                    range.moveToElementText(el);
                    range.select();
                }
            }

        </script>
    <jsp:useBean id="gestionDossier" scope="session" class="gestion.GestionDossier" />
    <%
        ResultSet res = gestionDossier.getAll();
        int i = 0;
    %>
    <body class="no-skin">
        <jsp:include page="contenu.jsp"></jsp:include>


            <div class="hr hr-18 dotted hr-double"></div>
            <div class="row">
                <div class="col-xs-12">
                    <form id="form1" name="form1" method="post" action="">
                        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Ordre</th>
                                    <th>Phone</th>
                                    <th>Nome</th>
                                    <th>Mother</th>
                                    <th>Father</th>
                                    <th>Birth</th>
                                    <th>Nationality</th>
                                    <th>Sex</th>
                                    <th>Adresse</th>
                                    <th>H.Medicale</th>
                                    <th>Vaccin</th>
                                    <th>N.Insurrance</th>
                                    <th>M.History</th>
                                    <th>S.History</th>
                                    <th>C.Medicale</th>
                                    <th>Alergie</th>
                                    <th>D.Naissance</th>
                                    <th class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            <% while (res.next()) {%>
                            <tr>
                                <td><%=res.getString("automatique")%>
                                    <input type="hidden" name="id<%=i%>" value="<%=res.getString("automatique")%>"/>
                                </td>
                                <td><%=res.getString("dos_numeroPhone")%></td>
                                <td><%=res.getString("dos_nomPrenom")%></td>
                                <td><%=res.getString("dos_mere")%> </td>
                                <td><%=res.getString("dos_pere")%></td>
                                <td><%=res.getString("dos_dateNaissance")%></td>
                                <td><%=res.getString("dos_nationalite")%> </td>
                                <td><%=res.getString("dos_sexe")%></td>
                                <td><%=res.getString("dos_adresse")%></td>
                                <td><%=res.getString("dos_insurranceMedicale")%> </td>
                                <td><%=res.getString("dos_vaccine")%></td>
                                <td><%=res.getString("dos_numInsurrance")%></td>
                                <td><%=res.getString("dos_medicaleHistorique")%> </td>
                                <td><%=res.getString("dos_surgicaleHistorique")%></td>
                                <td><%=res.getString("dos_chroniqueMedicale")%></td>
                                <td><%=res.getString("dos_alergie")%> </td>
                                <td><%=res.getString("dos_devlpNaissance")%> </td>                                     
                                <td>
                                    <label>
                                        <input type="checkbox" name="checkbox<%=i%>" />
                                    </label>
                                </td>
                            </tr>
                            <%i++;%>
                            <%}%>
                        </tbody>
                    </table>


                    <button class="btn waves-effect waves-light" type="button" name="Modifier" onclick="javascript:modifier_matie(<%out.print(i);%>);">Modification
                        <i class="material-icons right"></i>
                    </button>
                    &nbsp;
                    <button class="btn waves-effect waves-light" type="button" name="Submit2" onclick="javascript:supprimer_mati(<%out.print(i);%>);">Suppression
                        <i class="material-icons right"></i>
                    </button>
                    &nbsp;
                    <button class="btn waves-effect waves-light" type="button" disabled="" onclick='excel()'>Exporter......
                        <i class="material-icons right"></i>
                    </button>
                    <label> &nbsp;
                        <button class="btn waves-effect waves-light" type="button" disabled="" onclick="selectElementContents('dynamic-table');"/>Copier..... 
                        <i class="material-icons left"></i>
                    </label>
                </form>
            </div>
        </div>

    
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
<jsp:include page="footer_liste.jsp"></jsp:include>
</body>
</html>