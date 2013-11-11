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
    <link rel="stylesheet" type="text/css" href="/static/admin/lib/bootstrap/css/bootstrap.css">
    
    <link rel="stylesheet" type="text/css" href="/static/admin/stylesheets/theme.css">
    <link rel="stylesheet" href="/static/admin/lib/font-awesome/css/font-awesome.css">
	<style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
        .error-caption .number {
	display: inline-block;
	letter-spacing: -10px;
	margin-top: 0px;
	line-height: 128px;
	font-size: 99px;
	font-weight: 300;
	color: rgb(123, 187, 214);
	text-align: right;
}
    </style>
    <script type="text/javascript" src="/static/themes/js/lib/jquery-1.9.1.min.js"></script>
  </head>
 <body class="http-error"> 
  <!--<![endif]-->
    
        <div class="row-fluid">
    <div class="http-error">
        <div class="http-error-message">
            <div class="error-caption">
                <div class="number">503</div>
            </div>
            <div class="error-message">
                <p>连接可能超时··<p>
                <p class="return-home"><a href="/home">回到首页</a></p>
            </div>
        </div>
    </div>
</div>


    


    <script src="/static/admin/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
</body>