<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/head.jsp"%>
<!-- ======================================================================================================================== -->

<div class="container">
<div class="row">
<div class="span3">
		  <%@include file="common/middle_contact.jsp"%>
	</div>
<div class="span9">
	<ul class="breadcrumb">
			<li><a href="/home">主页</a> <span class="divider">/</span></li>
			<li class="active">法律服务</li>
		</ul>
		
		<h2 >法律服务</h2>
		
		<hr class="soften">
		<div class="tabbable tabs">
		  <div class="tab-content label-primary">
		<div class="tab-pane active" id="all">
					<h2 style="text-align: center;">${entity.title }</h2>
					<br>
		<p>
		${entity.content}
		</p>
		</div>

	</div>
	</div>
	</div>
</div>
</div>


<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>