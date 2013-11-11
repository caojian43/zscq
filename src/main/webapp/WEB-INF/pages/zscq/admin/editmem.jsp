<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">编辑人员</h1>
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
    <a href="#myModal" data-toggle="modal" class="btn">Delete</a>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">个人信息</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
     <form:form id="frm1" name="frm1" action="/admin/mem" enctype="multipart/form-data" modelAttribute="mem" method="put">
    	<form:hidden path="id"/>
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
        <form:errors path="email" cssClass="text-error"></form:errors>
        <label>简介</label>
        <form:textarea path="resume" rows="3" class="input-xlarge"/>
        <form:errors path="resume" cssClass="text-error"></form:errors>
        <label>照片</label>
        <input type="file" name="file" id="file" />
    </form:form>
      </div>
      <div class="tab-pane fade" id="profile">
    <form id="tab2">
        <label>New Password</label>
        <input type="password" class="input-xlarge">
        <div>
            <button class="btn btn-primary">Update</button>
        </div>
    </form>
      </div>
  </div>

</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Delete Confirmation</h3>
  </div>
  <div class="modal-body">
    
    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
  </div>
</div>

<script type="text/javascript">

	$('#submitBtn').click(function(){
		$('#frm1').submit();
	});

</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
