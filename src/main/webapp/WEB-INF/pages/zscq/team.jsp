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
			<li class="active">团队</li>
		</ul>
		
		<h2>Team</h2>
		
		<hr class="soften">
		<div class="tabbable tabs">
		  <div class="tab-content label-primary">
		<div class="tab-pane active" id="all">
		<ul class="thumbnails">
		
			<c:forEach items="${team_infos }" var="team" varStatus="s">
				<li class="span3">
					<div class="thumbnail">
						<h4>${team.name}</h4>
						<a href="#"><img src="/photo/${team.id }" style="width: 190px;height: 250px;text-align: center;" alt="photo"></a>
						<p>工作年限：${team.workAge}</p>
						<p>简历：${team.resume }</p>
						<p>邮箱：${team.email }</p>
						<div class="btn-toolbar">
						  <div class="btn-group toolTipgroup">
							<a class="btn" href="#" data-placement="right" data-original-title="send email"><i class="icon-envelope"></i></a>
							<a class="btn" href="#" data-placement="top" data-original-title="do you like?"><i class="icon-thumbs-up"></i></a>
							<a class="btn" href="#" data-placement="top" data-original-title="dont like?"><i class="icon-thumbs-down"></i></a>
							<a class="btn" href="#" data-placement="top" data-original-title="share"><i class="icon-link"></i></a>
							<a class="btn" href="#" data-placement="left" data-original-title="browse"><i class="icon-globe"></i></a>
						  </div>
						</div>
					</div>
				</li>
			</c:forEach>	
					</ul>
					
		</div>

	</div>
	</div>
	</div>
</div>
</div>


<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>