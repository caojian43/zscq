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
			<li><a href="home">主页</a> <span class="divider">/</span></li>
			<li class="active">搜索结果</li>
		</ul>
		
		<h2>搜索结果</h2>
		
		<hr class="soften">
		<div class="tabbable tabs">
		  <div class="tab-content label-primary">
		<div class="tab-pane active" id="all">
		<table border="1" style="width: 100%">
			<tbody>
			<tr>
				<th style="width: 20%;text-align: center;">
				name
				</th>
				<th style="width: 80%;text-align: center;">
				resume
				</th>
			</tr>
			<c:forEach items="${entities}" var="entity" varStatus="s">
			<tr>
				<td style="text-align: center;">${entity.name }</td>
				<td style="text-align: center;">${entity.resume }</td>					
			</tr>
			</c:forEach>
			</tbody>
		</table>						
		</div>

	</div>
	</div>
	</div>
</div>
</div>


<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>