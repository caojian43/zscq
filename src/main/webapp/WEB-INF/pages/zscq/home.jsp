<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/head.jsp"%>
<!-- ======================================================================================================================== -->

<div class="container">
<div id="myCarousel" class="carousel slide homCar">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		  </ol>
		  <!-- Carousel items -->
		<div class="carousel-inner">

		 <c:forEach items="${pic_infos}" var="pic" varStatus="s">
		 	<div class="item <c:if test='${s.index==0 }'>active</c:if>">
			<img src="${pic.srcPic }" alt="bootstrappage">
			<div class="carousel-caption">
				  <h4>${pic.title } </h4>
				  <p>
				  ${pic.content }
				  </p>
			</div>
		  </div>
		 </c:forEach>
		</div>
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
</div>
</div>
</div>
<div class="container">
<div class="row">
	<div class="span4">
	<div class="thumbnail">
	<img src="/static/img/xinxingzhuanli.jpg" alt="#"/>
	<div class="caption">
	<h2>实用新型专利申请</h2>	
	<p>
	实用新型专利是专利法保护的专利的三种类型之一，实用新型是指对产品的形状、构造或者其结合所提出的适于实用的...
	</p>
	<a class="btn" href="/patent/2">详情</a>
	<br/>
	</div>
	</div>
	</div>
	<div class="span4">
	<div class="thumbnail">
	<img src="/static/img/zhuanrang.jpg" alt="#"/>
	<div class="caption">
	<h2>专利转让</h2>	
	
	<p>
	专利申请权和专利权转让，是指权利所有人将自己的整个专利申请权和专利权全部转让给受让方...
	</p>
	<a class="btn" href="/patent/11">详情</a>
	<br/>
	</div>
	</div>
	</div>
	<div class="span4">
	<div class="thumbnail">
	<img src="/static/img/shangbiaozhuce.jpg" alt="#"/>
	<div class="caption">
	<h2>商标注册</h2>	
	<p>
	商标注册是法人或其他组织对其生产、制造、加工、拣选或经销的商品或者提供的 服务需要取得商标专用权的...
	</p>
	<a class="btn" href="/brand/1">详情</a>
	<br/>
	</div>
	</div>
	</div>
</div>
<br>
<div class="row">
	<div class="span12">
	<div class="well well-small">
		<h3 style="text-align: center;"> 欢迎来到东信知识产权！</h3>	
		<p>
		东信知识产权是一家位于深圳市的知识产权事务所！本所的服务对象是有一定规模的企业以及有一定专业知识的法律事务所。
		<br/><br/>我们的宗旨是：无论其知识产权的大小，每一位客户都能获得最好的专利服务。<br/>
		</p>
	</div>
	</div>
	
<%-- 	<div class="span12">
	<div class="well well-small">
		<em>
		" I can confirm, bougth the theme a couple of days ago and it is really fantastic. Very flexible, very clean code. I really like it."  
		<strong>-Kim</strong>
		
		</em>

	</div>
	</div> --%>
</div>
</div>

<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>