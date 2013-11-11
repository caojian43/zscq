<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">Edit Pic</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/admin/home">Home</a> </li>
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
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
     <form:form id="frm1" name="frm1" action="/admin/save" method="put">
    	<input type="hidden" name="id" value="${home.id}">
        <label>标题</label>
        <input type="text" name="title"  value="${home.title }" class="input-xlarge">
        <label>内容</label>
        <textarea name="content" class="input-xlarge" rows="3" >${home.content }</textarea>
        <label>图片地址</label>
        <input type="text" name="srcPic" readonly="readonly"  value="${home.srcPic }" class="input-xlarge">
    </form:form>
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
