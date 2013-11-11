<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/static/commons/head.jsp"%>
<!-- ======================================================================================================================== -->

<div class="container">
	<div class="span9">
		<ul class="breadcrumb">
			<li><a href="/home">主页</a> <span class="divider">/</span></li>
			<li class="active">联系我们</li>
		</ul>
		<h2>联系我们</h2>	
		<div class="well well-small">
		<hr class="soft"/>
		<h4>1. 通过电话和传真联系我们</h4>
		<div class="row-fluid">
		<div class="span4">
			<p>	<strong>公司名称（Company name）</strong><br/>
				地址, 邮政编码(Address, post code)<br/>
				国家<br/>
				电话: xxxxxxxxx<br/>
				传真: xxxxxxxxxxx<br/>
				邮件（Email）: <a href="mailto:developer.sba@gmail.com">info@bootstrappage.com</a><br/>
				web: <a href="http://www.bootstrappage.com">www.bootstrappage.com</a>
			</p>
		</div>
		<div class="span8">
		<iframe style="width:100%; height:200px; border: 0px" scrolling="no" src="https://maps.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=18+California,+Fresno,+CA,+United+States&amp;aq=0&amp;oq=18+California+united+state&amp;sll=39.9589,-120.955336&amp;sspn=0.007114,0.016512&amp;ie=UTF8&amp;hq=&amp;hnear=18,+Fresno,+California+93727,+United+States&amp;t=m&amp;ll=36.732762,-119.695787&amp;spn=0.017197,0.100336&amp;z=14&amp;output=embed"></iframe>
		</div>	
		</div>	
		<br/>
		<hr class="soften"/>
		<h4>2. 通过邮件联系我们</h4><br/>
		
		<div class="alert alert-error">( * )Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
		<form class="form-horizontal">
			<fieldset>
			  <div class="control-group">
				<label class="control-label" for="input01">Name</label>
				<div class="controls">
				  <input type="text" class="input-xlarge" id="input01">
				 
				</div>
			  </div>
			   <div class="control-group">
				<label class="control-label" for="input11">Email</label>
				<div class="controls">
				  <input type="text" class="input-xlarge" id="input11">
				 
				</div>
			  </div>
			   <div class="control-group">
				<label class="control-label" for="textarea">Messages</label>
				<div class="controls">
				  <textarea class="input-xlarge" id="textarea" rows="3" style="height:65px"></textarea>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="optionsCheckbox">Send me a copy</label>
				<div class="controls">
				  <label class="checkbox">
					<input type="checkbox" id="optionsCheckbox" value="option1">
				  </label>
				</div>
			  </div>
			  <div class="form-actions">
				<button type="submit" class="btn btn-primary">send messages</button>
				<button class="btn">Cancel</button>
			  </div>
			</fieldset>
		  </form>
		  <br/>
		</div>
	</div>
</div>
</div>
<!-- Footer
================================================== -->
<%@include file="/static/commons/foot.jsp"%>