<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">团队人员</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="home">Home</a> <span class="divider">/</span></li>
            <li class="active">Team</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
    <button class="btn btn-primary" id="newBtn"><i class="icon-plus"></i>新增</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th style="width: 10%">#</th>
          <th style="width: 20%">姓名</th>
          <th style="width: 15%">工作年限</th>
          <th style="width: 45%">个人简历</th>
          <th style="width: 10%;text-align: right;"></th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${list}" var="mem" varStatus="s">
        <tr>
          <td>${s.index+1 }</td>
          <td>${mem.name}</td>
          <td>${mem.workAge}年</td>
          <td>${mem.resume}</td>
          <td>
              <a href="teamlist/${mem.id}"><i class="icon-pencil"></i></a>
              <a href="#" data-user_id="${mem.id}" data-target="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
</div>

<form:form method="delete" id="delete_form"></form:form>

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
        <button class="btn btn-danger" id="delete_btn" data-dismiss="modal">Delete</button>
    </div>
</div>

<script type="text/javascript">

$('#myModal').on('show',function(event){
	
	id = $(this).data('modal').options.user_id;

	$(this).find('#delete_btn').attr('onclick',"doDelete("+id+")");
});

function doDelete(id) {
	
	$('#delete_form').attr('action',"/admin/deletemem/"+id);
	$('#delete_form').submit();
}

	$('#newBtn').click(function(){
		window.location.href='/admin/newmem';
	});

</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
