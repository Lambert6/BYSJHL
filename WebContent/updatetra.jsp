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
<form method="post" id="updateform" class="form-horizontal">			
			<h3 style="text-align: center;font-size: 20px;"><font color="red">编辑员工</font></h3>
			<input type="hidden" name="updateId" value="<c:out value="${t_id}"/>"/>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">ID：</label>
				<div class="col-sm-6">
					
					<c:out value="${t_id}"></c:out>
					
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">员工名：</label>
				<div class="col-sm-6">
					<input type="text" name="t_name" value="<c:out value="${t_name}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">性别：</label>
				<div class="col-sm-6">
					<select name="t_sex" value="<c:out value="${t_sex}"/>" class="form-control" id="inputError1">
					<option value="男">男</option>
					<option value="女">女</option>
					</select>
				</div>
			</div>
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">年龄：</label>
				<div class="col-sm-6">
					<input type="text" name="t_age" value="<c:out value="${t_age}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">邮箱：</label>
				<div class="col-sm-6">
					<input type="text" name="t_email" value="<c:out value="${t_email}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">电话：</label>
				<div class="col-sm-6">
					<input type="text" name="t_phone" value="<c:out value="${t_phone}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">家庭住址：</label>
				<div class="col-sm-6">
					<input type="text" name="t_address" value="<c:out value="${t_address}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">民族：</label>
				<div class="col-sm-6">
					<input type="text" name="t_nation" value="<c:out value="${t_nation}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">QQ：</label>
				<div class="col-sm-6">
					<input type="text" name="t_qq" value="<c:out value="${t_qq}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">部门：</label>
				<div class="col-sm-6">
					<select name="t_dept"   class="form-control" id="inputError1">
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
					<select name="t_duty"  class="form-control" id="inputError1">
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
					<input type="text" name="t_salary" value="<c:out value="${t_salary}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">身份证号码：</label>
				<div class="col-sm-6">
					<input type="text" name="t_card" value="<c:out value="${t_card}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">开户行：</label>
				<div class="col-sm-6">
					<select name="t_bank" value="<c:out value="${t_bank}"/>" class="form-control" id="inputError1">
					<option value="中行">中行</option>
					<option value="农行">农行</option>
					<option value="工行">工行</option>
					<option value="建行">建行</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">银行卡号：</label>
				<div class="col-sm-6">
					<input type="text" name="t_bankid" value="<c:out value="${t_bankid}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="col-sm-5"></div>
			<button type="button" class="btn btn-primary col-sm-2" onclick="myupdate()">提交</button>
  
</form>
</body>

</body>
<script type="text/javascript">
	function myupdate(){
		var updateform=document.getElementById("updateform");
		updateform.action="updateTra.action";
		alert("确定修改！");
		updateform.submit();
	}
</script>
</html>