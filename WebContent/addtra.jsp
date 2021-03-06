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
		

		
			
			<center><h3><font color="red">添加房源</font></h3></center>
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">业主姓名：</label>
				<div class="col-sm-6">
					<input type="text" name="t_name" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">房龄：</label>
				<div class="col-sm-6">
					<input type="text" name="t_age" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputGroupSuccess2">业主邮箱：</label>
				<div class="col-sm-6">
					<div class="input-group">
						<span class="input-group-addon">@</span>
						<input type="text" name="t_email" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
					</div>
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputGroupSuccess2Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">联系方式：</label>
				<div class="col-sm-6">
					<input type="text" name="t_phone" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">房源地址：</label>
				<div class="col-sm-6">
					<input type="text" name="t_address" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">户型：</label>
				<div class="col-sm-6">
					<input type="text" name="t_nation" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">租金：</label>
				<div class="col-sm-6">
					<input type="text" name="t_qq" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">朝向：</label>
				<div class="col-sm-6">
					<select name="t_dept" class="form-control" id="inputError1">
					<option value="东">东</option>
					<option value="南">南</option>
					<option value="北">北</option>
					<option value="西">西</option>
					<option value="东南">东南</option>
					<option value="西南">西南</option>
					<option value="西北">西北</option>
					<option value="东北">东北</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">楼层：</label>
				
					
					<div class="col-sm-6">
					<input type="text" name="t_duty" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
				
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">经纪人：</label>
				<div class="col-sm-6">
					<input type="text" name="t_salary" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">经纪人级别：</label>
				<div class="col-sm-6">
					<input type="text" name="t_card" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			?
			
			<!-- <div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">付款方式：</label>
				<div class="col-sm-6">
					<select name="t_bank_id" class="form-control" id="inputError1">
					<option value="季租">季租</option>
					<option value="年租">年租</option>
					<option value="月租">月租</option>
					</select>
				</div>
			</div> -->
			
			
			
			<div class="col-sm-4"></div>
			<button type="submit" class="btn btn-primary col-sm-1" onclick="myAdd()">添加</button>
			<div class="col-sm-2"></div>
			<button type="reset" class="btn btn-danger col-sm-1">重置</button>
</form>
</body>
<script type="text/javascript">
	function myAdd(){
		var myform=document.getElementById("myform");
		myform.action="addtra.action";
		myform.submit();
	}
</script>
</html>