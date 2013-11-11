<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            
            <h1 class="page-title">案件</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="/admin/home">Home</a> <span class="divider">/</span></li>
            <li class="active">portfolio</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
            <div class="search-well">
                <form class="form-inline" id="searchForm" action="/admin/portfoliolist" method="get">
                    <input class="form-search" placeholder="案件名称" id="name" name="name" type="text">
                    <input class="form-search" placeholder="客户名称" id="client" name="client" type="text">
                    <button class="btn" type="button" id="search"><i class="icon-search"></i> Go</button>
                </form>
            </div>
		<div class="btn-toolbar">
    <button class="btn btn-primary" id="newBtn"><i class="icon-plus"></i>新增</button>
  <div class="btn-group">
  </div>
</div>

<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th style="width: 5%">#</th>
          <th style="width: 15%">案件名称</th>
          <th style="width: 20%">客户</th>
          <th style="width: 10%">处理结果</th>
          <th style="width: 15%">日期</th>
          <th style="width: 10%">是否展示</th>
          <th style="width: 20%">图片</th>
          <th style="width: 5%;text-align: right;"></th>
        </tr>
      </thead>
      <tbody id="all">
      <c:forEach items="${cs}" var="case" varStatus="s">
        <tr>
          <td>${s.index+1 }</td>
          <td>${case.name}</td>
          <td>${case.client}</td>
          <td>
          	<c:choose>
          		<c:when test="${case.status=='0'}">待处理</c:when>
          		<c:otherwise>已处理</c:otherwise>
          	</c:choose>
          </td>
          <td>
          	<fmt:formatDate value="${case.handleDate}" pattern="yyyy年MM月dd日"/>
          </td>
          <td>
          	<c:if test="${case.isDisplay == '0'}">不展示</c:if>
          	<c:if test="${case.isDisplay == '1'}">展示</c:if>
          </td>
          <td>暂略</td>
          <td>
              <a href="portfolio/${case.id}"><i class="icon-pencil"></i></a>
              <a href="#" data-target="#myModal" data-user_id="${case.id}" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
    <div class="pagination-holder clearfix">
		<div id="light-pagination" class="pagination"></div>
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
		$('#delete_form').attr('action',"/admin/deleteportfolio/"+id);
		$('#delete_form').submit();
	}
	
	$('#newBtn').click(function(){
		window.location.href='/admin/newportfolio';
	});
	
	$('#search').click(function(){
		$('#searchForm').submit();
	});
	
	$(function() {
	    $('#light-pagination').pagination({
	    	items: ${totalPage},
	    	prevText:'上一页',
	    	nextText:'下一页',
	        cssStyle: 'light-theme',
	        onPageClick: function pageSubmit(pageNum){
	        	$.ajax({
	        		type:'GET',
	        		url:'/admin/portfoliolist/'+pageNum,
	        		dataType:'json',
	        		success:function(d) {
	        				$('#all').html(''); // 移除
	        			$.each(d,function(i,entity) {
	        				var i = i+1;
	        				var status = entity['status']==1?'已处理':'待处理';
	        				var isDisplay = entity['isDisplay']==1?'是':'否';
	        				var date = (new Date(entity['handleDate'])).toLocaleDateString(); // js 中默认转换为时间戳对象
	        				var str_tr = "<tr><td>"+ i + "</td><td>" + entity['name'] + 
	        				"</td><td>"+entity['client']+"</td><td>" + status + 
	        				"</td><td>" + date + "</td><td>" + 
	        				isDisplay +"</td><td>暂略</td>" +"<td><a href='portfolio/" + 
	        				entity['id'] +"'><i class='icon-pencil'></i></a>" + 
	        				 "<a href='#myModal' role='button' data-toggle='modal'><i class='icon-remove'></i></a></td></tr>";
	        				$('#all').append(str_tr);
	        			});
	        		}
	        	});
	        }
	    });
	});
</script>

<%@include file="/static/commons/admin/foot.jsp"%>    
