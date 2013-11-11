<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <title>dxzscq</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<!-- 
	<link rel="stylesheet" href="themes/style/bootstrap.min.css" />
	<link rel="stylesheet" href="themes/style/bootstrap-responsive.min.css" />
	-->
	<style type="text/css">
	
	.block-heading {
border-bottom: 1px solid #a6a6a6;
border-left: none;
color: #505050;
display: block;
margin-bottom: 0px;
text-shadow: none;
text-transform: none;
font-weight: bold;
font-size: .85em;
line-height: 3em;
}
	
	.dialog, .row .dialog, .row-fluid .dialog, .row-fluid [class*="span"].dialog:first-child {
margin: 0px auto;
margin-top: 5em;
float: none;
width: 400px;
}

	</style>
	<link rel="stylesheet/less" type="text/css" href="/static/themes/less/bootstrap.less">
	<link rel="stylesheet/less" type="text/css" href="/static/themes/style/page.css">
	<script src="/static/themes/js/less/less.js" type="text/javascript"></script>
		
    <link rel="shortcut icon" href="/static/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <script type="text/javascript" src="/static/themes/js/lib/jquery-1.9.1.min.js"></script>
  </head>
<body data-offset="40">
<div class="container">
<div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                </ul>
                <a class="brand" href="/home"><span class="first">东信</span> <span class="second">知识产权</span></a>
        </div>
    </div>
 <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">登录</p>
            <br>
            <div class="block-body">
                <form action="/loginCheck" id="frm" method="post">
                <c:if test="${param.error != null}"> 
    		<div class="alert alert-error">
        		登陆失败！
        		<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
        			失败原因为:<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />，错误的用户信息！
        		</c:if>
    		</div>
		</c:if>
		<c:if test="${param.logout != null }">
			<div class="alert alert-success">
				您已成功退出系统！
			</div>
		</c:if>
                    <label>用户名</label>
                    <input type="text" class="span12" name="username">
                    <label>密码</label>
                    <input type="password" name="password" class="span12">
                    <input type="submit" name="submit" class="btn btn-primary pull-right" value="确认" />
                    <!-- <a href="#" class="btn btn-primary pull-right" onclick="submit();">Sign In</a> -->
                    <label class="remember-me"><input type="checkbox" name="j_spring_security_remember_me" value="1"> Remember me</label>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <p class="pull-right" style=""><a href="http://www.portnine.com" target="blank">Theme by Portnine</a></p>
        <p><a href="reset-password.html">Forgot your password?</a></p>
    </div>
</div>
</div>

<script src="/static/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
        
        function submit(){
        	$('#frm').submit();
        }
        
    </script>
    
    
</body>