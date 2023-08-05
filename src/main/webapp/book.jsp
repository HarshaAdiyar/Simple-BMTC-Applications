<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.example.demo.model.Fair" %>
    <%@ page import="java.util.List" %>


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
      <script>
        function showPrice(index) {
          var priceDiv = document.getElementById("price-" + index);
          priceDiv.style.display = "block";
        }
        
        
        </script>
			<div class="shadow-lg p-3 bg-body-tertiary rounded row-md-6 mt-3" style="text-align: center;">
				<h4 style="text-align: center;">ದರ ವೀಕ್ಷಣಾ  ಅಂಕಣ </h4>
				<button style="width:5cm" class="btn btn-primary mt-3 mb-3"><a th:href="@{/fare}" class="nav-item nav-link text-white" id="login" href="/fare">ಪಟ್ಟಿ</a></button>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>ಈ ಬಸ್ ನಿಲ್ದಾಣದಿಂದ</th>
							<th>ಈ ಬಸ್ ನಿಲ್ದಾಣದವರೆಗೆ :</th>
              <th>ದರ</th>
							<th>ಪ್ರಯಾಣದ ದರ ತಿಳಿ </th>
             
						</tr>
					</thead>
					<tbody>
                        <% 
                        List<Fair> fairs = (List<Fair>) request.getAttribute("fairs");
                          if (fairs != null) {
                        for (int i = 0; i < fairs.size(); i++) {
                            Fair fair = fairs.get(i);
                        
                    %>
                        <tr>
                            <td><%= fair.getSource() %></td>
                            <td><%= fair.getDestination() %></td>
                            <td>
                              <div id="price-<%=i%>" style="display:none;"><%= fair.getPrice() %></div>                            <td>
                              <form id="price-form" method="post">
                                <button type="button" class="btn btn-primary" onclick="showPrice(<%=i%>)">ಪ್ರಯಾಣದ ದರ ತಿಳಿ</button>
                              </form>
                            </td>
                             
                          
                          
                           
                          
                        </tr>
                    <% 
                        }}
                    %>
                    

					</tbody>
				</table>
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
