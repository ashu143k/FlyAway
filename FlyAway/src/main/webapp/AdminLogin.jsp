<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.innerDiv
{
      background: #7fe1e29e;
    height: 500px;
    position: relative;
    margin: auto;
    width: 500px;
    align-content: center;
    top: 100px;
    border-radius: 20px;
}
body {
background-image:url(./images/adminPageBG.jpg);
}
.userDiv{
    position: relative;
        top: 115px;
    left: 102px;
    height: 50px;
    width: 300px;
}
.passwordDiv{
position: relative;
   top: 135px;
    left: 102px;
}
.loginButtonClass{
    top: 195px;
    left: 132px;
    font-size: larger;
    background-image: var(--color-btn-primary-bg,linear-gradient(93deg,#53b2fe,#065af3));
    border: 0;
    border-radius: 34px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 20%);
    color: #fff;
    cursor: pointer;
    display: inline-block;
    flex-shrink: 0;
    outline: 0;
    text-align: center;
    text-transform: uppercase;
    width: 253px;
    padding: 10px;
    margin-bottom: -32px;
    opacity: 1;
    position: relative;

}
input{
font-family: sans-serif;
    /* min-height: auto; */
    /* padding: 1em 0.75em; */
    height: 50px;
    border: 0;
    background: white;
    transition: all .2s linear;
    width: 300px;
    text-align: center;
    font-size: inherit;
    font-weight: 400;
    border-radius: 10px;
}
.textDiv{
    font-weight: bolder;
    position: relative;
    text-align: center;
    top: 80px;
}
}
</style>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body >
<div class="AdminPageMainDiv">
<form action ="AdminLoginValidation" method="POST">
<div class="innerDiv">
<div class="textDiv">
              <h1>ADMIN LOGIN</h1>
              <p>Please enter your login and password!</p></div>
<div class= "userDiv">
<input type = "text" name="UserName" placeholder="Email" required>
</div>
<div class ="passwordDiv">
<input type = "password" name="Password" placeholder="Password" required/>
</div>
<div>
<input type="submit" value="Login" class="loginButtonClass">
</div>
</div>
</form>
</div>
</body>
</html>