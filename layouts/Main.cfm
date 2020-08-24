<cfoutput>
	<!doctype html>
	<html lang="en">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>Welcome to GuestBook</title>
		<meta name="description" content="GuestBook by Doga Ion">
		<meta name="author" content="Doga Ion">

<!---Base URL --->

<!---css --->
		<link rel="stylesheet" href="./vendor/css/bootstrap-grid.min.css">
		<link rel="stylesheet" href="./vendor/css/bootstrap-reboot.css">
		<link rel="stylesheet" href="./vendor/css/bootstrap.css">
		<link rel="stylesheet" href="./vendor/css/stylesheet.css">
			<!---<script language="javascript" src="vendor/js/validation.js?id=#createUuid()#"></script>--->
		<script type="text/javascript"  src="vendor/js/validation.js"></script>
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

	<div class="main_div container">
		<div class="row container custom_container">
			<div class="col-md-6 posts text-left">fsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf
				sdfsdfsdfsdfsdfsdfsdfsdfsdfsd
			</div>
			<div class="col-md-6 posts center">fsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfs
				dfsdfsdfsdfsdfsdfsdfsdfsdfsd
			</div>
		</div>
	</div>


	<div class="add_bar">Add your Note:

		<form name="Name" type="text" class="form_name" action=""
		onsubmit="return validate_name()" method="POST"><label>
			<p> Name: <input name="frm_name" autocomplete="off" required ></p>
		</label></form>

		<form name="email" type="email" class="form_name">
			<label>
				<p> Email: <input name="frm_email" autocomplete="off" required></p>
			</label>
		</form>

		<form name="text" type="text" class="form_name">
			<label>
				<p> Note: <input name="frm_text" autocomplete="off" required></p>
			</label>
		</form>

		<input type="submit" value="Send">
	</div>

<!---127.0.0.1:50145/layouts/Main.cfm--->


	</body>
	</html>
</cfoutput>
