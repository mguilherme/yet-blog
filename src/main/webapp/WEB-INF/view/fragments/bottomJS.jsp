<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- JavaScript -->
<spring:url value="/webjars/jquery/2.1.0/jquery.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>
<spring:url value="/webjars/bootstrap/3.1.1/js/bootstrap.js" var="bootstrapJs" />
<script src="${bootstrapJs}"></script>