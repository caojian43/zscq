<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">新增案例</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/admin/home">Home</a> <span class="divider">/</span></li>
            <li><a href="/admin/portfoliolist">portfolio</a> <span class="divider">/</span></li>
            <li class="active">当前案例</li>
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
      <li class="active"><a href="#home" data-toggle="tab">案例信息</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
     <form:form id="frm1" name="frm1" enctype="multipart/form-data" modelAttribute="case" action="/admin/saveportfolio" method="post">
    	<input type="hidden" name="id" >
        <label>案件名称</label>
        <form:input path="name" class="input-xlarge"/>
		<form:errors path="name" cssClass="text-error"></form:errors>
        <label>客户</label>
        <form:input path="client" class="input-xlarge"/>
        <form:errors path="client" cssClass="text-error"></form:errors>
        <label>处理结果</label>
        <form:select path="status" class="input-xlarge" >
        	<form:option value="0" label="待处理" ></form:option>
        	<form:option value="1" label="已处理" ></form:option>
        </form:select>
        <form:errors path="status" cssClass="text-error"></form:errors>
        <label>日期</label>
        <form:input path="handleDate" class="input-xlarge"/>
        <label>是否展示</label>
        <form:select path="isDisplay" class="input-xlarge" >
        	<form:option value="1" label="展示" ></form:option>
        	<form:option value="0" label="不展示" ></form:option>
        </form:select>
        <label>图片</label>
        <input type="file" name="file" id="file" />
    </form:form>
      </div>
      <div class="tab-pane fade" id="profile">
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

	$(function(){
		
		$("#handleDate").datepicker({
			format: 'yyyy-mm-dd',
			language: "zh-CN",
			autoclose: true,
			todayHighlight: true
			});
		
	});
	
	$('#submitBtn').click(function(){
		$('#frm1').submit();
	});
</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
