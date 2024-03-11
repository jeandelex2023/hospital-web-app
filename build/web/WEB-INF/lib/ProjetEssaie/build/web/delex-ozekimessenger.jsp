<!DOCTYPE html>   
<title>Gestion de Snack-Bar</title>

<link href="css/icon.css" rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<!-- Eto no mifarana le import materialize-->

<link rel="shortcut icon" href="images/logo_cafet.jpg" type="image/x-icon" />
<link rel="stylesheet" href="css/style.css"  type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/templatemo_style.css"  type="text/css" />
<link rel="stylesheet" href="jquery-ui.css" >
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<body>
    <div style="width:300px;">
        <div class="row" style="position:relative;top:100px !important;">
            <form class="col s12" name="messenger">	
                <div class="input-field col s6">
                    <!-- eto no manomboka ny varriable receiver -->
                    <input id="input_text" type="text" name="receiver" data-length="10">
                    <label for="input_text">Destinateur</label>
                    <!-- eto no mifarana izy -->
                </div>

                <div class="row">
                    <!-- eto no manomboka ny varriable msg -->
                    <div class="input-field col s12">
                        <textarea id="textarea1" class="materialize-textarea" name="msg"></textarea>
                        <label for="textarea1">Message</label>
                        <!-- eto no mifarana izy -->
                    </div>
                </div>
        </div>
        <div class="mi-controler-an-le-boutton-ambany-reto" style="position:relative;top: 150px !important;">
            <!-- boutton koa toke hoeke -->
            <label>
                <input type="button" onclick="envoyerMessage();" value="envoyer"/>
            </label>
            <label>
                <input class="btn waves-effect waves-light red lighten-4" type="reset" name="annuler"/>Annuler<!-- annuler tato-->
               
            </label>
            <!-- etoagne ty fara e -->
        </div>
    </div>
</form>
<div id="notif">
</div>
<div class="col s8">
    <div class="fixed-action-btn vertical">
        <a class="btn-floating btn-large blue-grey tooltipped" data-position="left" data-delay="50" data-tooltip="Mode endroid!">
            <i class="large material-icons">android</i>
        </a>

        <ul>
            <li><a class="btn-floating yellow darken-1 tooltipped" data-position="left" data-delay="50" data-tooltip="Liste Message Envoyees"><i class="material-icons">check</i></a></li>
            <li><a class="btn-floating blue tooltipped" data-position="left" data-delay="50" data-tooltip="Liste Message Reussir"><i class="material-icons ">autorenew</i></a></li>
        </ul>
    </div>
</div>
        
        <script type="text/javascript" src="js-materialize/js/jquery.min.js"></script>
        <script type="text/javascript" src="js-materialize/js/materialize.min.js"></script>
    </body>
</html>
