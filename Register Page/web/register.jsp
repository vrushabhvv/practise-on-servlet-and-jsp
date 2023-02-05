<%-- 
    Document   : register
    Created on : Jan 24, 2023, 12:00:01 AM
    Author     : Vrushabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--add material css library-->
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        
         <script>
            $(document).ready(funtion(){
                console.log("page is ready")
                
                $("#myform").on('submit',function (event){
                    event.preventDefault();
                    

                    var f=$(this).serialize();
                    
                    console.log(f);
                    
                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        console.log("success....")
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log("error.....")
                    }
                       
                    })
                })
            
            
            
            
        </script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin: 10px" class="center-align">Register here!!</h3>

                            <div class="form center-align">
                                <!-- creating form -->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user-name" placeholder="Enter user name"/>

                                    <input type="password" name="user-password" placeholder="Enter user password"/>
                                    <input type="email" name="user-email" placeholder="Enter user email"/>
                                    <button type="submit" class="btn #8e24aa purple darken-1">submit</button>





                                </form>


                            </div>
                            <div class="loader center-align" style="margin-top:10px;display:none">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h5>Please wait....</h5>
                            </div>

                        </div>

                    </div>

                </div>

            </div>




        </div>

        
        
      
    </body>
</html>
