<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>

<html lang="en">
<head>

<script type="text/javascript">
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

function getCookie(c_name)
{
   if (document.cookie.length>0)
 { 
    c_start=document.cookie.indexOf(c_name + "=")
   if (c_start!=-1)
  { 
    c_start=c_start + c_name.length+1 
    c_end=document.cookie.indexOf(";",c_start)
    if (c_end==-1) c_end=document.cookie.length
    return unescape(document.cookie.substring(c_start,c_end))
  } 
 }
   return ""
}

function setCookie()
{
	var expiredays=30;
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
	var c_name="userInfoForPortal";
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	if(username!="" && password!="")
		value=username+","+password;
	else
		return;
    document.cookie=c_name+ "=" +escape(value)+
    ((expiredays==null) ? "" : "; expires="+exdate.toGMTString());
}

function checkCookie()
{
	
userInfo=getCookie('userInfoForPortal')
if (userInfo!=null && userInfo!="")
{    
	
	var userNameAndPassword=userInfo.split(",");
	if(userNameAndPassword.length==2)
	{
		document.getElementById("username").value=userNameAndPassword[0];
		document.getElementById("password").value=userNameAndPassword[1];
	}
  }
}

function sumbitPreProcess(){
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	if(username==""||password=="")
	{
		alert("用户名和密码不能为空!!!");
		return false;
	}
   if(document.getElementById("checkbox").checked)
	{
	   setCookie();
	   
	}

	return true;
}

</script>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>武器装备体系联合仿真实验系统</title>
    <!--<link rel="shortcut icon" href="favicon.ico"/>-->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/login/iconfont/iconfont.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/login/css/soss.min.css">
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="fuckie/ie-hack.css"/>
    <![endif]-->
</head>
<body class="login-backdrop" style="background-image: url(<%=request.getContextPath() %>/login/images/backdrop/launching.jpg)" onload="checkCookie()">

<script>
if(GetQueryString("service")==null)
{ 
	
	
	window.location.href="http://localhost:8080/zh/c/portal/login";
}

</script>
<article class="article-login">
    <div class="panel-login">
        <!--
        <div class="brand">
            <img src="images/brand/soss.png">
        </div>
        -->
        <form:form method="post"  commandName="${commandName}">
            <h2>武器装备体系联合仿真实验系统</h2>
            <!--
            <div class="form-group">
                <div class="alert-outline alert-outline-danger alert-compact">
                    <i class="iconfont">&#xe6d2;</i>
                    您输入的密码有误
                </div>
            </div>
            -->
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon" id="Username">
                        <i class="iconfont">&#xe6ce;</i>
                    </span>
                    <form:input  class="form-input" placeholder="Username" aria-describedby="Username" path="username"/>				
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon" id="Password">
                        <i class="iconfont">&#xe6b8;</i>
                    </span>
                    <form:password  class="form-input" placeholder="Password" aria-describedby="Password" path="password"/>			
                </div>
            </div>
            <div class="form-group">
                <label class="form-check">
                    <input class="check" type="checkbox" id="checkbox">
                    <ins></ins> 记住密码
                </label>
            </div>

			<input type="hidden" name="lt" value="${loginTicket}" />
						<input type="hidden" name="execution" value="${flowExecutionKey}" />
						<input type="hidden" name="_eventId" value="submit" />

            <div class="form-group">
                <button type="submit" class="btn btn-block btn-primary" onclick="return sumbitPreProcess()" >登录</button>
            </div>
            <p class="help-block"><a href="index.html"> 忘记密码？</a></p>
        </form:form>
    </div>
</article>

 
<script src="<%=request.getContextPath() %>/login/script/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath() %>/login/script/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/login/script/soss.js"></script>
<!--[if lt IE 9]>
<script src="fuckie/html5.min.js"></script>
<script src="fuckie/css3-mediaqueries.js"></script>
<script src="fuckie/respond.min.js"></script>
<![endif]-->
</body>
</html>
