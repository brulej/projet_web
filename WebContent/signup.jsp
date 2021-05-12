<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<title>Formulaire</title>


<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Inscription</title>


	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/stylesignup.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<!----------------------------------------------------------------------------------------------------------->
<!-- NAVBAR -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="navbar.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
	<!-- /.navbar --> 
	




<script type="text/javascript">
	JotForm.init(function(){
if (window.JotForm && JotForm.accessible) $('input_19').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_21').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_22').setAttribute('tabindex',0);
      setTimeout(function() {
          $('input_3').hint('ex: myname@example.com');
       }, 20);
if (window.JotForm && JotForm.accessible) $('input_24').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_25').setAttribute('tabindex',0);
	JotForm.newDefaultTheme = false;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
      JotForm.alterTexts({"alphabetic":"Ce champ ne peut contenir que des lettres.","alphanumeric":"Ce champ ne peut contenir que des lettres et des chiffres.","confirmClearForm":"Êtes-vous certain d'effacer le formulaire?","confirmEmail":"Email ne correspond pas","email":"Saisir une adresse courriel valide","generalError":"Il y a des erreurs dans le formulaire. Merci de les corriger avant de continuer.","generalPageError":"Il ya des erreurs sur cette page. S'il vous plaît corriger avant de continuer.","gradingScoreError":"Le score total devrais être moins ou égal à","incompleteFields":"Des champs obligatoires ne sont pas complétés. Veuillez les compléter.","inputCarretErrorA":"L'entrée ne doit pas être inférieure à la valeur minimale:","inputCarretErrorB":"L'entré de devrais pas être plus grande que la valeur maximum:","lessThan":"Votre score devrait être inférieur ou égal à ","maxDigitsError":"Les chiffres maximum autorisé sont ","maxSelectionsError":"Vous avez sélectionné le maximum autorisé.","minSelectionsError":"Le nombre minimum requis de sélections est","multipleFileUploads_emptyError":"{file} est vide, veuillez sélectionner à nouveau les fichiers sans elle.","multipleFileUploads_minSizeError":"{file} est trop petite, la taille de fichier minimale est {minSizeLimit}.","multipleFileUploads_onLeave":"Les fichiers ont été envoyé, si vous quittez maintenant l'envoi sera annulé.","multipleFileUploads_sizeError":"{file} est trop grand, la taille maximale d'un fichier est {sizeLimit}.","multipleFileUploads_typeError":"{file} a invalide extension. Seulement {extensions} sont autorisées.","numeric":"Ce champ ne peut contenir que des valeurs numériques","pastDatesDisallowed":"La date doit pas être dans le passé","pleaseWait":"S'il vous plaît patienter...","required":"Ce champs est requis.","requireEveryRow":"Chaque ligne est nécessaire.","requireOne":"Au moins un champ est requis","submissionLimit":"Désolé ! Une seule inscription est permise. Les propositions multiples sont désactivés pour ce formulaire.","uploadExtensions":"Vous ne pouvez uploader que les fichiers suivants :","uploadFilesize":"La taille du fichier ne peut pas dépasser :"});
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"nomEt1","qid":"1","text":"Nom et prenom","type":"control_fullname"},{"name":"soumettre","qid":"2","text":"Soumettre","type":"control_button"},{"name":"email3","qid":"3","text":"Email","type":"control_email"},{"name":"numeroDe4","qid":"4","text":"Numero de telephone","type":"control_phone"},null,{"name":"dateDe6","qid":"6","text":"Date de naissance","type":"control_birthdate"},null,{"name":"civilite","qid":"8","text":"Civilite","type":"control_radio"},null,{"name":"sexe","qid":"10","text":"Sexe","type":"control_radio"},null,null,null,null,{"name":"informationsPersonnelles","qid":"15","text":"Informations personnelles ","type":"control_head"},null,null,null,{"name":"adresse","qid":"19","text":"Adresse","type":"control_textbox"},null,{"name":"codePostale","qid":"21","text":"Code Postale","type":"control_textbox"},{"name":"ville","qid":"22","text":"Ville","type":"control_textbox"},{"name":"province","qid":"23","text":"Province","type":"control_dropdown"},{"description":"","name":"motDe","qid":"24","subLabel":"","text":"Mot de passe","type":"control_textbox"},{"description":"","name":"confirmezLe","qid":"25","subLabel":"","text":"Confirmez le mot de passe","type":"control_textbox"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"nomEt1","qid":"1","text":"Nom et prenom","type":"control_fullname"},{"name":"soumettre","qid":"2","text":"Soumettre","type":"control_button"},{"name":"email3","qid":"3","text":"Email","type":"control_email"},{"name":"numeroDe4","qid":"4","text":"Numero de telephone","type":"control_phone"},null,{"name":"dateDe6","qid":"6","text":"Date de naissance","type":"control_birthdate"},null,{"name":"civilite","qid":"8","text":"Civilite","type":"control_radio"},null,{"name":"sexe","qid":"10","text":"Sexe","type":"control_radio"},null,null,null,null,{"name":"informationsPersonnelles","qid":"15","text":"Informations personnelles ","type":"control_head"},null,null,null,{"name":"adresse","qid":"19","text":"Adresse","type":"control_textbox"},null,{"name":"codePostale","qid":"21","text":"Code Postale","type":"control_textbox"},{"name":"ville","qid":"22","text":"Ville","type":"control_textbox"},{"name":"province","qid":"23","text":"Province","type":"control_dropdown"},{"description":"","name":"motDe","qid":"24","subLabel":"","text":"Mot de passe","type":"control_textbox"},{"description":"","name":"confirmezLe","qid":"25","subLabel":"","text":"Confirmez le mot de passe","type":"control_textbox"}]);}, 20); 
<!-- </script> -->
<!-- </head> -->

  <div role="main" class="form-all" >
    <ul class="form-section page-section">
      <li id="cid_15" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-greek">
          <div class="header-text httal htvam">
            <br> </br>
            <br> </br> 
            <h2 id="header_15" class="form-header" data-component="header">
           
              Informations personnelles
            </h2>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_8">
        <label class="form-label form-label-left form-label-auto" id="label_8" for="input_8"> Civilité </label>
        <div id="cid_8" class="form-input">
          <div class="form-single-column" role="group" aria-labelledby="label_8" data-component="radio">
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_8_0" name="q8_civilite" value="Mademoiselle">
              <label id="label_input_8_0" for="input_8_0"> Mademoiselle </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_8_1" name="q8_civilite" value="Madame">
              <label id="label_input_8_1" for="input_8_1"> Madame </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_8_2" name="q8_civilite" value="Monsieur">
              <label id="label_input_8_2" for="input_8_2"> Monsieur </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_1">
        <label class="form-label form-label-left form-label-auto" id="label_1" for="first_1"> Nom et prénom </label>
        <div id="cid_1" class="form-input">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_1" name="q1_nomEt1[first]" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_1 sublabel_1_first">
              <label class="form-sub-label" for="first_1" id="sublabel_1_first" style="min-height:13px" aria-hidden="false"> Prénom </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_1" name="q1_nomEt1[last]" class="form-textbox" size="15" value="" data-component="last" aria-labelledby="label_1 sublabel_1_last">
              <label class="form-sub-label" for="last_1" id="sublabel_1_last" style="min-height:13px" aria-hidden="false"> Nom de famille </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_10">
        <label class="form-label form-label-left form-label-auto" id="label_10" for="input_10"> Sexe </label>
        <div id="cid_10" class="form-input">
          <div class="form-single-column" role="group" aria-labelledby="label_10" data-component="radio">
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_10_0" name="q10_sexe" value="Homme">
              <label id="label_input_10_0" for="input_10_0"> Homme </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="input_10_1" name="q10_sexe" value="Femme">
              <label id="label_input_10_1" for="input_10_1"> Femme </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_birthdate" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6"> Date de naissance </label>
        <div id="cid_6" class="form-input">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q6_dateDe6[month]" id="input_6_month" class="form-dropdown" data-component="birthdate-month" aria-labelledby="label_6 sublabel_6_month">
                <option>  </option>
                <option value="Janvier"> Janvier </option>
                <option value="Février"> Février </option>
                <option value="mars"> mars </option>
                <option value="Avril"> Avril </option>
                <option value="Mai"> Mai </option>
                <option value="juin"> juin </option>
                <option value="Juillet"> Juillet </option>
                <option value="Août"> Août </option>
                <option value="Septembre"> Septembre </option>
                <option value="Octobre"> Octobre </option>
                <option value="Novembre"> Novembre </option>
                <option value="Décembre"> Décembre </option>
              </select>
              <label class="form-sub-label" for="input_6_month" id="sublabel_6_month" style="min-height:13px" aria-hidden="false"> Mois </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q6_dateDe6[day]" id="input_6_day" class="form-dropdown" data-component="birthdate-day" aria-labelledby="label_6 sublabel_6_day">
                <option>  </option>
                <%
                for (int i =1; i <= 31;i++ ){%>
                	<option value="<%= i%>"> <%= i%> </option>
                <%}
                %>
                
                
              </select>
              <label class="form-sub-label" for="input_6_day" id="sublabel_6_day" style="min-height:13px" aria-hidden="false"> Jour </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top">
              <select name="q6_dateDe6[year]" id="input_6_year" class="form-dropdown" data-component="birthdate-year" aria-labelledby="label_6 sublabel_6_year">
                <option>  </option>
                
                <%
                for (int i =2021; i >= 1900;i-- ){%>
                	<option value="<%= i%>"> <%= i%> </option>

                <%}
                %>
                
              </select>
              <label class="form-sub-label" for="input_6_year" id="sublabel_6_year" style="min-height:13px" aria-hidden="false"> Année </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_19">
        <label class="form-label form-label-left form-label-auto" id="label_19" for="input_19"> Adresse </label>
        <div id="cid_19" class="form-input">
          <input type="text" id="input_19" name="q19_adresse" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_19">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Code Postale </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="input_21" name="q21_codePostale" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_21">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_22">
        <label class="form-label form-label-left form-label-auto" id="label_22" for="input_22"> Ville </label>
        <div id="cid_22" class="form-input">
          <input type="text" id="input_22" name="q22_ville" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_22">
        </div>
      </li>
      <li class="form-line" data-type="control_dropdown" id="id_23">
        <label class="form-label form-label-left form-label-auto" id="label_23" for="input_23"> Province </label>
        <div id="cid_23" class="form-input">
          <select class="form-dropdown" id="input_23" name="q23_province" style="width:150px" data-component="dropdown" aria-labelledby="label_23">
            <option value="">  </option>
            <option value="Brabant wallon"> Brabant wallon </option>
            <option value="commune à facilité"> commune à facilité </option>
            <option value="Bruxelles"> Bruxelles </option>
            <option value="Namur"> Namur </option>
            <option value="Hainaut"> Hainaut </option>
            <option value="Liège"> Liège </option>
            <option value="Luxembourg"> Luxembourg </option>
          </select>
        </div>
      </li>
      <li class="form-line" data-type="control_phone" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4_area"> Numéro de téléphone </label>
        <div id="cid_4" class="form-input">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="areaCode">
              <input type="tel" id="input_4_area" name="q4_numeroDe4[area]" class="form-textbox" value="" data-component="areaCode" aria-labelledby="label_4 sublabel_4_area">
              <span class="phone-separate" aria-hidden="true">
                &nbsp;-
              </span>
              <label class="form-sub-label" for="input_4_area" id="sublabel_4_area" style="min-height:13px" aria-hidden="false"> préfixe </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="phone">
              <input type="tel" id="input_4_phone" name="q4_numeroDe4[phone]" class="form-textbox" value="" data-component="phone" aria-labelledby="label_4 sublabel_4_phone">
              <label class="form-sub-label" for="input_4_phone" id="sublabel_4_phone" style="min-height:13px" aria-hidden="false"> Numéro de téléphone </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> Email </label>
        <div id="cid_3" class="form-input">
          <input type="email" id="input_3" name="q3_email3" class="form-textbox validate[Email]" size="30" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_3">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_24">
        <label class="form-label form-label-left form-label-auto" id="label_24" for="input_24"> Mot de passe </label>
        <div id="cid_24" class="form-input">
          <input type="text" id="input_24" name="q24_motDe" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_24">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_25">
        <label class="form-label form-label-left form-label-auto" id="label_25" for="input_25"> Confirmez le mot de passe </label>
        <div id="cid_25" class="form-input">
          <input type="text" id="input_25" name="q25_confirmezLe" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_25">
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="margin-left:156px" data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
            <a style = "color:black"class="btn btn-action" type="submit"> Soumettre </a>
             
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="">
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="211102783506346-211102783506346">
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='211102783506346'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "211102783506346-211102783506346";
}
  </script>
  <div class="formFooter-heightMask">
  </div>
 
<input type="hidden" name="event_id" value="1618996004846_211102783506346_E7bbYeE"></form><img id="event_tracking_image" src="https://events.jotform.com/form/211102783506346/?ref=https%253A%252F%252Feu.jotform.com%252F&amp;res=1366x768&amp;eventID=1618996004846_211102783506346_E7bbYeE&amp;loc=https%253A%252F%252Fform.jotform.com%252F211102783506346" alt="jftr" width="1" height="1" style="display: none;">
<!----------------------------------------------------------------------------------------------------------->
<!-- FOOTER -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="footer.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>
<script type="text/javascript">JotForm.forwardToEu=true;</script></body></html>