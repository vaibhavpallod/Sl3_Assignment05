
<!DOCTYPE html>
<html>

<head>

<meta name="viewport">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
	background-color: #555;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
}

/* The popup form - hidden by default */
.form-popup {
	display: block;
	margin: 0 auto;
	border: 3px solid #f1f1f1;
	justify-items: center;
}

/* Add styles to the form container */
.form-container {
	display: block;
	max-width: 300px;
	padding: 10px;
	margin: 0 auto;
	background-color: white;
	justify-content: center;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
</style>
</head>

<body>
	<script type="text/javascript">
/* session.setAttribute("WrongCredentials", null); */
sessionStorage.clear();

</script>

	<!-- <button class="open-button" onclick="openForm()">Open Form</button> -->

	<div class="form-popup" id="myForm">
		<form action="Login" class="form-container">
			<h1>Login</h1>

			<label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>
			<p
				style="color: red; margin: 0; text-align: center; font-size: 17px; margin-bottom: 10px;">
				<%
					String msg = "&nbsp;";
					if (session.getAttribute("WrongCredentials") != null) {
						msg = "** Incorrect ID or Password !!";
					}
			
				%>
				<%=msg%>
				
		
			</p>
			<p style="color: red; margin: 0; text-align: center; font-size: 17px; margin-bottom: 10px;">
			<%
			String msg2 = "&nbsp;";
    		if(session.getAttribute("WrongEmail")!=null){
    			msg2="** Incorrect Email !!";
    		}
    		

			%>
			
			<%=msg2 %>
			
			
			</p>
			
			<p style="color: red; margin: 0; text-align: center; font-size: 17px; margin-bottom: 10px;">
			
			
							<%
							String msg3=  "&nbsp;";
							if(session.getAttribute("ValidLogin") !=null){
								msg3 = "Valid Login";		
							}
							%>
							<%=msg3 %>
			
			</p>
			<button type="submit" class="btn">Login</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>

	<script>
        // function openForm() {
        //   document.getElementById("myForm").style.display = "block";
        // }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
          	close();
          <%--   <%
            if (request.getSession(false)==null){
            	response.sendRedirect("login.jsp");
            	return;
            }
            %> --%>
        }
    </script>

</body>

</html>


<!-- 
* window.onload = function(){
    if(window.location.href == sessionStorage.getItem("origin")){
        sessionStorage.clear();
    }
} */
/* sessionStorage.clear(); */
 -->