<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Java EE world</title>
<script type="text/javascript">
	function validate() {

		//var cents = Number(document.centsForm.userCents.value);
		var cents = document.centsForm.userCents.value;
		//		alert("1::"+Number.isInteger(cents));
		//alert("21::"+parseFloat(cents));
		//	alert ("3::"+Number.isInteger(parseFloat(cents)));
		if (cents == "" || cents == null) {
			alert("1");
			alert("Cannot leave blank");
			// document.getElementById(cents).innerHTML="Cannot leave blank";
			document.centsForm.userCents.focus();
			return false;

		} else if (isNaN(cents)) {
			alert("2");
			alert("Must be whole number (1, 2, 3, etc)");
			return false;
		
		}
		else {
			alert("3");
			var result = (cents- Math.floor(cents)) !== 0;
			alert (result);
			
			if (result)
				return false;
			else
				document.getElementById("cents").value=parseInt(cents);
		}
		alert("here");
		return true;
		/*else if(!(Number.isInteger(cents))){
			alert("Must be whole number (1, 2, 3, etc)")
			document.centsForm.userCents.focus();
			return false;
		} */

	}
</script>
</head>
<body>
	<h1>Coin Converter</h1>
	<form name="centsForm" onsubmit="return validate()"
		action="getCentsServlet" method="post">
		Enter the number of cents you have in a whole number: <input
			type="text" id="cents" name="userCents" size="10"> <input
			type="submit" value="Calculate Coins" />
	</form>
</body>
</html>