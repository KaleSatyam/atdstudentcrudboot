<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Required meta tags-->
     
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Title Page-->
    <title>update student</title>

  
</head>

<style>
.form-group{
    width: auto;
    margin: 0px 500px 0px 500px;
    }
 </style>
<body>

    <div class="container-fluid text-center">
                <div class="text-center " >
                    <h2 class="title">Edit Details</h2>
                      <button hidden="" class="btn btn--radius-2 btn--blue" value="${student.STUDENT_NO}">${student.STUDENT_NO}</button>
                    <form   action="${pageContext.request.contextPath}/submit"	 method="POST">
             	
             			<input hidden  type="text" value="${student.STUDENT_NO }" name="Id">
             			
             			
                        <div class="  col-5 form-group" >
                             <label class="label ">Student Name</label>
                                <div class="input-group">
                                   
                                    <input class="form-control" type="text" name="STUDENT_NAME" value="${student.STUDENT_NAME }">
                                
                            </div>
                          </div>
                        
                         <div class="col-5 form-group" >
                          <label class="label">Student joining_date</label>
                                <div class="input-group">
                                   
                                    <input class="form-control"  type="date" name="STUDENT_DOJ" value="${student.STUDENT_DOJ}">
                                </div>
                            </div>
                            
                            
                             <div class="col-5 form-group">
                              <label class="label">Student date_of_birth  </label>
                                <div class="input-group">
                                   
                                    <input class="form-control"  type="date" name="STUDENT_DOB" value="${student.STUDENT_DOB }">
                                </div>
                            </div>
                            
                        <div class="pt-5  pb-5 text-center">
                            <button class="btn  btn-primary " type="submit">Submit</button>
                       </div>
                       
                    </form>
                </div>
         
             <a href = "${pageContext.request.contextPath}/viewprod" class = "btn btn-info btn-outline-primary" role = "button">View Students </a>
          
          </div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
<!-- end document-->