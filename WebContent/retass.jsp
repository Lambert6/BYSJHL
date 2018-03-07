<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body style="background-image: url(img/ww.jpg);">
<form method="post" id="myform" class="form-horizontal">
		<center><h3><font color="red">检索员工</font></h3></center>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">员工名：</label>
				<div class="col-sm-6">
					<input type="text" name="a_name" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">性别：</label>
				<div class="col-sm-6">
					<select name="a_sex" class="form-control" id="inputError1">
					<option value=""></option>
					<option value="男">男</option>
					<option value="女">女</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">年龄：</label>
				<div class="col-sm-6">
					<input type="text" name="a_age" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputGroupSuccess2">邮箱：</label>
				<div class="col-sm-6">
					<div class="input-group">
						<span class="input-group-addon">@</span>
						<input type="text" name="a_email" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
					</div>
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputGroupSuccess2Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">电话：</label>
				<div class="col-sm-6">
					<input type="text" name="a_phone" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">家庭住址：</label>
				<div class="col-sm-6">
					<input type="text" name="a_address" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">民族：</label>
				<div class="col-sm-6">
					<input type="text" name="a_nation" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">QQ：</label>
				<div class="col-sm-6">
					<input type="text" name="a_qq" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">部门：</label>
				<div class="col-sm-6">
					<select name="a_dept" class="form-control" id="inputError1">
					<option value=""></option>
					<option value="销售部">销售部</option>
					<option value="研发部">研发部</option>
					<option value="财务部">财务部</option>
					<option value="行政部">行政部</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">职位：</label>
				<div class="col-sm-6">
					<select name="a_duty" class="form-control" id="inputError1">
					<option value=""></option>
					<option value="经理">经理</option>
					<option value="主管">主管</option>
					<option value="主管">组长</option>
					<option value="主管">普通</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">工资：</label>
				<div class="col-sm-6">
					<input type="text" name="a_salary" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">身份证号码：</label>
				<div class="col-sm-6">
					<input type="text" name="a_card" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">毕业学校：</label>
				<div class="col-sm-6">
					<input type="text" name="a_school" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">所在项目：</label>
				<div class="col-sm-6">
					<input type="text" name="a_project" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="col-sm-5"></div>
			<button type="button" class="btn btn-primary col-sm-2" onclick="myAdd()">提交</button>
  
</form>
</body>

<script type="text/javascript">
	function myAdd(){
		var myform=document.getElementById("myform");
		myform.action="retass.action";
		myform.submit();
	}
</script>
</html>