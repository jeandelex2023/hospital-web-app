<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="entete.jsp"></jsp:include>
        <body onload='display_ct();'>
            <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 636px;">
                    <li class="user-details blue-grey">
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
                                <p align="center">Page d'accueil d'administrateur:>>|<a href="javascript:accueil()">Accueil</a></p>
                                <div style="position:relative;left:680px;" class="lera">
                                    <a href="#!" class="secondary-content"><span id='lera_ankavana' title=""></span><i class="material-icons">watch_later</i></a>
                                </div>
                                <hr width="999px">
                            </div>

                            <p style="position:relative;left:600px;">Liste journalier  offre disponnible sur cette semaine<p>
                            <div style="position:relative;right:-400px;width:800px;top:35px;">
                                <ul class="collection">
                                    <li class="collection-item avatar">
                                        <img src="images/images_051.jpg" alt="" class="circle">
                                        <span class="title">Steak vs Sandwitch</span>
                                        <p>Matinnée<br>
                                            Prix= 3000 Ar<br>
                                            Etudiant= 1500 Ar<br>
                                            Enseignat= 3000 Ar<br>
                                            KSLMD :: 033 17 313 19
                                        </p>
                                        <a href="#!" class="secondary-content"><i class="material-icons">add_shopping_cart</i></a>
                                    </li>
                                    <li class="collection-item avatar">
                                        <img src="images/images_039.jpg" alt="" class="circle">
                                        <span class="title">Jus de cacao</span>
                                        <p>Matinnée vs Midi<br>
                                            Pain sec + Lait = 3000 Ar<br>
                                            KSLMD :: 033 17 313 19
                                        </p>
                                        <a href="#!" class="secondary-content"><i class="material-icons">add_shopping_cart</i></a>
                                    </li>
                                    <li class="collection-item avatar">
                                        <img src="images/images_133.jpg" alt="" class="circle">
                                        <span class="title">Frute de Poullet</span>
                                        <p>Midi vs Soir<br>
                                            Prix= 4000 Ar<br>
                                            KSLMD :: 033 17 313 19
                                        </p>
                                        <a href="#!" class="secondary-content"><i class="material-icons">add_shopping_cart</i></a>
                                    </li>
                                    </li>
                                    <li class="collection-item avatar">
                                        <img src="images/images_163.jpg" alt="" class="circle">
                                        <span class="title">Viande pork</span>
                                        <p>paragraphe 1 <br>
                                            Plat + Boisson = 12000 Ar
                                        </p>
                                        <a href="#!" class="secondary-content"><i class="material-icons">add_shopping_cart</i></a>
                                    </li>
                                    <li class="collection-item avatar">
                                        <i class="material-icons circle green">insert_chart</i>
                                        <span class="title">Consommation mensuel</span>
                                        <p>
                                            <a ahref="#!">Ici</a>
                                        </p>
                                        <a href="#!" class="secondary-content"><i class="material-icons">insert_chart</i></a>
                                    </li>

                                </ul>

                            </div>


                            <script type="text/javascript" src="js/jquery.min.js"></script>
                            <script type="text/javascript" src="js/materialize.min.js"></script>
                        <jsp:include page="pied.jsp"></jsp:include>
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
