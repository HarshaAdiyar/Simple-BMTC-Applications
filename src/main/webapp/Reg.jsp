<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Successful</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<!-- Custom CSS -->
	<style>
		
		.container {
			margin-top: 50px;
			text-align: center;
		}
		h1 {
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
      
    <nav class="navbar navbar-expand-lg navbar-dark shadow-lg"  >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbar"
        >
          <span class="navbar-toggler-icon" id="navlist" ></span>
        </button>
        <div class="collapse navbar-collapse " >
          <div class="navbar-nav"  >
            <img style="max-width: 2cm;max-height:2cm;" class="mt-2 ml-7 mb-3"  src="bmtc3.png">
            <div class="mt-3" style="height:1cm;padding-left:2cm;">
            <button style="width:5cm" class="btn btn-primary ml-5 mr-5" ><a  th:href="@{/home}" class="nav-item nav-link   text-white " id="home" href="/home" >ಮುಖ ಪುಟ</a></button>
            <button style="width:5cm" class="btn btn-primary ml-5 mr-5"><a th:href="@{/home}" class="nav-item nav-link text-white" id="logout" href="/home">ಲಾಗ್ಔಟ್</a></button>
            <button style="width:5cm" class="btn btn-primary ml-5 mr-5"><a th:href="@{/login}" class="nav-item nav-link text-white" id="login" href="/login">ಲಾಗಿನ್</a></button>
  
            <button style="width:5cm" class="btn btn-primary ml-5 mr-5" ><a th:href="@{/signup}" class="nav-item nav-link text-white" id="signin" href="/signup">ನೋಂದಣಿ</a></button>
          </div>
        </div>
        </div>
      </nav>
	<div class="container mt-5" style="padding-bottom: 2.2cm;padding-top:2.2cm">
		<h1 class="mt-3">ನೊಂದಣಿಯು ಯಶಸ್ವಿಯಾಗಿದೆ </h1>
		<h3 class="mt-3">ನಿಮ್ಮ ಖಾತೆಯು ಯಶಸ್ವಿಯಾಗಿ ರೂಪುಗೊಂಡಿದೆ. ಬೆಂಗಳೂರು ಮಹಾನಗರ ಸಾರಿಗೆ ಸಂಸ್ಥೆಯ ಸೇವೆಗಳಿಗಾಗಿ  ದಯವಿಟ್ಟು ಲಾಗಿನ್ ಆಗಿ. </h3>
        <button style="width:10cm;" class="btn btn-primary ml-5 mr-5 mt-5"><a th:href="@{/login}" class="nav-item nav-link text-white" id="login" href="/login">ಲಾಗಿನ್ ಗಾಗಿ ಈ ಗುಂಡಿಯನ್ನು ಒತ್ತಿ </a></button>
	</div>
	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNSLZ2E"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

        <footer class="bd-footer text-muted shadow-lg mt-5" >
            <div class="container-fluid bg-dark row" style="font-style: oblique;font-family:'Courier New', Courier, monospace;color:black;" >
            
              <p class="column mt-2" style="padding-left: 1cm;color:aliceblue">© ಬೆಂಮಸಾಸಂ,  ಕರ್ನಾಟಕ ಸರ್ಕಾರ,ಬೆಂಗಳೂರು  ಕರ್ನಾಟಕ</p>
              <p class="column mt-2" style="padding-left: 12cm;color:aliceblue">ಸಹಾಯ ವಾಣಿ ೦೮೦-೨೨೪೮೩೭೭೭ (080 22483777) </p>
            </div>
          </footer>
        
</body>
</html>
