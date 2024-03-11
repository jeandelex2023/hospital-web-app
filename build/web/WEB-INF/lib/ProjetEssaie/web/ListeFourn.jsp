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
    <link rel="stylesheet" href="css/style_1.css">

    <script langage="javascript">

        function getXhr()
        {
            var xhr = null;
            if (window.XMLHttpRequest)
            {
                xhr = new XMLHttpRequest();
            }
            else if (window.ActiveXObject)
            {
                try {
                    xhr = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e)
                {
                    try {
                        xhr = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e)
                    {
                        alert("XHR not created");
                    }
                }
            }
            return xhr;
        }
        ;
        function suppression_fourn(nbmax) {
            exist = 0;
            ident = "";
            for (i = 0; i < nbmax; i++) {
                //Recuperer les checkbox cochés et les valeurs des zones de texte correspondantes
                if (document.form1.elements['checkbox' + i].checked) {
                    ident += "&id" + exist + "=" + document.form1.elements['code' + i].value;
                    exist += 1;
                }
            }
            if (exist == 0)
                alert('Veuillez sélectionner au moins un enregistrement');
            else if (exist >= 1)
                if (confirm('Etes-vous sûr de vouloir supprimer ce(s) enregistrment(s)')) {

                    var xhr = getXhr();
                    var data = 'exist=' + exist + ident;

                    xhr.onreadystatechange = function()
                    {
                        if (xhr.readyState == 4)
                        {
                            if (xhr.status == 200)
                            {
                                document.getElementById('liste').innerHTML = xhr.responseText;
                                //storing(req.responseText);	

                            }
                            else
                            {
                                alert("Error: returned status code " + xhr.status + " " + xhr.statusText);
                            }
                        }
                    };

                    xhr.open("POST", "supprimer_fourn.jsp", true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.send(data);

                }
        }
        function accueil() {
            document.location = "MenuPPALE.jsp";
        }

        function comd() {
            document.location = "TEfournisseur.jsp";
        }
        function liste() {
            document.location = "FormMajFourn.jsp";
        }
        function imprimer() {
            document.location = "ImprimerFourn.jsp";
        }

        //    misy karazana roa ny fanaovana impression, ray le code comment io de ray le lavai o       
        function excel() {
            //            var htmltable= document.getElementById('clips_table');
            //            var html = htmltable.outerHTML;
            //            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));

            var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
            var textRange;
            var j = 0;
            tab = document.getElementById('clips_table'); // id of table

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

    <jsp:useBean id="gestfourn" class="gestion.GestionFournisseur"/>
    <jsp:include page="entete.jsp"></jsp:include>

        <body onload='display_ct();'>


            <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 636px;">
                    <li class="user-details cyan darken-2">
                        <div class="row">
                            <div class="col col s8 m8 l8">
                                <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><i class="material-icons">school</i></a><ul id="profile-dropdown" class="dropdown-content" style="width: 128px; position: absolute; top: 57px; left: 101.234px; opacity: 1; display: none;">
                                    <li><a href=""><i class="mdi-action-face-unlock"></i> Profile</a>
                                    </li>
                                    <li><a href=""><i class="mdi-action-settings"></i>Gérer</a>
                                    </li>
                                    <li><a href=""><i class="mdi-communication-live-help"></i>Aides</a>
                                    </li>
                                    <li><a href=""><i class="mdi-hardware-keyboard-tab"></i>Deconnection</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="large material-icons">settings</i>Paramétrage</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Ecran Plain</a>
                                        </li>
                                        <li><a href="">Ecran Normale</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="large material-icons">sync</i>Complément</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Table1</a>
                                        </li>
                                        <li><a href="">Table2</a>
                                        </li>
                                        <li><a href="">Table3</a>
                                        </li>
                                        <li><a href="">Table4</a>
                                        </li>
                                        <li><a href="">Table5</a>
                                        </li>
                                        <li><a href="">Table6</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">format_color_fill</i>Préférences </a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Couleur1</a>
                                        </li>
                                        <li><a href="">Couleur2</a>
                                        </li>
                                        <li><a href="">Couleur3</a>
                                        </li>
                                    </ul>
                                </div>

                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">compare_arrows</i>Mes Tâches</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Couleur1</a>
                                        </li>
                                        <li><a href="">Couleur2</a>
                                        </li>
                                        <li><a href="">Couleur3</a>
                                        </li>
                                    </ul>
                                </div>	
                            </li>
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">show_chart</i>Statistiques</a>
                                <div class="collapsible-body" style="">
                                    <ul>
                                        <li><a href="">Table11</a>
                                        </li>
                                        <li><a href="">Table2</a>
                                        </li>
                                        <li><a href="">Table3</a>
                                        </li>
                                    </ul>
                                </div>	
                            </li>
                            <li class="divider"></li>						 
                            <li class="bold"><a class="collapsible-header  waves-effect waves-cyan"><i class="large material-icons">map</i>Site Map</a>
                            </li>
                            </aside>
                            <div class="container">
                                <p align="center"><a href="javascript:accueil()">Accueil</a><a href="javascript:comd()">>><a href="javascript:liste()">Mis à jour</a></a>|Vous fournisseurs </p>
                                <div style="position:relative;left:680px;" class="lera">
                                    <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span><i class="material-icons">watch_later</i></a>
                                </div>
                                <hr width="999px">
                            </div>
                            <p style="position:relative;left:670px;">Mes fournisseurs<p>

                            <div class="container">
                            <%
                                ResultSet res = gestfourn.getAll();
                                int i = 0;
                            %>

                            <div id="clip_edit_page">
                                <div class="card-panel" style="position:relative;margin-top:20px;right:-100px;"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">group</i></a>
                                    <div class="row">
                                        <div class="col s12 m9">
                                            <table class="striped dataTabularized" id="clips_table" style="width:900px;">
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
                                                            <a href="#" onclick="appelFormMessage('<%=res.getString("CONT_FOURN")%>');"><%=res.getString("CONT_FOURN")%></a>
                                                        </td>
                                                    </tr>
                                                    <% i++;%>
                                                    <%}%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                                <div align="center">
                                    <label>
                                        <button class="btn waves-effect waves-light cyan darken-2" type="button" name="Imprimer" onClick="window.print();">Imprimer
                                            <i class="material-icons right">print</i>
                                        </button>
                                    </label>
                                    <label>
                                        <button class="btn waves-effect waves-light red lighten-3" type="button" name="exporter" onClick="javascript:excel();">Exporter
                                            <i class="material-icons right">cloud_download</i>
                                        </button>
                                    </label>
                                    <label>
                                        <button class="btn waves-effect waves-light blue lighten-2" type="button" name="Exporter" onclick="selectElementContents('clips_table');">Copier
                                            <i class="material-icons right">cloud_upload</i>
                                        </button>
                                    </label></div>
                                </div>

                                <div id="message"></div>
                                      

                            </div></div>
                        <script langage="javascript">
                            window.onscroll = function() {
                                scrollFunction()
                            };
                            function scrollFunction() {
                                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                                    document.getElementById("myBtn").style.display = "block";
                                } else {
                                    document.getElementById("myBtn").style.display = "none";
                                }
                            }
                            function topFunction() {
                                if (document.body.scrollTop != 0 || document.documentElement.scrollTop != 0) {
                                    window.scrollBy(0, -80);
                                    timeOut = setTimeout('topFunction()', 3);
                                }
                                else
                                    clearTimeout(timeOut);
                            }
                            //Dady's code
                            function appelFormMessage(numero) {
                                var reqAjax = new XMLHttpRequest();
                                reqAjax.onreadystatechange = function() {
                                    if (reqAjax.readyState == 4 && reqAjax.status == 200) {
                                        document.getElementById("message").innerHTML = reqAjax.responseText;
                                    }
                                };
                                reqAjax.open("POST", "ozekiTesteUnitaire.jsp", true);
                                reqAjax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
                                reqAjax.send("numero=" + numero);
                            }
                            function envoyerMessage(num) {
                                var dest = document.messenger.receiver.value;
                                var mes = document.messenger.msg.value;
                                var donnees = 'receiver=' + dest + '&msg=' + mes;
                                var reqAjax = new XMLHttpRequest();
                                reqAjax.onreadystatechange = function() {
                                    if (reqAjax.readyState == 4 && reqAjax.status == 200) {
                                        document.getElementById("formulaire").innerHTML = reqAjax.responseText;
                                        document.getElementById("notif").innerHTML = 'Message envoyé';
                                        document.messenger.receiver.value = num;
                                        setTimeout("document.getElementById('notif').innerHTML='';", 4000);
                                    }
                                };
                                reqAjax.open("POST", "envoyerSMS.jsp", true);
                                reqAjax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
                                reqAjax.send(donnees);
                            }
                        </script>

                        <button style="display: block;" onclick="topFunction()" id="myBtn" title="Monter  en haut">⇧</button>
                        <script type="text/javascript">
                            function display_c() {
                                var refresh = 1000; // Refresh rate in milli seconds
                                mytime = setTimeout('display_ct()', refresh)
                            }

                            function display_ct() {
                                var strcount
                                var x = new Date()
                                document.getElementById('lera_ankavana').innerHTML = x;
                                tt = display_c();
                            }
                        </script>
                        </body>
                        </html>