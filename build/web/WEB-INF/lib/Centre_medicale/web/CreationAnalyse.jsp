<%-- 
    Document   : CreationAnalyse
    Created on : 15 févr. 2018, 12:31:14
    Author     : Delex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp"></jsp:include>
        <script language="javascript">
            // code mampivoha y pop up kedekey
            function ouvrir() {
                fenetre = window.open("Vue_listeAnalyse1.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_recherche() {
                fenetre = window.open("Vue_listeAnalyse.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }
            function liste_avec_import_export() {
                fenetre = window.open("Vue_listeAnalyse.jsp", "fenetre",
                        "resizable=no,scrollbars=yes,location=no,width=1200,height=500,top=150,left=60")
            }

        </script>
        <body class="no-skin">


            <div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar">
                <script type="text/javascript">
                    try {
                        ace.settings.check('navbar', 'fixed')
                    } catch (e) {
                    }
                </script>

                <div class="navbar-container" id="navbar-container">
                    <div class="navbar-header pull-left">
                        <a href="index.html" class="navbar-brand">
                            <small>
                                <img src="assets/avatars/cmdt.png" width="150px !important">
                            </small>
                        </a>

                        <button class="pull-right navbar-toggle navbar-toggle-img collapsed" type="button" data-toggle="collapse" data-target=".navbar-buttons,.navbar-menu">
                            <span class="sr-only">Toggle user menu</span>

                            <img src="assets/avatars/user.jpg" alt="Jason's Photo" />
                        </button>

                        <button class="pull-right navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#sidebar">
                            <span class="sr-only">Toggle sidebar</span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <div class="navbar-buttons navbar-header pull-right  collapse navbar-collapse" role="navigation">
                        <ul class="nav ace-nav">
                            <li class="light-blue">
                                <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                                    <img class="nav-user-photo" src="assets/avatars/cmdt.png" alt="Profil du Centre" />
                                    <span class="user-info">
                                        Profil d'administrateur
                                    </span>

                                    <i class="ace-icon fa fa-caret-down"></i>
                                </a>

                                <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#">
                                            <i class="ace-icon fa fa-cog"></i>
                                            Paramettres
                                        </a>
                                    </li>

                                    <li>
                                        <a href="profile.html">
                                            <i class="ace-icon fa fa-user"></i>
                                            Profile
                                        </a>
                                    </li>

                                    <li class="divider"></li>

                                    <li>
                                        <a href="#">
                                            <i class="ace-icon fa fa-power-off"></i>
                                            Déconnexion
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div><!-- /.navbar-container -->
            </div>

            <div class="main-container" id="main-container">
                <script type="text/javascript">
                    try {
                        ace.settings.check('main-container', 'fixed')
                    } catch (e) {
                    }
                </script>

                <div id="sidebar" class="sidebar h-sidebar navbar-collapse collapse">

                    <script type="text/javascript">
                        try {
                            ace.settings.check('sidebar', 'fixed')
                        } catch (e) {
                        }
                    </script>
                    <ul class="nav nav-list">
                        <li class="active">
                            <a href="Form_accueil.jsp">
                                <i class="menu-icon fa fa-home"></i>
                                <span class="menu-text"></span>
                            </a>

                            <b class="arrow"></b>
                        </li>


                        <li class="">
                            <a href="#" class="dropdown-toggle">
                                <i class="menu-icon fa fa-database"></i>
                                <span class="menu-text"> Base de données</span>

                                <b class="arrow fa fa-angle-down"></b>
                            </a>

                            <b class="arrow"></b>

                            <ul class="submenu">
                            <li class="">
                                <a href="#" onclick="ouvrir();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Mise a jour
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="">
                                <a href="#" onclick="liste_avec_import_export();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Impression
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">
                                <a href="#" onclick="liste_avec_recherche();">
                                    <i class="menu-icon fa fa-eye"></i>
                                    Recherche
                                </a>

                                <b class="arrow"></b>
                            </li> 
                            </ul>
                        </li>

                        <li class="">
                            <a href="Form_accueil.jsp" class="dropdown-toggle">
                                <i class="menu-icon fa fa-eye"></i>
                                <span class="menu-text"> Vue enssembles</span>

                                <b class="arrow fa fa-angle-down"></b>
                            </a>

                            <b class="arrow"></b>

                            <ul class="submenu">
                                <li class="">
                                    <a href="Form_accueil.jsp">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Tous mes tâches
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="#" onclick="ouvrir();">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Liste Enregistrer
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="#" onclick="ouvrir();">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Dernière enregistrer
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="#">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Donnée statistique
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="#" onclick="liste_avec_import_export();">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Sauvergarde tous
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                            </ul>
                        </li>

                        <li class="">
                            <a href="Form_accueil.jsp">
                                <i class="menu-icon fa fa-list-alt"></i>
                                <span class="menu-text"> Site Map</span>
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                        </div>

                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'collapsed')
                            } catch (e) {
                            }
                        </script>
                </div>
            </div><br><br><br><br>
            <div class="fixed-action-btn toolbar hide-on-med-and-down" style="position:relative;top:-4px;height:70px; margin-left:58px;">
                <a class="btn-floating btn-large teal">
                    <i class="large material-icons">menu</i>
                </a>
                <ul>
                    <li class="waves-effect waves-light"><a href="#!" onclick="ouvrir();"><i class="material-icons">edit</i></a></li>
                    <li class="waves-effect waves-light"><a href="#!" onclick="liste_avec_recherche();"><i class="material-icons">search_list</i></a></li>
                    <li class="waves-effect waves-light"><a href="#!" onclick="liste_avec_import_export();"><i class="material-icons">import_export_list</i></a></li>
                    <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">insert_chart</i></a></li>
                </ul>
            </div>
            <div class="main-content">

                <div class="main-content-inner">

                    <div class="page-content">
                        <div class="ace-settings-container" id="ace-settings-container">
                            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                                <i class="ace-icon fa fa-cog bigger-130"></i>
                            </div>
                            <div class="ace-settings-box clearfix" id="ace-settings-box">
                                <div class="pull-left width-50">
                                    <div class="ace-settings-item">
                                        <div class="pull-left">
                                            <select id="skin-colorpicker" class="hide">
                                                <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                                <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                                <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                                <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                            </select>
                                        </div>
                                        <span>&nbsp; Choisir paramèttre</span>
                                    </div>
                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                        <label class="lbl" for="ace-settings-navbar"> Navigation fixée</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                        <label class="lbl" for="ace-settings-sidebar"> Navigation gauche (F)</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                        <label class="lbl" for="ace-settings-breadcrumbs"> Fixée Breadcrumbs</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                        <label class="lbl" for="ace-settings-rtl"> Droite à Gauche (G à D)</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                        <label class="lbl" for="ace-settings-add-container">
                                            Au niveau
                                            <b>de ma page</b>
                                        </label>
                                    </div>
                                </div><!-- /.pull-left -->

                                <div class="pull-left width-50">
                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                                        <label class="lbl" for="ace-settings-hover">Survol de la souris</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                                        <label class="lbl" for="ace-settings-compact"> Compaté le navigation</label>
                                    </div>

                                    <div class="ace-settings-item">
                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                                        <label class="lbl" for="ace-settings-highlight">Activer les elements</label>
                                    </div>
                                </div><!-- /.pull-left -->
                            </div><!-- /.ace-settings-box -->
                        </div><!-- /.ace-settings-container -->

                        <div class="page-header">
                            <h1>
                                Panneau d'administration
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right" ></i>
                                    <a href="#" onclick="javascript:retour_Form_accueil();">Accueil</a>
                                </small>
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    ANALYSE
                                </small>
                            </h1>
                        </div><!-- /.page-header -->
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">

                                    <div class="hidden-sm hidden-xs">
                                        <button type="button" class="sidebar-collapse btn btn-white btn-primary" data-target="#sidebar">
                                            <i class="ace-icon fa fa-angle-double-up" data-icon1="ace-icon fa fa-angle-double-up" data-icon2="ace-icon fa fa-angle-double-down"></i>
                                            Personnaliser!
                                        </button>
                                    </div> <!-- ///eto ty farae io menu io -->                  

                                    <h4 class="white-opaque">
                                        <i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer"></i>
                                        <a href="#modal-table" role="button"  data-toggle="modal">Ouvrir le formulaire des enregistrements Analyse!</a>
                                    </h4>                   
                                    <div id="modal-table" class="modal fade" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header no-padding teal lighten-1">
                                                    <div class="table-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                            <span class="white">&times;</span>
                                                        </button>
                                                        PANNEAU D'ENREGISTREMENT DES ANALYSES DU LA BORATOIRE
                                                    </div>
                                                </div>
                                                <div  class="modal-body no-padding">
                                                    <div class="widget-body">
                                                        <div class="widget-main">
                                                            <div style="position:relative;top:20px;">

                                                                <form action="serveletAnalyse.jsp" method="POST">
                                                                    <div class="input-field col s6" style="position:relative !important;width:200px !important;">
                                                                        <i class="material-icons prefix">payment</i>
                                                                        <label for="last_name"></label>
                                                                        <input type="text" name="anal_numFacture" placeholder="N° FACTURE"/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative !important;left:100px;width:200px !important;">
                                                                        <i class="material-icons prefix">local_hospital</i>
                                                                        <label for="last_name"></label>
                                                                        <input type="text" name="anal_idLaboratoire" placeholder="ID LABO"/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <i class="material-icons prefix">face</i>
                                                                        <label for="last_name"></label>
                                                                        <input type="text" name="anal_nomPrenom" placeholder="NOM et PRENOM"/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <i class="material-icons prefix">payment</i>
                                                                        <label for="last_name"></label>
                                                                        <input type="text" name="anal_rc" placeholder="DEMANDEUR/RC...."/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <i class="material-icons prefix">today</i>
                                                                        <label for="last_name"></label>                                           
                                                                        <input type="date" name="anal_date" placeholder="DATE" class="datepicker"/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <i class="material-icons prefix">payment</i>
                                                                        <label for="last_name"></label>                                           
                                                                        <input type="text" name="anal_priseCharge" placeholder="PRISE EN CHARGE"/>
                                                                    </div>
                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <i class="material-icons prefix">phone</i>
                                                                        <label for="last_name"></label>                                           
                                                                        <input type="text" name="anal_numTelpatient" placeholder="NUMERO TEL PATIENT"/>
                                                                    </div>   

                                                                    <div class="input-field col s6" style="position:relative;left:10px;width:100px;">
                                                                        <select name="anal_agePatient" class="form-control" id="form-field-select-1">
                                                                            <option value="">AGE</option>
                                                                            <option value="1">1</option>
                                                                            <option value="2">2</option>
                                                                            <option value="3">3</option>
                                                                            <option value="4">4</option>
                                                                            <option value="5">5</option>
                                                                            <option value="6">6</option>
                                                                            <option value="7">7</option>
                                                                            <option value="8">8</option>
                                                                            <option value="9">9</option>
                                                                            <option value="10">10</option>
                                                                            <option value="11">11</option>
                                                                            <option value="12">12</option>
                                                                            <option value="13">13</option>
                                                                            <option value="14">14</option>
                                                                            <option value="15">15</option>
                                                                            <option value="16">16</option>
                                                                            <option value="17">17</option>
                                                                            <option value="18">18</option>
                                                                            <option value="19">19</option>
                                                                            <option value="21">21</option>
                                                                            <option value="22">22</option>
                                                                            <option value="23">23</option>
                                                                            <option value="24">24</option>
                                                                            <option value="25">25</option>
                                                                            <option value="26">26</option>
                                                                            <option value="27">27</option>
                                                                            <option value="28">28</option>
                                                                            <option value="29">29</option>
                                                                            <option value="30">30</option>
                                                                            <option value="31">31</option>
                                                                            <option value="32">32</option>
                                                                            <option value="33">33</option>
                                                                            <option value="34">34</option>
                                                                            <option value="35">35</option>
                                                                            <option value="36">36</option>
                                                                            <option value="37">37</option>
                                                                            <option value="38">38</option>
                                                                            <option value="39">39</option>
                                                                            <option value="41">41</option>
                                                                            <option value="42">42</option>
                                                                            <option value="43">43</option>
                                                                            <option value="44">44</option>
                                                                            <option value="45">45</option>
                                                                            <option value="46">46</option>
                                                                            <option value="47">47</option>
                                                                            <option value="48">48</option>
                                                                            <option value="49">49</option>
                                                                            <option value="51">51</option>
                                                                            <option value="52">52</option>
                                                                            <option value="53">53</option>
                                                                            <option value="54">54</option>
                                                                            <option value="55">55</option>
                                                                            <option value="56">56</option>
                                                                            <option value="57">57</option>
                                                                            <option value="58">58</option>
                                                                            <option value="59">59</option>
                                                                            <option value="60">60</option>
                                                                            <option value="61">61</option>
                                                                            <option value="62">62</option>
                                                                            <option value="63">63</option>
                                                                            <option value="64">64</option>
                                                                            <option value="65">65</option>
                                                                            <option value="66">66</option>
                                                                            <option value="67">67</option>
                                                                            <option value="68">68</option>
                                                                            <option value="69">69</option>
                                                                            <option value="70">70</option>
                                                                            <option value="71">71</option>
                                                                            <option value="72">72</option>
                                                                            <option value="73">73</option>
                                                                            <option value="74">74</option>
                                                                            <option value="75">75</option>
                                                                            <option value="76">76</option>
                                                                            <option value="77">77</option>
                                                                            <option value="78">78</option>
                                                                            <option value="79">79</option>
                                                                            <option value="80">80</option>
                                                                            <option value="81">81</option>
                                                                            <option value="82">82</option>
                                                                            <option value="83">83</option>
                                                                            <option value="84">84</option>
                                                                            <option value="85">85</option>
                                                                            <option value="86">86</option>
                                                                            <option value="87">87</option>
                                                                            <option value="88">88</option>
                                                                            <option value="89">89</option>
                                                                            <option value="90">90</option>
                                                                            <option value="91">91</option>
                                                                            <option value="92">92</option>
                                                                            <option value="93">93</option>
                                                                            <option value="94">94</option>
                                                                            <option value="95">95</option>
                                                                            <option value="96">96</option>
                                                                            <option value="97">97</option>
                                                                            <option value="98">98</option>
                                                                            <option value="99">99</option>
                                                                            <option value="100">100</option>
                                                                            <option value="101">101</option>
                                                                            <option value="102">102</option>
                                                                            <option value="103">103</option>
                                                                            <option value="104">104</option>
                                                                            <option value="105">105</option>
                                                                            <option value="106">106</option>
                                                                            <option value="107">107</option>
                                                                            <option value="108">108</option>
                                                                            <option value="109">109</option>
                                                                            <option value="110">110</option>
                                                                            <option value="111">111</option>
                                                                            <option value="112">112</option>
                                                                            <option value="113">113</option>
                                                                            <option value="114">114</option>
                                                                            <option value="115">115</option>
                                                                            <option value="116">116</option>
                                                                            <option value="117">117</option>
                                                                            <option value="118">118</option>
                                                                            <option value="119">119</option>
                                                                            <option value="120">120</option>
                                                                            <option value="121">121</option>
                                                                            <option value="122">122</option>
                                                                        </select>
                                                                    </div>                                            

                                                                    <div class="input-field col s6" style="position:relative !important;left:125px !important;width:150px !important;">
                                                                        <select name="anal_moisCor" class="form-control" id="form-field-select-1">
                                                                            <option value="">MOIS</option>
                                                                            <option value="Janvier">Janvier</option>
                                                                            <option value="Fevrier">Fevrier</option>
                                                                            <option value="Mars">Mars</option>
                                                                            <option value="Avril">Avril</option>  
                                                                            <option value="May">May</option>  
                                                                            <option value="Juin">Juin</option>  
                                                                            <option value="Juillet">Juillet</option>  
                                                                            <option value="Aout">Aout</option>
                                                                            <option value="Septembre">Septembre</option>
                                                                            <option value="Octobre">Octobre</option> 
                                                                            <option value="Novembre">Novembre</option> 
                                                                            <option value="Décembre">Décembre</option>  
                                                                        </select>
                                                                    </div> 

                                                                    <div class="input-field col s6" style="position:relative !important;left:160px !important;width:100px !important;">
                                                                        <select name="anal_sexe" class="form-control" id="form-field-select-1">
                                                                            <option value="">SEX</option>
                                                                            <option value="Femme">Femme</option>
                                                                            <option value="Homme">Homme</option>
                                                                        </select>
                                                                    </div>               
                                                                    <div class="input-field col s6" style="position:relative !important;left:10px !important;width:300px !important;">
                                                                        <select name="res_parametres" class="form-control" id="form-field-select-1">
                                                                            <option value="">BIOCHIMIE SANGUIN</option>
                                                                            <option value="ACIDE URIQUE -> H :200-420">ACIDE URIQUE -> H :200-420</option>
                                                                            <option value="">F:140-357</option>
                                                                            <option value="AMYLASEMIE ->Plasma <86 Urine <470">AMYLASEMIE ->Plasma <86 Urine <470</option>
                                                                            <option value="BILIRUNINE.D/C -> <4,27">BILIRUNINE.D/C -> <4,27</option>
                                                                            <option value="BILIRUBINET -> <18,81">BILIRUBINET -> <18,81</option>
                                                                            <option value="CALCEMIE -> 2,20-2,55 (24 mois -12 ans)">CALCEMIE -> 2,20-2,55 (24 mois -12 ans)</option>
                                                                            <option value="">[:2,10-2,55 (12-18 ans)]</option>
                                                                            <option value="">[:2,15-2,50 (18-60 ans)]</option>
                                                                            <option value="CHOLESTEROL TOTAL -> <5,18">CHOLESTEROL TOTAL -> <5,18</option>
                                                                            <option value="CHOLESTEROL HDL ->H:0,90-1,42 et F: 1,16-1,68">CHOLESTEROL HDL ->H:0,90-1,42 et F: 1,16-1,68</option>
                                                                            <option value="CHOLESTEROL LDL ->2,6">CHOLESTEROL LDL ->2,6</option>
                                                                            <option value="CREATINEMIE ->H:62-115">CREATINEMIE ->H:62-115</option>
                                                                            <option value="G-GT ->H:10-50 et F:8-35">G-GT ->H:10-50 et F:8-35</option>
                                                                            <option value="GLYCEMIE ->N ne :2,2-3,3">GLYCEMIE ->N ne :2,2-3,3</option>
                                                                            <option value="">[ E : 3,3 - 6,11 ]</option>
                                                                            <option value="">[Adultes : 3,89 - 6,00]</option>
                                                                            <option value="GPT/ALAT ->H<40 F<32 E<25">GPT/ALAT ->H<40 F<32 E<25</option>
                                                                            <option value="GPO/ASAT ->H<38 F<32">GPO/ASAT ->H<38 F<32</option>
                                                                            <option value="ION SODUIM ->135-155">ION SODUIM ->135-155</option>
                                                                            <option value="ION POTASSUIM ->3,5-5,5">ION POTASSUIM ->3,5-5,5</option>
                                                                            <option value="ION CHLORE ->120-130 LCR et 95-115 PLASMA">ION CHLORE ->120-130 LCR et 95-115 PLASMA</option>
                                                                            <option value="MAGNESUIM ->0,66-1,03">MAGNESUIM ->0,66-1,03</option>
                                                                            <option value="PROTEINE TOTAL ->Grossesse 61-69">PROTEINE TOTAL ->Grossesse 61-69</option>
                                                                            <option value="">[N ne 53 - 89]</option>
                                                                            <option value="">[Adultes : 66 - 87]</option>
                                                                            <option value="PHOSPHOREMIE ->E:1,29-2,26">PHOSPHOREMIE ->E:1,29-2,26</option>
                                                                            <option value="">[A 0,80 - 1,61]</option>
                                                                            <option value="TRIGLYCERIDE ->0,40-1,82">TRIGLYCERIDE ->0,40-1,82</option>
                                                                            <option value="UREE ou AZOTEMIE ->A:2,7-6,6 E:1,1-9,0">UREE ou AZOTEMIE ->A:2,7-6,6 E:1,1-9,0</option>
                                                                        </select>
                                                                    </div>                                               

                                                                    <div class="input-field col s6" style="position:relative !important;width:210px !important;">
                                                                        <select name="res_unite" class="form-control" id="form-field-select-1">
                                                                            <option value="">UNITE</option>
                                                                            <option value="umol/l">µmol/l</option>
                                                                            <option value="U/I">U/I</option>
                                                                            <option value="mmol/l">mmol/l</option>
                                                                            <option value="g/l">g/l</option>
                                                                        </select>
                                                                    </div>                                             

                                                                    <div class="input-field col s6" style="position:relative;width:500px;">
                                                                        <p class="range-field">** ou * (Résultat)
                                                                            <span class="help-button" data-rel="popover" data-trigger="hover" data-placement="left" data-content="More details." title="Veuillez vous glisser la corde ci-dessous pour pouvoir enrégistrer le résultat d'analyse, n'oublier pas de mettre ** ou * après l'impression le résultat obtenu!">?</span>
                                                                            <input type="range" name="res_resultatObtenir" id="test5" min="0" max="100"/>
                                                                        </p> 
                                                                    </div><input type="text" name="" value="" readonly="readonly" />  
                                                                    <button class="btn waves-effect waves-light pull-right" type="submit" >ENREGISTRER
                                                                        <i class="material-icons right">send</i>
                                                                    </button>                                            
                                                                </form>




                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="modal-footer no-margin-top">
                                                    <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                                        <i class="ace-icon fa fa-times"></i>
                                                        Fermer
                                                    </button>
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
            <div class="fixed-action-btn vertocal">
                <a class="btn-floating btn-large teal">
                    <i class="large material-icons">group</i>
                </a>
                <ul>
                    <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de recherche multi option" href="Vue_listeAnalyse.jsp"><i class="material-icons">search</i></a></li>
                    <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste d'import et export d'option" href="Vue_listeAnalyse.jsp"><i class="material-icons">import_export</i></a></li>
                    <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de medecin version imprimmable" href="Vue_listeAnalyse.jsp"><i class="material-icons">print</i></a></li>
                    <li><a class="btn-floating teal tooltipped" data-position="left" data-delay="50" data-tooltip="Liste de mis à jour et sauvegarde" href="Vue_listeAnalyse1.jsp"><i class="material-icons">update</i></a></li>
                </ul>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
