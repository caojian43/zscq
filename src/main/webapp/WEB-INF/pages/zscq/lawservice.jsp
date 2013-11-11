<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/head.jsp"%>
<!-- ======================================================================================================================== -->
<style>
<!--
a:link {color: blue; text-decoration:none;} 
a:active:{color: red; } 
a:visited {color:purple;text-decoration:none;} 
a:hover {color: red; text-decoration:underline;} 
-->
</style>
<div class="container">
<div class="row">
<div class="span3">
		  <%@include file="common/middle_contact.jsp"%>
	</div>
<div class="span9">
	<ul class="breadcrumb">
			<li><a href="/home">主页</a> <span class="divider">/</span></li>
			<li class="active">法律服务</li>
		</ul>
		<h2>法律服务</h2>
		
		<hr class="soften">
		<div class="tabbable tabs">
		  <div class="tab-content label-primary">
		<div class="tab-pane active" style="height:auto;" id="all">
		
		<c:forEach items="${entities }" var="entity" varStatus="s">
		 <li style="line-height: 27px;height: 27px">
			<a title="${entity.title }" style="text-decoration: none;width: 650px;float: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;" 
				href="/lawservicedetails/${entity.id }">${entity.title }</a>
			<span>10-7</span>
		 </li>
		</c:forEach>
		
		</div>
		<br/><br/>
         
        <div class="pagination-holder clearfix">
			<div id="light-pagination" class="pagination"></div>
		</div>

		</div>
		</div>
</div>

</div>
</div>
<script type="text/javascript">
$(function() {
    $('#light-pagination').pagination({
    	items: ${totalPage},
//    	hrefTextPrefix: '/lawservice/',
    	prevText:'上一页',
    	nextText:'下一页',
        cssStyle: 'light-theme',
        onPageClick: function pageSubmit(pageNum){
        	$.ajax({
        		type:'GET',
        		url:'/lawservice/'+pageNum,
        		dataType:'json',
        		success:function(d) {
        				$('#all').html(''); // 移除
        			$.each(d,function(i,entity) {
        				var str_li = "<li style='line-height: 27px;height: 27px'><a title="+entity['title']+ 
        				" style='text-decoration: none;width: 650px;float: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;' href="
        				+"/lawservicedetails/"+entity['id']+">"+entity['title']+"</a><span>10-7</span></li>";
        				$('#all').append(str_li);
        			});
        		}
        	});
        }
    });
});
</script>
<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>