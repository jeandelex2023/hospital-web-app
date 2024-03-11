<%-- 
    Document   : FormMajDossier
    Created on : 5 févr. 2018, 06:08:56
    Author     : Delex
--%>
<!--Erreur inconnnue pour l'importation du java sql resultatSET-->
<%@page import="java.sql.ResultSet"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
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
                    alert('Veuillez selectionner au moins un enregistrement');
                else if (exist >= 1)
                    if (confirm('Voullez vous supprimer vraiement ces enregistrements?'))
                        document.location = "delete_dossier.jsp?nbsuppr=" + exist + ident;
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
                    alert('Veuillez selectionner un enregistrement');
                else
                if (exist > 1)
                    alert('Veuillez selectionner un seul enregistrement');
                else if (exist == 1) {
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

            <h4 class="white-opaque">
                <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                <a href="#modal-table" role="button"  data-toggle="modal"> Voire les dérnières enrégistrements des listes</a>
            </h4>

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
                            </tr>
                            <%i++;%>
                            <%}%>
                        </tbody>
                    </table>


                    <button disabled class="btn waves-effect waves-light" type="button" id="disabled" name="Modifier" onclick="javascript:modifier_matie(<%out.print(i);%>);">Sauvegarde
                        <i class="material-icons right">cloud</i>
                    </button>
                    &nbsp;
                    <button disabled class="btn waves-effect waves-light" type="button" id="disabled" name="Submit2" onclick="javascript:supprimer_mati(<%out.print(i);%>);">Suppression
                        <i class="material-icons right"></i>
                    </button>
                    &nbsp;
                    <button class="btn waves-effect waves-light" type="button" name="Submit2" onclick='excel()'>Exporter... 
                        <i class="material-icons right"></i>
                    </button>
                    <label> &nbsp;
                        <button class="btn waves-effect waves-light" type="button" name="Submit2" onclick="selectElementContents('dynamic-table');"/>Copier... 
                        <i class="material-icons left">face</i>
                    </label>
                </form>
            </div>
        </div>


        <div id="modal-table" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header no-padding">
                        <div class="table-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <span class="white">&times;</span>
                            </button>
                            Liste des dérnieres enrégistrements
                        </div>
                    </div>
                    <div class="modal-body no-padding">
                        <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                            <thead>
                                <tr>
                                    <th>Nom et Prenom</th>
                                    <th>Nationalité</th>
                                    <th>Contacte</th>
                                    <th>
                                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                        Dérniere mise a jour
                                    </th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="#">Jean</a>
                                    </td>
                                    <td>Malagasy</td>
                                    <td>0343249007</td>
                                    <td>Feb 12</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">delex</a>
                                    </td>
                                    <td>Francais</td>
                                    <td>0343249007</td>
                                    <td>Feb 18</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">Dalgo</a>
                                    </td>
                                    <td>Comore</td>
                                    <td>0343249007</td>
                                    <td>Mar 11</td>
                                </tr>

                                <tr>
                                    <td><a href="#">Didier</a>
                                    </td>
                                    <td>Ivorien</td>
                                    <td>0343249007</td>
                                    <td>Apr 03</td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">Alison</a>
                                    </td>
                                    <td>Canadien</td>
                                    <td>0343249007</td>
                                    <td>Jan 21</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="modal-footer no-margin-top">
                        <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                            <i class="ace-icon fa fa-times"></i>
                            Fermer
                        </button>
                        <ul class="pagination pull-right no-margin">
                            <li class="prev disabled">
                                <a href="#">
                                    <i class="ace-icon fa fa-angle-double-left"></i></li>
                            <li class="active">
                                <a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li class="next">
                                <a href="#">
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </ul>
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
