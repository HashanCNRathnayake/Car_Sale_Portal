<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>
<style type="text/css">
    
.fw-bold{
	font-weight: 800;
} .fs-5{
	font-size: 15px;
}


  .bg-1 { 
  color: #FFFFFF;
  border-radius: 20px;
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("/images/back11.png");
  background-position: right top;
  overflow: hidden;    padding:50px;
    margin-top: 50px;
    margin-bottom: 50px;
    height: 100%;
  }

</style>

</head>

<body>


	<%@ include file="header.jsp"%>

<div class="">

	<!-- First Container -->
	<div class="container_5 bg-1 ">
		<div class="row">

			<div class="col-md-6">
					<h1 class="text-danger fw-bold text-center">Register Here !</h1>
			</div>

			<div class="col-md-6 text-center bg_5">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="cus_login_page"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="username">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				
				<input type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>

			</div>



		</div>

	</div>

</div>



	<%@ include file="footer.jsp"%>

</body>
</html>
