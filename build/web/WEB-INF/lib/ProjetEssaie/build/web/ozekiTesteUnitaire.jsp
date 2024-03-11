<%-- 
    Document   : ozekiTesteUnitaire
    Created on : 28 août 2017, 21:55:08
    Author     : HP-Ularion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="card-panel cyan darken-2 z-depth-5 hoverable" style="position:relative;top:-800px !important; left:380px !important;width:300px !important;">
<div id="formulaire">
    <div class="card-content white-text">
    <form name="messenger">	
        Destinataire:
        <input  type="text" name="receiver" value="<%=request.getParameter("numero")%>"/>
        <br/><br/>
        Message :
        <textarea id="textarea1" name="msg"></textarea>
<!--type button tam imput ambane toy/-->
        <button class="btn waves-effect waves-light  cyan darken-1" type="submit" onclick="envoyerMessage('<%=request.getParameter("numero")%>');" value="envoyer"/>
   <i class="material-icons right">send</i>
    </form></div>
            <div class="card-content white-text">
         <i class="material-icons right">info</i>
                <p>Cette action ne peut pas être réaliser si vous n'avez de crédit sur votre mobile
                ,Si le problème persiste contacter votre operateur! ou Déconnecter votre serveur OZEKI puis réconnecter</p>
        
            </div>
</div>
<div id="notif"></div>
</div>
<script>
            function envoyerMessage() {
                var dest = document.messenger.receiver.value;
                var mes = document.messenger.msg.value;
                var donnees = 'receiver=' + dest + '&msg=' + mes;
                var reqAjax = new XMLHttpRequest();
                reqAjax.onreadystatechange = function() {
                    if (reqAjax.readyState == 4 && reqAjax.status == 200) {
                        document.getElementById("formulaire").innerHTML = reqAjax.responseText;
                        document.getElementById("notif").innerHTML = 'Message envoyé';
                        setTimeout("document.getElementById('notif').innerHTML='';", 4000);
                    }
                };
                reqAjax.open("POST", "envoyerSMS.jsp", true);
                reqAjax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
                reqAjax.send(donnees);
            }
</script>
