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
	




<script src="assets/js/form.js"></script>
<!-- </head> -->
<fieldset>
<body>
<form method="POST" action="userAddServlet">
  <div role="main" class="form-all" >
    <ul class="form-section page-section">
      <li id="cid_15" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-greek">
          <div class="header-text httal htvam">
            <br> </br>
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
              <input type="radio" class="form-radio" id="mlle" name="mlle" value="Mademoiselle">
              <label id="label_input_8_0" for="input_8_0"> Mademoiselle </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="mme" name="mme" value="Madame">
              <label id="label_input_8_1" for="input_8_1"> Madame </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="mr" name="mr" value="Monsieur">
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
              <input type="text" id="prenom" name="prenom" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_1 sublabel_1_first">
              <label class="form-sub-label" for="first_1" id="sublabel_1_first" style="min-height:13px" aria-hidden="false"> Prénom </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="nom" name="nom" class="form-textbox" size="15" value="" data-component="last" aria-labelledby="label_1 sublabel_1_last">
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
              <input type="radio" class="form-radio" id="h" name="h" value="Homme">
              <label id="label_input_10_0" for="input_10_0"> Homme </label>
            </span>
            <span class="form-radio-item" style="clear:left">
              <span class="dragger-item">
              </span>
              <input type="radio" class="form-radio" id="f" name="fe" value="Femme">
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
              <select name="mois" id="mois" class="form-dropdown" data-component="birthdate-month" aria-labelledby="label_6 sublabel_6_month">
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
              <select name="jour" id="jour" class="form-dropdown" data-component="birthdate-day" aria-labelledby="label_6 sublabel_6_day">
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
              <select name="annee" id="annee" class="form-dropdown" data-component="birthdate-year" aria-labelledby="label_6 sublabel_6_year">
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
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Numéro de rue </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="numrue" name="numrue" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_21">
        </div>
      </li> 
      <li class="form-line" data-type="control_textbox" id="id_19">
        <label class="form-label form-label-left form-label-auto" id="label_19" for="input_19"> Adresse </label>
        <div id="cid_19" class="form-input">
          <input type="text" id="adresse" name="adresse" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_19">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Code Postale </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="codePostale" name="codePostale" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_21">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_22">
        <label class="form-label form-label-left form-label-auto" id="label_22" for="input_22"> Ville </label>
        <div id="cid_22" class="form-input">
          <input type="text" id="ville" name="ville" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_22">
        </div>
     
      <li class="form-line" data-type="control_phone" id="id_4">
        <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4_area"> Numéro de téléphone </label>
        <div id="cid_4" class="form-input">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="areaCode">
              <input type="tel" id="Tel" name="Tel" class="form-textbox" value="" data-component="areaCode" aria-labelledby="label_4 sublabel_4_area">
              <span class="phone-separate" aria-hidden="true">
                &nbsp;-
              
            
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> Login </label>
        <div id="cid_3" class="form-input">
          <input type="email" id="login"  size="30" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_3">
        </div>
      </li>
      <li class="form-line" data-type="control_textbox" id="id_24">
        <label class="form-label form-label-left form-label-auto" id="label_24" for="input_24"> Mot de passe </label>
        <div id="cid_24" class="form-input">
          <input type="text" id="password" name="password" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_24">
        </div>
      </li>
      
      <li class="form-line" data-type="control_button" id="id_2">
        <div class="center">
				<button href="boitedialogue.jsp" style = "color:black"class="btn btn-action" type="submit">Ajouter un utilisateur</button>
			</div>
        </div>
     
      </form>
      </body>
      </fieldset>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="">
      </li>
    </ul>

  
 
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="211102783506346-211102783506346">
  
  <div class="formFooter-heightMask">
  </div>
 
<input type="hidden" name="event_id" value="1618996004846_211102783506346_E7bbYeE"></form><img id="event_tracking_image" src="https://events.jotform.com/form/211102783506346/?ref=https%253A%252F%252Feu.jotform.com%252F&amp;res=1366x768&amp;eventID=1618996004846_211102783506346_E7bbYeE&amp;loc=https%253A%252F%252Fform.jotform.com%252F211102783506346" alt="jftr" width="1" height="1" style="display: none;">
<!----------------------------------------------------------------------------------------------------------->
<!-- FOOTER -->
<!----------------------------------------------------------------------------------------------------------->
	<jsp:include page="footer.jsp">
            <jsp:param name="year" value="2010"/>
    </jsp:include>