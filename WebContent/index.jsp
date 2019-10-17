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
			// Check to see if valude is blank or null
			// alert("1"); // This is just for tracking
			alert("Cannot leave blank");
			document.centsForm.userCents.focus();
			return false;

		} else if (isNaN(cents)) {
			// Check to see if cents is NaN
			// alert("2"); // This is just for tracking
			alert("Must be whole number (1, 2, 3, etc)");
			return false;
		
		}
		else {
			// alert("3"); // This is just for tracking
			// Checks to see if cents is a float
			// If it is a float and it doesn't equal zero 
			// when this operation is run, then validation fails.
			// If the float does equal zero after this operation
			// runs, then validation passes.
			var result = (cents- Math.floor(cents)) !== 0;
			// alert (result); // This is just for tracking
			
			if (result)
				// if true
				return false;
			else
				document.getElementById("cents").value=parseInt(cents);
		}
		alert("here");
		return true;

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