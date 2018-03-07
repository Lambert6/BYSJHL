<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<script src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style>
			#s1 {
				width: auto;
				height: 100px;
				text-align: right;
				background-image: url(img/993.jpg);
				top: 0px;
			}
			
			#s2 {
				height: 425px;
				width: 40%;
				text-align: center;
				padding: 10px;
				float: left;
			}
			
			#s3 {
				width: 60%;
				height: 425px;
				padding: 15px;
				float: left;
			}
			
			#s4 {
				padding: 9px;
				text-align: center;
				clear: both;
			}
			
			#s5 {
				position: relative;
				width: 100%;
				height: auto;
				top: auto;
			}
			
			body {
				background-image: url(img/a4e71d3612f4c611e7510548f13ac6e9.jpg);
				width: 100%;
				height: 100%;
			}
		</style>
<title>修改密码</title>

</head>
<body>
<nav style="margin: 0px; padding: 0px;" class="navbar navbar-default"
		role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
				<img src="img/软灰.png" alt="issHR" height="50px" style="border-radius: 5px; margin-top: 0px; "/>
		</div>
		<div>
			<ul class="nav navbar-nav" style="align-content: center;">
				<li><a href="advice.html">投诉建议</a></li>
				<li><a href="introduce.html">公司介绍</a></li>

			</ul>
		</div>
		<div>
			<form class="navbar-form navbar-right" role="search">
				
				<button type="submit" class="btn btn-default">
					<a href="login.jsp">登录</a>
				</button>
				<button type="button" class="btn btn-default ">
					<a href="register.jsp">注册</a>
				</button>
				<button type="button" class="btn btn-default ">
					<a href="updatePwd.jsp">修改密码</a>
				</button>
			</form>
		</div>
	</div>
	</nav>
		<div id="s1">

		</div>
		<p>
			<center>
				<h1>修改密码</h1></center>
		</p>
		<hr />
		<div style="margin: 0 auto;width: 300px;height: auto; align-content: center; ">
			
			<form id="updatePwd" action="${pageContext.request.contextPath }/update.action"  method="post" class="form-horizontal"> 
				<table>
				<tr>
						<td>用户ID：</td>
						<td><input type="text" class="form-control" placeholder="请输入ID" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
					
						<td>用户名：</td>
						<td><input type="text" name="username" id="username" class="form-control" placeholder="由字母和数字组成" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td><input type="text" class="form-control" placeholder="请输入邮箱" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>

						<td>密码：</td>
						<td><input type="password" name="password" id="password" class="form-control" placeholder="不低于六位" /></td>
					</tr>
					
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>确认密码：</td>
						<td><input type="text"  class="form-control" placeholder="请确认密码" /></td>
					</tr>
					
					
					<tr>
						<td>&nbsp;</td>
					</tr>
					
					

					
					
					<tr>
					<td colspan="2"><input type="checkbox" id="cbox" name="cbox"
						value="ck1">我同意网站并遵守 <a href="power.jsp">《本网站法律协议》</a><br></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
					<td  style="text-align: center;">
						<button type="button" onclick="is_check();" 
							class="btn btn-primary">
							&nbsp;&nbsp;&nbsp;
							提交
							&nbsp;&nbsp;&nbsp;
						</button>
					</td>
<td  style="text-align: center; position: right;">
						<button type="reset" style="text-align: right;" class="btn btn-primary">
						&nbsp;&nbsp;&nbsp;	
						重置
						&nbsp;&nbsp;&nbsp;
						</button>
					</td>
				</tr>
			
			</table>
			</form>
		
<%-- <form action="${pageContext.request.contextPath }/user/update.action" >  
        <table border="1">  
            <tr>  
                <td>用户名</td>  
                <td><input type="text" name="username"></td>  
            </tr> 
             <tr>  
                <td>邮箱</td>  
                <td><input type="text" name="mail"></td>  
            </tr> 
            <tr>  
                <td>密码</td>  
                <td><input type="password" name="password"></td>  
            </tr>  
            
            <tr>  
                <td><input type="submit"  value="提交"></td>  
            </tr>  
        </table>  
    </form>   --%>

</body>
<script type="text/javascript">
		function is_check(){
			var updatePwd = document.getElementById("updatePwd");
			var statue=document.getElementById("cbox");
			if(statue.checked){
				updatePwd.submit();
			}else{
				alert("请遵守本网站法律协议！");
				return updatePwd;
			}
		}
</script>
</html>










































