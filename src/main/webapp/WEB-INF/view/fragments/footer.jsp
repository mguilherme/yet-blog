<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer>
	<div class="row">
		<div class="col-lg-12">
			<jsp:useBean id="currentDate" class="java.util.Date" />
			<fmt:formatDate value="${currentDate}" pattern="yyyy" var="currentYear" />
			<p>Copyright &copy; Yet Another Simple Blog ${currentYear}, version ${project.version}</p>
		</div>
	</div>
</footer>