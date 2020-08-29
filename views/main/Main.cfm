<cfquery datasource="hdstreet" name="rsAllMsgs">
    SELECT when_created, name, email, message
    FROM gbook_user
    ORDER BY when_created DESC
</cfquery>
<cfquery datasource="hdstreet" name="getId">
    SELECT (1) ID
    FROM gbook_user
</cfquery>
<!DOCTYPE html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Welcome to GuestBook</title>
    <meta name="description" content="GuestBook by Doga Ion">
    <meta name="author" content="Doga Ion">
<!---Base URL --->

<!---css --->
    <link rel="stylesheet" href="./vendor/css/bootstrap.css">
    <link rel="stylesheet" href="./vendor/css/stylesheet.css">

<!---<script language="javascript" src="vendor/js/validation.js?id=#createUuid()#"></script>--->
    <script type="text/javascript" src="vendor/js/validation.js"></script>
<!---<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--->
<!---<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>--->
</head>
<body>
<!---<cfset Note=EntityLoad("Note")/>;--->
<!---<cfdump var="#Note#" abort="true"/>--->
<div class="div_header container">
    <div style="font_custom ">GuestBook</div>
</div>
<div class="font_custom center">Hi there, this is GuestBook! You can add your note</div>

    <div class="container">
    <div class="row container custom_container">

    <!---<cfset editById=arrayNew(1)>--->
    <!---<cfset name=editById[1] />--->
    <!---<cfset email=editById[2] />--->
    <!---<cfset message=editById[3] />--->
    <!------>
    <!---<cfquery datasource="hdstreet" name="updateById">--->
    <!------>
    <!---UPDATE GBOOK_USER SET name=#name#, email=#email#, message=#message#--->
    <!---WHERE GBOOK_USER.id = #ID_USER#--->
    <!---</cfquery>--->



    <div class="col-md-12">
    <i about="Here is output of Notes">
    <table class="table">
        <cfoutput query="rsAllMsgs">
            <tr>
                <td>#rsAllMsgs.name#</td>
                <td>#rsAllMsgs.email#</td>
                <td>#rsAllMsgs.message#</td>
                <td>#rsAllMsgs.when_created#</td>
                <td class="btn-outline-dark"><a href="Main.cfm?edit=#getId.ID#">Edit</a></td>
            </tr>
        </cfoutput>
    </table>
    </i>
    </div>
    </div>
</div>
<div class="xx add_message_f center custom_container">
    <div>
        <tr>
            <td>
                <div class="col-2">
                    <cfform id="name" name="Name" type="text" class="form_name" action="actionPage.cfm"
                          onsubmit="return validate_name()" method="POST">
                        <label>
                            <p> Name: <input type="text" id="frm_name" name="frm_name" autocomplete="off"></p>
                        </label>
                    </cfform>
                </div>
            </td>
            <td>
                <div class="xx col-2">

                    <cfform id="email" name="email" type="email" class="form_name" action="actionPage.cfm"
                          >
                        <label>
                            <p> Email: <input type="text" id="frm_email" name="frm_email" autocomplete="off" required="required"></p>
                        </label>
                            <input id="submit" class="btn" type="submit" name="fld_submitUser" id="fld_submitUser" value="Submit" >  </cfform>
            <td>

            </td>
    </div>
</div>

<tr>
    <td>
        <div class="xx flex-lg-column-reverse"><h5> Add your Note: &nbsp; &nbsp; &nbsp; </h5>
            <div class="col-xc-2"></div>
            <cfform id="text" name="text" type="text" class="center" action="actionPage.cfm"
                    >

                <label>
			<textarea  type="text" id="frm_text" name="frm_text" required="required" autocomplete="off" cols="60">
			</textarea>
                </label>
            </cfform>
        </div>
    </td>
</tr>

<!---127.0.0.1:50145/layouts/Main.cfm--->


</body>
</html>

