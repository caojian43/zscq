<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer
================================================== -->
<footer class="footer">
	<hr class="soften" />
	<div class="container">
		<p>
			<a href="/home">主页</a> - <a href="/team">团队</a> - <a
				href="/lawservice">成功案例</a> - <a href="/contact">联系我们</a>
		</p>
		<hr class="soften" />
		<p>
			&copy; Copyright company <br />
			<br />
		</p>
</footer>
</div>
<!-- /container -->
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
<script type="text/javascript">
	$('#searchBtn').click(function() {
		$('#searchform').submit();
	});
</script>
</html>