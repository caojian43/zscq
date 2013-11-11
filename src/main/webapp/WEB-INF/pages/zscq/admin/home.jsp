<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>


 <div class="content">
        
        <div class="header">

            <h1 class="page-title">滚动图片</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="home">主页</a> <span class="divider">/</span></li>
            <li class="active">滚动图片</li>
        </ul>

        <div class="container-fluid">

<div class="row-fluid">

    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Just a quick note:</strong> 欢迎来到东信知识产权后台管理平台!
    </div>
    <div class="btn-toolbar">
    <button class="btn btn-primary" id="newBtn"><i class="icon-plus"></i>添加首页滚动图片</button>
  <div class="btn-group">
  </div>
	</div>

    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">主页信息--图片滚动区</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div id="tablewidget" class="block-body collapse in">
            <table class="table">
              <thead>
                <tr>
                  <th style="width: 5%">#</th>
                  <th style="width: 20%">标题</th>
                  <th style="width: 30%">内容</th>
                  <th style="width: 30%">图片路径</th>
                  <th style="width: 15%"></th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${homes }" var="home" varStatus="s">
              	<tr>
              		<td>${s.index+1 }</td>
              		<td>
              			${home.title }
              		</td>
              		<td>
              			${home.content }
              		</td>
              		<td>
              			${home.srcPic }
              		</td>
              		<td style="text-align: right;">
              		<a href="home/${home.id}"><i class="icon-pencil"></i></a>
              		<a href="#" data-target="#myModal" data-user_id="${home.id}" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
              		
              		</td>
              	</tr>
              </c:forEach>
              </tbody>
            </table>
        </div>

            </div>
        </div>
    </div>
</div>

<form:form method="delete" id="delete_form"></form:form>
	<!-- boostrap modal -->
<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">删除确认</h3>
    </div>
    <div class="modal-body">
        <p class="error-text"><i class="icon-warning-sign modal-icon"></i>你确定要删除该条目吗？</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
        <button class="btn btn-danger" id="delete_btn" data-dismiss="modal">删除</button>
    </div>
</div>

<script type="text/javascript">

	$('#myModal').on('show',function(event){
		
		id = $(this).data('modal').options.user_id;
	
		$(this).find('#delete_btn').attr('onclick',"doDelete("+id+")");
	});

	function doDelete(id) {
		$('#delete_form').attr('action',"/admin/deletehome/"+id);
		$('#delete_form').submit();
	}
	
	$('#newBtn').click(function(){
		window.location.href='/admin/newhome';
	});
	
	$('#search').click(function(){
		$('#searchForm').submit();
	});
	
</script>


<%@include file="/static/commons/admin/foot.jsp"%>    