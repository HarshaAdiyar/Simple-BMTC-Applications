
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html  xmlns:th="https://thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>BMTC</title>
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
          <button style="width:5cm" class="btn btn-primary ml-5 mr-5" ><a  th:href="@{/home}" class="nav-item nav-link   text-white " id="home" href="/home">ಮುಖ ಪುಟ</a></button>
          <button style="width:5cm" class="btn btn-primary ml-5 mr-5"><a th:href="@{/home}" class="nav-item nav-link text-white" id="logout" href="/home">ಲಾಗ್ಔಟ್</a></button>
          <button style="width:5cm" class="btn btn-primary ml-5 mr-5"><a th:href="@{/login}" class="nav-item nav-link text-white" id="login" href="/login">ಲಾಗಿನ್</a></button>

          <button style="width:5cm" class="btn btn-primary ml-5 mr-5" ><a th:href="@{/signup}" class="nav-item nav-link text-white" id="signin" href="/signup">ನೋಂದಣಿ</a></button>
        </div>
      </div>
      </div>
    </nav>
<div class="mt-5" >

<form method="POST" action="addPass" >
<div class="container mt-5 shadow-lg mb-3" id="form11" >
    <div style="padding-left: 0.5cm;">
  <img class="mt-2 ml-5 mb-3" style="max-block-size: 3cm;padding-left:2.5cm" src="bmtc4.png">
   <h2 style="text-align: center;">ಪ್ರಯಾಣಿಕರ ನೋಂದಣಿ</h2>
     <form class="form-floating mt-5 mb-5" method="post">
      <div class="form-floating mt-3 mb-3">
        <label for="usr" class="mb-2">ಮೊಬೈಲ್/ದೂರವಾಣಿ ಸಂಖ್ಯೆ</label>
     <input type="text" class="form-control" id="usr" style="width: 10cm;" name="mobile" placeholder="ದೂರವಾಣಿ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ" pattern="PES[1-2]UG[19-30]CS[1-999]$" required>
     
   </div>
   
    <div class="form-floating mt-3 mb-3">
        <label for="pwd">ಪಾಸ್ವರ್ಡ್</label>
     <input  type="password" class="form-control" id="myInput" name="password" placeholder="ಪಾಸ್ವರ್ಡ್ ನಮೂದಿಸಿ" style="width: 10cm;" name="pswd_sign" required pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$">
     <input type="checkbox" class="form-check-label mt-2" onclick="myFunction()">  ಪಾಸ್ವರ್ಡ್ ತೋರಿಸು
   </div>
   
       
       <button type="submit" class="btn btn-primary mb-5 " style="width: 10cm;">ನೋಂದಣಿ</button>
     </form>
     <!-- <h4 style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Note:</h4>
     <h6 style="align-items: center;font-family:Georgia, 'Times New Roman', Times, serif">Password Should be alphanumeric with atleast one special character</h6>
    <h6 style="align-items: center;font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Password  should be more than 5 characters</h6>
   </div> -->
   </div>
   </form>
  </div>
   <!-- <script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script> -->
<script th:if="${showRegistrationSuccessModal}">
  $('#registrationSuccessModal').modal('show');
</script>

<script>
  <!-- Add this code just before the closing body tag -->

  function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
</script>
<style>#form11{
  max-width: 12cm; 
  
  
}</style>

  <footer class="bd-footer text-muted shadow-lg mt-5" >
    <div class="container-fluid bg-dark row" style="font-style: oblique;font-family:'Courier New', Courier, monospace;color:black;" >
    
      <p class="column mt-2" style="padding-left: 1cm;color:aliceblue">© ಬೆಂಮಸಾಸಂ,  ಕರ್ನಾಟಕ ಸರ್ಕಾರ,ಬೆಂಗಳೂರು  ಕರ್ನಾಟಕ</p>
      <p class="column mt-2" style="padding-left: 12cm;color:aliceblue">ಸಹಾಯ ವಾಣಿ ೦೮೦-೨೨೪೮೩೭೭೭ (080 22483777) </p>
    </div>
  </footer>

</body>
</html>