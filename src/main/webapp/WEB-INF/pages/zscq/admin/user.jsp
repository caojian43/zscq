<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/static/commons/admin/head.jsp"%>

<div class="content">
        
        <div class="header">
            <div class="stats">
    <p class="stat"><span class="number">53</span>tickets</p>
    <p class="stat"><span class="number">27</span>tasks</p>
    <p class="stat"><span class="number">15</span>waiting</p>
</div>

            <h1 class="page-title">Dashboard</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="index.html">Home</a> <span class="divider">/</span></li>
            <li class="active">Dashboard</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    

<div class="row-fluid">

    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Just a quick note:</strong> Hope you like the theme!
    </div>
    
    <div class="row-fluid">
    <div class="block span6">
        <a href="#tablewidget" class="block-heading" data-toggle="collapse">Switch to User<span class="label label-warning">+10</span></a>
        <div id="tablewidget" class="block-body collapse in">
            <table class="table">
              <thead>
                <tr>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${users }" var="user">
              		<tr>
              			<td>${user }</td>
              		</tr>
              	</c:forEach>
              </tbody>
            </table>
            <p><a href="users.html">More...</a></p>
        </div>
    </div>
</div>
    
    <%-- this form-login-page form is also used as the
         form-error-page to ask for a login again.
         --%>
    <%-- <c:if test="${not empty param.login_error}">
    <p>
      <font color="red">
        Your 'su' attempt was not successful, try again.<br/><br/>
        Reason: <%= ((AuthenticationException) session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY)).getMessage() %>
      </font>
          </p>
    </c:if> --%>

    <form action="<c:url value='/admin/switch_user'/>" method="POST">
      <table>
        <tr><td>User:</td><td><input type='text' name='username'></td></tr>
        <tr><td colspan='2'><input name="switch" type="submit" value="Switch to User"></td></tr>
      </table>

    </form>



<%@include file="/static/commons/admin/foot.jsp"%>    
