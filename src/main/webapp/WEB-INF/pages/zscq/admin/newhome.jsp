<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">新增</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/admin/home">Home</a> </li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary" id="submitBtn"><i class="icon-save"></i> Save</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
     <form:form id="frm1" name="frm1" action="/admin/savehome" method="post" modelAttribute="home">
        <label>标题</label>
        <form:input path="title" class="input-xlarge"/>
        <label>内容</label>
        <form:input path="content" class="input-xlarge"/>
        <label>图片地址</label>
        <form:input path="srcPic" class="input-xlarge"/>
    </form:form>
      </div>
  </div>

</div>

<script type="text/javascript">

	$('#submitBtn').click(function(){
		$('#frm1').submit();
	});

</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
