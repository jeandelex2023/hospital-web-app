<%-- 
    Document   : Vue_listePatient1
    Created on : 12 févr. 2018, 16:27:44
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
                        document.location = "Supprimer_listeConsultation.jsp?nbsuppr=" + exist + ident;
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
    <jsp:useBean id="gestionPTS" scope="session" class="gestion.GestionPatient" />
    <%
        ResultSet res = gestionPTS.getAll();
        int i = 0;
    %>
    <body class="no-skin">
        <jsp:include page="ContenuListeConsultation.jsp"></jsp:include>
            <div class="row">
                <div class="col-xs-12">
                    <div class="clearfix">
                        <div class="pull-right tableTools-container"></div>
                    </div>
                    <div class="table-header">
                        Resultat pour "Les dernières enregistrements CONSULTATION"
                    </div>

                    <!-- div.table-responsive -->

                    <!-- div.dataTables_borderWrap -->
                    <div>
                        <form id="form1" name="form1" method="post" action="">
                            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" />
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th>CIN</th>
                                        <th>Nom et Prenom</th>

                                        <th class="hidden-480">Nationnalité</th>

                                        <th>
                                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                            Contacte
                                        </th>
                                        <th class="hidden-480">Status</th>

                                        <th>T</th>
                                    </tr>
                                </thead>

                                <tbody>
                                <% while (res.next()) {%>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td>
                                        <a href="#"><%=res.getString("pat_numero")%><input type="hidden" name="id<%=i%>" value="<%=res.getString("pat_numero")%>"/></a>
                                    </td>
                                    <td><%=res.getString("pat_nomPrenom")%></td>

                                    <td class="hidden-480"><%=res.getString("pat_nationalite")%></td>
                                    <td><%=res.getString("pat_contact")%></td>
                                    <td class="hidden-480">
                                        <span class="label label-sm label-success">Malade</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs action-buttons">
                                            <a class="blue" href="#">
                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                            </a>

                                            <a class="green" href="#">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>

                                            <a class="red" href="#">
                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                            </a>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="Voir">
                                                            <span class="blue">
                                                                <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                            </span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Editer">
                                                            <span class="green">
                                                                <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                            </span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Supprimer">
                                                            <span class="red">
                                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                            </span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <%i++;%>
                                <%}%>
                            </tbody>
                        </table>
                        <button class="btn waves-effect waves-light" type="button" name="Modifier" disabled='' onclick="javascript:modifier_matie(<%out.print(i);%>);">Modification
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button" name="Submit2" disabled='' onclick="javascript:supprimer_mati(<%out.print(i);%>);">Suppression
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button"  onclick='excel()'>Exporter......
                            <i class="material-icons right"></i>
                        </button>
                        &nbsp;
                        <button class="btn waves-effect waves-light" type="button"  onclick="selectElementContents('dynamic-table');">Copier..... 
                            <i class="material-icons left"></i>
                        </button>
                        &nbsp;&nbsp;&nbsp;          
                        <button class="btn waves-effect waves-light" type="button"  onclick="window.print();">Imprimer..... 
                            <i class="material-icons left"></i>
                        </button>
                    </form>                       



                </div>
            </div>
        </div>
        <jsp:include page="footer_liste.jsp"></jsp:include>
        <script type="text/javascript">
            window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
        </script>
        <script type="text/javascript">
            if ('ontouchstart' in document.documentElement)
                document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
        <script src="assets/js/dataTables.tableTools.min.js"></script>
        <script src="assets/js/dataTables.colVis.min.js"></script>

        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
                //initiate dataTables plugin
                var oTable1 =
                        $('#dynamic-table')
                        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                        .dataTable({
                    bAutoWidth: false,
                    "aoColumns": [
                        {"bSortable": false},
                        null, null, null, null, null,
                        {"bSortable": false}
                    ],
                    "aaSorting": [],
                    //,
                    //"sScrollY": "200px",
                    //"bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50
                });
                //oTable1.fnAdjustColumnSizing();


                //TableTools settings
                TableTools.classes.container = "btn-group btn-overlap";
                TableTools.classes.print = {
                    "body": "DTTT_Print",
                    "info": "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
                    "message": "tableTools-print-navbar"
                }

                //initiate TableTools extension
                var tableTools_obj = new $.fn.dataTable.TableTools(oTable1, {
                    "sSwfPath": "assets/swf/copy_csv_xls_pdf.swf",
                    "sRowSelector": "td:not(:last-child)",
                    "sRowSelect": "multi",
                    "fnRowSelected": function(row) {
                        //check checkbox when row is selected
                        try {
                            $(row).find('input[type=checkbox]').get(0).checked = true
                        }
                        catch (e) {
                        }
                    },
                    "fnRowDeselected": function(row) {
                        //uncheck checkbox
                        try {
                            $(row).find('input[type=checkbox]').get(0).checked = false
                        }
                        catch (e) {
                        }
                    },
                    "sSelectedClass": "success",
                    "aButtons": [
                        {
                            "sExtends": "copy",
                            "sToolTip": "Copy to clipboard",
                            "sButtonClass": "btn btn-white btn-primary btn-bold",
                            "sButtonText": "<i class='fa fa-copy bigger-110 pink'></i>",
                            "fnComplete": function() {
                                this.fnInfo('<h3 class="no-margin-top smaller">Table copied</h3>\
                                                                <p>Copied ' + (oTable1.fnSettings().fnRecordsTotal()) + ' row(s) to the clipboard.</p>',
                                        1500
                                        );
                            }
                        },
                        {
                            "sExtends": "csv",
                            "sToolTip": "Export to CSV",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-file-excel-o bigger-110 green'></i>"
                        },
                        {
                            "sExtends": "pdf",
                            "sToolTip": "Export to PDF",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-file-pdf-o bigger-110 red'></i>"
                        },
                        {
                            "sExtends": "print",
                            "sToolTip": "Pour l'Impression",
                            "sButtonClass": "btn btn-white btn-primary  btn-bold",
                            "sButtonText": "<i class='fa fa-print bigger-110 grey'></i>",
                            "sMessage": "<div class='navbar navbar-default'><div class='navbar-header pull-left'><a class='navbar-brand' href='#'><small>Liste de CONSULTATION IMPRIMMABLE</small></a></div></div>",
                            "sInfo": "<h3 class='no-margin-top'>Impression</h3>\
                                                                  <p>SVP utiliser votre fonction de navigateur d'impression pour pouvoir\
                                                                  imprimer cet Table.\
                                                                  <br />Press <b>escape</b> when finished.</p>",
                        }
                    ]
                });
                //we put a container before our table and append TableTools element to it
                $(tableTools_obj.fnContainer()).appendTo($('.tableTools-container'));

                //also add tooltips to table tools buttons
                //addding tooltips directly to "A" buttons results in buttons disappearing (weired! don't know why!)
                //so we add tooltips to the "DIV" child after it becomes inserted
                //flash objects inside table tools buttons are inserted with some delay (100ms) (for some reason)
                setTimeout(function() {
                    $(tableTools_obj.fnContainer()).find('a.DTTT_button').each(function() {
                        var div = $(this).find('> div');
                        if (div.length > 0)
                            div.tooltip({container: 'body'});
                        else
                            $(this).tooltip({container: 'body'});
                    });
                }, 200);



                //ColVis extension
                var colvis = new $.fn.dataTable.ColVis(oTable1, {
                    "buttonText": "<i class='fa fa-search'></i>",
                    "aiExclude": [0, 6],
                    "bShowAll": true,
                    //"bRestore": true,
                    "sAlign": "right",
                    "fnLabel": function(i, title, th) {
                        return $(th).text();//remove icons, etc
                    }

                });

                //style it
                $(colvis.button()).addClass('btn-group').find('button').addClass('btn btn-white btn-info btn-bold')

                //and append it to our table tools btn-group, also add tooltip
                $(colvis.button())
                        .prependTo('.tableTools-container .btn-group')
                        .attr('title', 'Trier et Chercher par catégorie!').tooltip({container: 'body'});

                //and make the list, buttons and checkboxed Ace-like
                $(colvis.dom.collection)
                        .addClass('dropdown-menu dropdown-light dropdown-caret dropdown-caret-right')
                        .find('li').wrapInner('<a href="javascript:void(0)" />') //'A' tag is required for better styling
                        .find('input[type=checkbox]').addClass('ace').next().addClass('lbl padding-8');



                /////////////////////////////////
                //table checkboxes
                $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

                //select/deselect all rows according to table header checkbox
                $('#dynamic-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
                    var th_checked = this.checked;//checkbox inside "TH" table header

                    $(this).closest('table').find('tbody > tr').each(function() {
                        var row = this;
                        if (th_checked)
                            tableTools_obj.fnSelect(row);
                        else
                            tableTools_obj.fnDeselect(row);
                    });
                });

                //select/deselect a row when the checkbox is checked/unchecked
                $('#dynamic-table').on('click', 'td input[type=checkbox]', function() {
                    var row = $(this).closest('tr').get(0);
                    if (!this.checked)
                        tableTools_obj.fnSelect(row);
                    else
                        tableTools_obj.fnDeselect($(this).closest('tr').get(0));
                });




                $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
                    e.stopImmediatePropagation();
                    e.stopPropagation();
                    e.preventDefault();
                });


                //And for the first simple table, which doesn't have TableTools or dataTables
                //select/deselect all rows according to table header checkbox
                var active_class = 'active';
                $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
                    var th_checked = this.checked;//checkbox inside "TH" table header

                    $(this).closest('table').find('tbody > tr').each(function() {
                        var row = this;
                        if (th_checked)
                            $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                        else
                            $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
                    });
                });

                //select/deselect a row when the checkbox is checked/unchecked
                $('#simple-table').on('click', 'td input[type=checkbox]', function() {
                    var $row = $(this).closest('tr');
                    if (this.checked)
                        $row.addClass(active_class);
                    else
                        $row.removeClass(active_class);
                });



                /********************************/
                //add tooltip for small view action buttons in dropdown menu
                $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

                //tooltip placement on right or left
                function tooltip_placement(context, source) {
                    var $source = $(source);
                    var $parent = $source.closest('table')
                    var off1 = $parent.offset();
                    var w1 = $parent.width();

                    var off2 = $source.offset();
                    //var w2 = $source.width();

                    if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
                        return 'right';
                    return 'left';
                }

            })
        </script>
    </body>
</html>
