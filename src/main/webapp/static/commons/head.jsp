<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <title>东信知识产权</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="caoj">
	<!-- 
	<link rel="stylesheet" href="themes/style/bootstrap.min.css" />
	<link rel="stylesheet" href="themes/style/bootstrap-responsive.min.css" />
	-->
	<link rel="stylesheet/less" type="text/css" href="/static/themes/less/bootstrap.less">
	<link rel="stylesheet/less" type="text/css" href="/static/themes/style/page.css">
	<link href="/static/backtotop/css/ui.totop.css" rel="stylesheet" type="text/css" />
	<script src="/static/themes/js/less/less.js" type="text/javascript"></script>
	<!-- <link type="text/css" rel="stylesheet" href="/static/simplepagination/simplePagination.css"/> -->
    <link rel="shortcut icon" href="/static/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  </head>
<body data-offset="40">
<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/static/themes/js/lib/jquery-1.9.1.min.js"></script>
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/backtotop/js/easing.js"></script>
<script type="text/javascript"
	src="/static/backtotop/js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="/static/simplepagination/jquery.simplePagination.js"></script>

<header class="header">
<div class="container">
<div class="row">
	<h1 class="span6"><a href="/home" title="东信知识产权"><img src="/static/themes/images/dx_logo.png" alt="东信知识产权"/></a></h1>
	<div class="span6">
	<div class="pull-right"><br/> 
	<a class="pull-right" href="mailto: caojian43710@gmail.com">
	<small> <i class="icon-envelope"></i>  E: caojian43710@gmail.com</small>
	</a>
	<strong>
	<small> <br/><i class="icon-phone"></i> Call (24/7) :  18301419220</small>
	</strong>
	</div>
	</div>
</div>
</div>
</header>
<div class="bannerSection">
  <!-- Navbar
    ================================================== -->
<div class="navbar">
  <div class="navbar-inner">
	<div class="container">
	  <div class="nav-collapse">
		<ul class="nav" id="nav_head">
			<li id="home"><a href="/home">主页</a></li>
			<li id="team"><a href="/team">团队</a></li>
			<li class="dropdown" id="patent">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#">专利服务 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="nav-header">国内专利</li>
					<li><a href="/patent/1">发明专利申请</a></li>
					<li><a href="/patent/2">实用新型专利申请</a></li>
					<li><a href="/patent/3">外观设计专利申请</a></li>
					<li><a href="/patent/4">审查意见答复</a></li>
					<li><a href="/patent/5">专利申请复核</a></li>
					<li><a href="/patent/6">国内专利官费参考</a></li>
					<li class="divider"></li>
					<li class="nav-header">国际专利</li>
					<li><a href="/patent/7">PCT途径</a></li>
					<li><a href="/patent/8">香港专利申请</a></li>
					<li><a href="/patent/9">美国专利申请</a></li>
					<li><a href="/patent/10">国际专利官费参考</a></li>
					<li class="divider"></li>
					<li class="nav-header">专利管理交易</li>
					<li><a href="/patent/11">专利转让</a></li>
					<li><a href="/patent/12">专利实施许可合同备案</a></li>
					<%-- <li><a href="/patent/13">美国专利申请</a></li>
					<li><a href="/patent/14">国际专利检索/分析</a></li>
					<li><a href="/patent/15">国际专利官费参考</a></li> --%>
				</ul>
			</li>
			<li class="dropdown" id="brand">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#">商标注册 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="nav-header">国内商标</li>
					<li><a href="/brand/1">商标注册</a></li>
					<li><a href="/brand/2">商标转让</a></li>
					<li><a href="/brand/3">商标许可</a></li>
					<li><a href="/brand/4">商标变更</a></li>
					<li><a href="/brand/5">商标续展</a></li>
					<li><a href="/brand/6">商标补证</a></li>
					<li><a href="/brand/7">版权登记</a></li>
					<%--
					<li class="divider"></li>
					<li class="nav-header">国际商标</li>
					<li><a href="/brand/8">单国注册</a></li>
					<li><a href="/brand/9">欧盟注册</a></li>
					<li><a href="/brand/10">马德里注册</a></li>
					<li><a href="/brand/11">非洲知识产权组织注册</a></li>
					<li><a href="/brand/12">国际案件</a></li>
					<li><a href="/brand/13">国际监测</a></li> --%>
				</ul>
			</li>
			<li id="portfolip"><a href="/portfolio">成功案例</a></li>
			<li id="lawservice"><a href="/lawservice">法律服务</a></li>
			<li id="contact"><a href="/contact">联系我们</a></li>
		</ul>
		
		<form action="/search" id="searchform" 
			class="navbar-search form-inline" style="margin-top:6px" method="post">
		<div class="input-append">
		  <input type="text" placeholder="Search" name="searchString"/>
		  <button class="btn btn-warning" id="searchBtn"><i class="icon-search icon-white"></i></button>
		</div>
		</form>
		
		<ul class="nav pull-right">
		<li class="dropdown">
		  <a <%-- data-toggle="dropdown" class="dropdown-toggle" --%> href="#"><img src="/static/themes/images/cn.png" alt="中国"/> 中文</a>
		  <%--
		  <ul class="dropdown-menu">
			  <li><a href="#"><img src="/static/themes/images/en.png" alt="English British"/> 英语 </a></li>
			  <li><a href="#"><img src="/static/themes/images/fr.png" alt="French"/> 法语</a></li>
			  <li><a href="#"><img src="/static/themes/images/es.png" alt="Spanish"/> 西班牙语</a></li>
			  <li><a href="#"><img src="/static/themes/images/de.png" alt="Germal"/> 德语</a></li>
		  </ul> --%>
		  </li>
		</ul>
	  </div><!-- /.nav-collapse -->
	</div>
  </div><!-- /navbar-inner -->
</div>

