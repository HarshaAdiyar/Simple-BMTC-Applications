<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>BMTC</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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
	<div class="container row mt-3" style="padding-left:39%;text-align: center;">
		
		
	
            <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded mt-5 row" style="padding-right:6cm;width:12cm;">
          
			<div style="padding-left: 2cm;">
				<form action="/addfair" method="post">
					<img class="mt-2 ml-5 mb-3" style="max-block-size: 3cm;padding-right: 0.5cm;" src="bmtc4.png">

                    <h2 style="text-align: centre;">ದರ ನಿಗದಿ ಅಂಕಣ </h2>
					<div class="form-group">
						<label for="source">ಈ ಬಸ್ ನಿಲ್ದಾಣದಿಂದ :</label>
						<input type="text" class="form-control" id="source" name="source" required>
					</div>
					<div class="form-group">
						<label for="destination">ಈ ಬಸ್ ನಿಲ್ದಾಣದವರೆಗೆ :</label>
						<input type="text" class="form-control" id="destination" name="destination" required>
					</div>
					<div class="form-group">
						<label for="fare">ದರ: </label>
						<input type="text" class="form-control" id="fare" name="price" required>
					</div>
					<button type="submit" class="btn btn-primary">ದರ ಸೇರಿಸು </button>
				</form>
			</div></div>
			<div class="row-md-6 mt-3" style="padding-right:6cm">
				<h4 style="text-align: center;">ದರ ಪರಿಷ್ಕರಣೆ ಅಂಕಣಕ್ಕೆ ದಾರಿ </h4>
				<button style="width:5cm" class="btn btn-primary mt-3 mr-5"><a th:href="@{/disp}" class="nav-item nav-link text-white" id="login" href="/disp">ಪಟ್ಟಿ</a></button>

				
			</div>
		
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <footer class="bd-footer text-muted shadow-lg mt-5" >
        <div class="container-fluid bg-dark row" style="font-style: oblique;font-family:'Courier New', Courier, monospace;color:black;" >
        
          <p class="column mt-2" style="padding-left: 1cm;color:aliceblue">© ಬೆಂಮಸಾಸಂ,  ಕರ್ನಾಟಕ ಸರ್ಕಾರ,ಬೆಂಗಳೂರು  ಕರ್ನಾಟಕ</p>
          <p class="column mt-2" style="padding-left: 12cm;color:aliceblue">ಸಹಾಯ ವಾಣಿ ೦೮೦-೨೨೪೮೩೭೭೭ (080 22483777) </p>
        </div>
      </footer>
</body>
</html>
