
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login For Good</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-2 mb-4">
  <div class="row justify-content-md-center">
    <div class="col-sm-4 border border-primary shadow rounded pt-2">
      <div class="text-center"><img src="https://placehold.it/80x80" class="rounded-circle border p-1"></div>
      <div class="col-sm-12">
        <form method="post" id="singnupFrom" onSubmit="return validation();">
          <div class="form-group">
            <label class="font-weight-bold">Email</label>
            <div class="input-group">
              <input type="email" name="email" id="email" class="form-control" placeholder="Enter valid email">
              <div class="input-group-append"><button type="button" class="btn btn-primary" onClick="return emailCheck();"><i class="fa fa-envelope"></i></button></div>
            </div>
          </div>
          <div id="next-form" class="collapse">
            <div class="form-group">
              <label class="font-weight-bold">User Name <small class="text-danger"><em>This will be your login name!</em></small></label>
              <input type="text" name="username" id="username" class="form-control" placeholder="Choose your user name">
            </div>
            <div class="form-group">
              <label class="font-weight-bold">Phone #</label>
              <input type="tel" name="phone" id="phone" class="tel form-control" placeholder="(000)-000-0000" x-autocompletetype="tel">
            </div>
            <div class="form-group">
              <label class="font-weight-bold">Password</label>
              <input type="password" name="password" id="password" class="form-control" placeholder="***********">
            </div>
            <div class="form-group">
              <label class="font-weight-bold">Confirm Password</label>
              <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="***********">
              <em id="cp"></em>
            </div>
            <div class="form-group">
              <label><input type="checkbox" name="condition" id="condition"> I agree with the <a href="javascript:;">Terms & Conditions</a> for Registration.</label>
            </div>
            <div class="form-group">
                    <div class="g-recaptcha" data-sitekey="6LeXKIkUAAAAAJrVaP2rbXY7r8uWLr13YX3X_c3r"></div>
                </div>
            <div class="form-group">
              <input type="submit" name="submit" value="Sign Up" class="btn btn-block btn-danger">
            </div>
          </div>
          <!--/.next-form-->
        </form>
      </div>
    </div>
  </div>
</div>

<script>
    function emailCheck(){
        if($("#email").val()==""){
            $("#email").addClass('is-invalid');
            return false;
        }else{
            var regMail     =   /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
            if(regMail.test($("#email").val()) == false){
                $("#email").addClass('is-invalid');
                return false;
            }else{
                $("#email").removeClass('is-invalid');
                $('#next-form').collapse('show');
            }
 
        }
    }
    function validation(){
        if($("#username, #phone, #password, #cpassword").val()==""){
            $("#username, #phone, #password, #cpassword").addClass('is-invalid');
            return false;
        }else{
            $("#username, #phone, #password, #cpassword").removeClass('is-invalid');
        }
         
        if($("#password").val()!=$("#cpassword").val()){
            $("#cpassword").addClass('is-invalid');
            $("#cp").html('<span class="text-danger">Password and confirm password not matched!</span>');
            return false;
        }
    }
    $(document).ready(function(e) {
        $("#username").on("keyup",function(){
            if($("#username").val()==""){
                $("#username").addClass('is-invalid');
                return false;
            }else{
                $("#username").removeClass('is-invalid');
            }
        });
        $("#phone").on("keyup",function(){
            if($("#phone").val()==""){
                $("#phone").addClass('is-invalid');
                return false;
            }else{
                $("#phone").removeClass('is-invalid');
            }
        });
        $("#password").on("keyup",function(){
            if($("#password").val()==""){
                $("#password").addClass('is-invalid');
                return false;
            }else{
                $("#password").removeClass('is-invalid');
            }
        });
        $("#cpassword").on("keyup",function(){
            if($("#cpassword").val()==""){
                $("#cpassword").addClass('is-invalid');
                return false;
            }else{
                $("#cpassword").removeClass('is-invalid');
            }
        });
    });
</script>
</body>
</html>