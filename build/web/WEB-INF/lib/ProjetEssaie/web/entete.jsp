<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>   
<title>Gestion de Snack-Bar</title>
<link href="css/icon.css" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<!-- Eto no mifarana le import materialize-->

<link rel="shortcut icon" href="images/logo_cafet.jpg" type="image/x-icon" />
<link rel="stylesheet" href="css/style.css" type="text/css"/>
<link rel="stylesheet" href="css/materialize.css" type="text/css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    <!--
                        function open_infos()
    {
        width = 270;
        height = 480;
        if (window.innerWidth)
        {
            var left = (window.innerWidth - width) / 2;
            var top = (window.innerHeight - height) / 2;
        }
        else
        {
            var left = (document.body.clientWidth - width) / 2;
            var top = (document.body.clientHeight - height) / 2;
        }
        window.open('delex-ozekimessenger.jsp', 'nom_de_ma_popup', 'menubar=no, scrollbars=no, top=' + top + ', left=' + left + ', width=' + width + ', height=' + height + '');
    }
    -- ></script>
<script language="javascript">
            function deconnecter() {
                if (confirm('Etes_vous sure de vouloir déconnecter?'))
                    document.location = "index.jsp";
            }
</script>
    <nav class="nav-extended cyan darken-2">
        <div class="nav-wrapper">
            <a href="#!" class="brand-logo"><i class="material-icons">restaurant</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="#!">Apropos</a></li>
                <li class="divider"></li>
                <li><a href="#!"><i class="material-icons">school</i>KSLMD</a></li>
                <li><a href="#!"><i class="material-icons">restaurant_menu</i>Menu du jour</a></li>
                <li><a href="vue_formulaire_ajoutClient.jsp"><i class="material-icons">person</i>Client</a></li>
                <li><a href="ListeCmd.jsp"><i class="material-icons">view_module</i>Commande</a></li>
                <li><a href="ListeFourn.jsp"><i class="material-icons">group</i>Fournisseur</a></li>
                <li><a href="#!"><i class="material-icons">settings_applications</i>Deconnexion</a></li>
            </ul>
        </div>
        <div class="nav-content">
            <span class="nav-title">Title</span>
            <a href="MenuPPALE.jsp" class="btn-floating btn-large halfway-fab waves-effect waves-light blue-grey">
                <i class="material-icons" class="button-collapse">menu</i>
            </a>
        </div>
    </nav>
</div>

<div class="col s8">
    <div class="fixed-action-btn vertical">
        <a class="btn-floating btn-large blue-grey tooltipped" data-position="left" data-delay="50" data-tooltip="Appel telephonique">
            <i class="large material-icons">call person</i>
        </a>

        <ul>
            <li><a href="TEcmd.jsp" class="btn-floating red tooltipped" data-position="left" data-delay="50" data-tooltip="Nouvelle Commmande"><i class="material-icons">add</i></a></li>
            <li><a href="TEfournisseur.jsp" class="btn-floating blue-grey tooltipped" data-position="left" data-delay="50" data-tooltip="Nouvelle Fournisseurs"><i class="material-icons">add</i></a></li>
            <li><a href="vue_formulaire_ajoutClient.jsp" class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Nouvelle Clients"><i class="material-icons">add</i></a></li>
            <li><a href="FormMajCmd.jsp" class="btn-floating red tooltipped" data-position="left" data-delay="50" data-tooltip="Mise a jour Commande"><i class="material-icons">edit</i></a></li>
            <li><a href="FormMajFourn.jsp" class="btn-floating yellow blue-grey tooltipped" data-position="left" data-delay="50" data-tooltip="Mise a jourF/sseurs"><i class="material-icons">edit</i></a></li>
            <li><a href="#null" class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Mise a jours Clients"><i class="material-icons">edit</i></a></li>
            <li><a href="#null" class="btn-floating green tooltipped" data-position="left" data-delay="50" data-tooltip="Envoyer un messsage" onclick="javascript:open_infos();"><i class="material-icons">message</i></a></li>
        </ul>
    </div>
</div>