<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <title>Login</title>
  <link rel="stylesheet" href="Login.css">
  <style>
    html{
      height: 100%;
    }

    body{
      margin: 0;
      padding: 0;
      font-family: sans-serif;
      background: linear-gradient(#141e30, #243b55);
    }
  </style>
</head>
<body>
  <!-- <form action=""> -->
    <div class="login-box">
      <h2>Login</h2>
      <form action="">
        <div class="user-box">
          <input type="text" name="user" required="">
          <label for="user" class="login">Username</label>
          <label class="user-error"></label>
        </div>
        <div class="user-box">
          <input type="password" name="pass" required="">
          <label for="pass" class="login">Password</label>
          <label class="pass-error"></label>
          <small><a href="register.php" class="text-dark">Belum Punya Akun ? Buat Akun Anda !</a></small>
          <a href="" class="submit">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Submit
          </a>
        </div>
      </form>
    </div>
  <!-- </form> -->
  <script>
    $(document).ready(function(){
      $('.submit').click(function(e){
        e.preventDefault();
        var username = $("input[name='user']").val();
        var password = $("input[name='pass']").val();

        if(!checkUsername() || !checkPassword()){
          return;
        }

        function checkUsername(){
          if(username == ''){
            $(".user-error").text("Username tidak boleh kosong.").show();
            $("input[name='user']").css("border-bottom", "1px solid red");
            return false;
          }else{
            $(".user-error").hide();
            $("input[name='user']").css("border-bottom", "1px solid #fff");
            return true;
          }
        }
        function checkPassword(){
          if(password == ''){
            $(".pass-error").text("Password tidak boleh kosong.").show();
            $("input[name='pass']").css("border-bottom", "1px solid red");
            return false;
          }else{
            $(".pass-error").hide();
            $("input[name='pass']").css("border-bottom", "1px solid #fff");
            return true;
          }
        }

        $.post("./LoginChecker.php", {username: username, password: password
        }).done(function(data){
          if(data == '1'){
            window.location.href = "./admin.php?status=1";
          }else if(data == '2'){
            window.location.href = "./admin.php?status=2";
            // header('location: admin.php');
          }else if(data == '3'){
            window.location.href = "./customer.php";
            // header('location: customer.php');
          }else if(data == '4'){
            $("input[name='pass']").css("border-bottom", "1px solid red");
            $(".pass-error").text("Password salah.").show();
            $("input[name='pass']").val('');
          }else if(data == '5'){
            $(".user-error").text("Username tidak ada.").show();
            $("input[name='user']").css("border-bottom", "1px solid red");
            $("input[name='user']").val('');
            $("input[name='pass']").val('');
          }
        }).fail(function(){
          alert('Request failed. Please try again later.');
        });
      });
    });
  </script>
</body>
</html>