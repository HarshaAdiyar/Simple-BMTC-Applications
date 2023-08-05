<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      crossorigin="anonymous"
    />
    <link type="text/css" rel="stylesheet" href="{{ url_for('static', filename='styles.css') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">

<style>
.mySlides {display:none;}
</style>
    <link rel="shortcut icon" href="{{ url_for('static', filename='round.png') }}">
    <title>BMTC</title>
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
<h1 class="mt-3" style="text-align: center;color:yellow" id="pes">ಕರ್ನಾಟಕ ಸರ್ಕಾರ</h1>
<h2 style="text-align: center;color:blue"id="pes">ಬೆಂಗಳೂರು ಮಹಾನಗರ ಸಾರಿಗೆ ಸಂಸ್ಥೆಗೆ ಸ್ವಾಗತ </h2>
<h2 style="text-align: center;color:red"id="pes"> ಕನ್ನಡಕ್ಕೆ ಕೈ ಎತ್ತು ನಿನ್ನ ಕೈ ಕಲ್ಪವೃಕ್ಷವಾಗುತ್ತದೆ </h2>

<div class="slideshow-container mt-5 ">
		<div class="mySlides">
			<img src="b1.png" style="height: 600px;width:1200px;padding-left:6.5cm;">
		</div>
		<div class="mySlides">
			<img src="b2.png" style="height: 600px;width:1200px;padding-left:6.5cm;">
		</div>
		<div class="mySlides">
			<img src="b5.png" style="height: 600px;width:1200px;padding-left:6.5cm;">
		</div>
		<div class="mySlides">
			<img src="b3.png" style="height: 600px;width:1200px;padding-left:6.5cm;">
		</div>
		<div class="mySlides">
			<img src="b4.png" style="height: 600px;width:1200px;padding-left:6.5cm;">
		</div>
	</div>
<script>
var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {slideIndex = 1}
			slides[slideIndex-1].style.display = "block";
			setTimeout(showSlides, 3000); // Change image every 3 seconds
		}
</script>
   
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    
    <script
      type="text/javascript"
      src="{{ url_for('static', filename='index.js') }}"
    ></script>
  
  <footer class="bd-footer text-muted shadow-lg mt-5" >
    <div class="container-fluid bg-dark row" style="font-style: oblique;font-family:'Courier New', Courier, monospace;color:black;" >
    
      <p class="column mt-2" style="padding-left: 1cm;color:aliceblue">© ಬೆಂಮಸಾಸಂ,  ಕರ್ನಾಟಕ ಸರ್ಕಾರ,ಬೆಂಗಳೂರು  ಕರ್ನಾಟಕ</p>
      <p class="column mt-2" style="padding-left: 12cm;color:aliceblue">ಸಹಾಯ ವಾಣಿ ೦೮೦-೨೨೪೮೩೭೭೭ (080 22483777) </p>
    </div>
  </footer>

  </body>
</html>
