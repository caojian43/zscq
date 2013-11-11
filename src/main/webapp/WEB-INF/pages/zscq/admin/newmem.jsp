<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">新增人员</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/admin/home">Home</a> <span class="divider">/</span></li>
            <li><a href="/admin/teamlist">Team</a> <span class="divider">/</span></li>
            <li class="active">Member</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary" id="submitBtn"><i class="icon-save"></i> Save</button>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">个人信息</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
     <form:form id="frm1" enctype="multipart/form-data" modelAttribute="team" name="frm1" action="/admin/savemem" method="post">
    	<input type="hidden" name="id" value="10">
        <label>姓名</label>
        <form:input path="name" class="input-xlarge"/>
		<form:errors path="name" cssClass="text-error"></form:errors>
        <label>工作年限</label>
        <form:input path="workAge" class="input-xlarge"/>
        <form:errors path="workAge" cssClass="text-error"></form:errors>
        <label>排名</label>
        <form:input path="rank" class="input-xlarge"/>
        <form:errors path="rank" cssClass="text-error"></form:errors>
        <label>Email</label>
        <form:input path="email" class="input-xlarge"/>
        <label>简介</label>
        <form:textarea path="resume" rows="3" class="input-xlarge"/>
        <form:errors path="resume" cssClass="text-error"></form:errors>
        <label>照片</label>
        <input type="file" name="file" id="file" />
    </form:form>
      </div>
      <div class="tab-pane fade" id="profile">
      </div>
  </div>

</div>


<script type="text/javascript">
	$('#submitBtn').click(function(){
		$('#frm1').submit();
	});

</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
