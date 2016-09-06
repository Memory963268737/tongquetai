<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="jquery-easyui-1.4.5/jquery.min.js">
	</script>
	<script type="text/javascript">
			$(document).ready(function() {
				$("#flip").click(function() {
					$("#panel").toggle(1500);
				});
			});
		</script>
		<style type="text/css">
			#panel,
			#flip {
				padding: 5px;
				text-align: center;
				background-color: transparent;
				border: solid 1px transparent;
				cursor: pointer;
				color:  cornflowerblue;
			}
			
			#panel {
				padding: 50px;
				display: none;
			}
			#ma{
				margin-left: 530px;
				color:  cornflowerblue;
			}
			.container {
				margin-top: 200px;
				width: 100%;
				position: fixed;
				height: 300px;
				text-align: center;
			}
			
			.container h3 span {
				color: cornflowerblue;
				font-size: 31px;
			}
			#head span{
				font-size: 50px;
				font-weight: bold;
				font-family: "宋体";
				color:cornflowerblue;
				display: block;
				margin-left: 60px;
				float: left;
				text-shadow: 4px 4px 4px coral;
			}
			#head span:hover{
				color: crimson;
				text-shadow: 4px 4px 4px  deepskyblue;
			}
	</style>
	
  </head>
   
  <body style="background-image: url(img/bj.jpg);">
		<div class="container">
			<div id="head"style="width: 100%; height: 80px;">
				<span id="effect">
					欢迎使用铜雀台应用系统
				</span>
			</div>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/text_plugin.js"></script>
		<script src="js/texteffect.js"></script>
		<div id="flip"><h2>欢迎登陆铜雀台</h2></div>
		<div id="panel">
			<div id="top">
				<form action="DisposeServlet?m=login" method="post">
					<table id="ma">
						<tr class="td">
							<td class="right">账号：</td>
							<td><input type="text" name="userName"  placeholder="アカウント"/></td>
						</tr>
						<tr>
							<td class="right">密码：</td>
							<td><input type="password" name="userPasw"  placeholder="パスワード"/></td>
						</tr>
						<tr>
							<td class="right">
								<input type="submit" value="登录" style="cursor: pointer; background-color: cornflowerblue;" />
							</td>
							<td><input type="reset" style="margin-left: 40px;cursor: pointer; background-color: cornflowerblue;" value="重置" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>
