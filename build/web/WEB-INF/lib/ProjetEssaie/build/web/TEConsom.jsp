
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script language="JavaScript">
            //CONTROLE TOUS LE VIDE
            function ControllechampVide1(champ) {
                if (champ == "") {
                    confirm("Le numéro consommation est vide!");

                }
            }
            function ControllechampVide2(champ) {
                if (champ == "") {
                    confirm("Completez le prix unitaire svp!!!");
                }
            }
            function ControllechampVide3(champ) {
                if (champ == "") {
                    confirm("Veuillez completez le champ quantité svp!!");
                }
            }
            function ControllechampVide4(champ) {
                if (champ == "") {
                    confirm("Le champ libellé est vide!");
                }
            }
            
            //CONTROLE NUMERO
            function TesterNumero(nombre) {
                if (isNaN(nombre) == true) {
                    alert("Le numéro  doit être en nombre svp!");
                }
            }
            function TesteNume(nombre) {
                if (isNaN(nombre) == true) {
                    alert("La quantité  doit être en chiffre svp!");
                }
            }
            function TesteN(nombre) {
                if (isNaN(nombre) == true) {
                    alert("Le prix unitaire  doit être en chiffre svp!");
                }
            }
            
            function Controlerqte(form1) {               
                TesteNume(document.form1.qte_init.value);
                document.form1.qte_init.value.setFocus(true);
            }
             
            function ControlerNumCons(form1) {
                ControllechampVide1(document.form1.numconsom.value);
                TesterNumero(document.form1.numconsom.value);
                document.form1.numconsom.value.setFocus(true);
            }

            //CONTROLE CHAMP LIBELLE
            function ControlerLibelle(form1) {
                ControllechampVide4(document.form1.libelle.value);
                document.form1.libelle.value.setFocus(true);
            }

            //CONTROLE PU
            function ControlerPU(form1) {
                ControllechampVide2(document.form1.prix_unit.value);                
                document.form1.prix_unit.value.setFocus(true);
            }
            function Controlpri(form1){
                TesteN(document.form1.prix_unit.value);
                document.form1.prix_unit.value.setFocus(true);
            }
            
            //CONTROLE QTE
            
            function ControlerQTE(form1) {
                ControllechampVide3(document.form1.qte_init.value);               
                document.form1.qte_init.value.setFocus(true);
            }
            function accueil(){
                document.location="MenuPPALE.jsp";
            }
        </script>
<html>
<!--
    <style type="text/css">

.Style1 {
	font-size: 18px;
	font-weight: bold;
}

</style>
-->
    <jsp:include page="entete.jsp"></jsp:include>
                    <div id="menu_c">
                        <p>Vous &ecirc;tes ici : <a href="javascript:accueil()">Accueil</a> > Consommation </p>
                        <center><h1 class="Style11 Style7 Style1">Nouvelle consommation</h1>
                      </center>
                        <br><div id="formtext">
                        <div class="card-panel"><a class="btn-floating halfway-fab waves-effect waves-light blue-grey"><i class="material-icons">add</i></a>
                        <table width="466" height="298" border="0" align="center">
                            <form name="form1" method="post" action="insert_consom.jsp">
                                <tr>
                                    <td width="100" height="58"><div align="left"> Numéro :</div></td>
                                        <td width="300"><div class="input-field col s6"><div align="center">
                                        <div class="input-field col s6">
                                        <i class="material-icons prefix">mode-edit</i>
                                            <label for="last_name">Consomations</label>
                                                <input type="tel" name="numconsom" id="numconsom" size="42" length="10" height="25" onBlur="ControlerNumCons(form1)" required/>
                                            </label>

                                        </div>
                                         </div></td>
                                </tr>
                                <tr>
                                    
                                    <td height="57"><div align="left">Libellé :</div></td>
                                    <td width="300">
                                     <div align="center">
                                     <div class="input-field col s6">
                                         <i class="material-icons prefix">message</i>
                                            <label for="last_name">Consomation</label>
                                            <input type="tel" name="libelle" id="libelle" size="42" height="25" length="10" onBlur="ControlerLibelle(form1)" required/>
                                        </div></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="63"><div align="left">Quantité initiale :</div></td>
                                <td width="300"><div align="center">
                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">pie-chart</i>
                                            <label for="last_name">Consomation</label>
                                                <input type="tel" name="qte_init" id="qte_init" size="42" length="10" onKeyUp="Controlerqte(form1)" onBlur="ControlerQTE(form1)" required/>
                                             </label>

                                </div></div></td>
                                </tr>
                                <tr>
                                    <td height="60"><div align="left">Prix unitaire :</div></td>
                                    <td><div align="center">

                                           <div class="input-field col s6">
                                           <i class="material-icons prefix">pie-chart</i>
                                            <label for="last_name">Consomation</label>
                                                <input type="tel" name="prix_unit" id="prix_unit" size="42" length="10" onKeyUp="Controlpri(form1)" onBlur="ControlerPU(form1)" required/>
                                            </label>

                                        </div></td>
                                </tr>
      <tr>
                    <td>&nbsp;</td>
                    <td><div id="formbouton">
                        <!--label>
                        <input type="submit" name="ajouter" id="ajouter" value="Ajouter"/>
                        </label>
                        <label--> 
                        
                        
                        <!--
                        jereo ity code ambanyity mah gaga anah fa kay azo atao koa ny mampiasa input sous forme bouton kay
                        izay indrindra no nahatonga anah tsy hampiasa io code ambony io
                        -->
                        <label>
                        <button class="btn waves-effect waves-light  teal lighten-3" type="submit" name="ajouter">Ajouter
                          <i class="material-icons right">send</i>
                        </button>
                        </label> 
                        <!--
                        jereo ity code ambanyity mah gaga anah fa kay azo atao koa ny mampiasa input sous forme bouton kay
                        izay indrindra no nahatonga anah tsy hampiasa le code farany ambany io
                        -->
                        <label>
                        <button class="btn waves-effect waves-light red lighten-4" type="reset" name="annuler">Annuler
                          <i class="material-icons right">cancel</i>
                        </button>
                        </label> 
                        
                                                
                        <!--label>
                        <input type="reset" name="annuler" id="annuler" value="Annuler"/>
                        </label-->
                        
                        
                    </div></td>
                  </tr>
                          </form>
                        </table>
                    </div>
                  </div>
                </div>
                
            <script type="text/javascript" src="js-materialize/js/jquery.min.js"></script>
            <script type="text/javascript" src="js-materialize/js/materialize.min.js"></script>
            <jsp:include page="pied.jsp"></jsp:include>
    </body>
</html>
