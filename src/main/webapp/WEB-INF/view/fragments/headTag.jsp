<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
	<meta charset="utf-8">
	<title>Yet Another Simple Blog</title>
	<spring:url value="/webjars/bootstrap/3.0.2/css/bootstrap.css" var="bootstrapCss" />
	<link href="${bootstrapCss}" rel="stylesheet">
	<spring:url value="/resources/css/style.css" var="customCss" />
	<link href="${customCss}" rel="stylesheet">
</head>