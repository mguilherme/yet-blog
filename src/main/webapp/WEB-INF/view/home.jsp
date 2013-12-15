<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Yet Another Simple Blog</title>
<spring:url value="/webjars/bootstrap/3.0.2/css/bootstrap.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet">
<spring:url value="/resources/css/style.css" var="customCss" />
<link href="${customCss}" rel="stylesheet">
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Yet Blog</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div class="container">

		<div class="row">
			<div class="col-lg-8">

				<!-- blog entry -->
				<c:forEach var="post" items="${posts}">
					<h1>
						<a href="#">${post.title}</a>
					</h1>
					<p class="lead">
						by <a href="#author">${post.author.fullName}</a>
					</p>
					<hr>
					<p>
						<span class="glyphicon glyphicon-time"></span> Posted on
						<fmt:formatDate value="${post.creationDate}" dateStyle="medium"
							timeStyle="short" type="both" />
					</p>
					<hr>
					<img src="http://placehold.it/900x300" class="img-responsive">
					<hr>
					<p>${post.content}</p>
					<a class="btn btn-primary" href="#">Read More <span
						class="glyphicon glyphicon-chevron-right"></span></a>

					<hr>
				</c:forEach>

				<!-- pager -->
				<ul class="pager">
					<li class="previous"><a href="#">&larr; Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>

			</div>

			<div class="col-lg-4">
				<div class="well">
					<h4>Blog Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /well -->
				<div class="well">
					<h4>Popular Blog Categories</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#dinosaurs">Dinosaurs</a></li>
								<li><a href="#spaceships">Spaceships</a></li>
								<li><a href="#fried-foods">Fried Foods</a></li>
								<li><a href="#wild-animals">Wild Animals</a></li>
							</ul>
						</div>
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#alien-abductions">Alien Abductions</a></li>
								<li><a href="#business-casual">Business Casual</a></li>
								<li><a href="#robots">Robots</a></li>
								<li><a href="#fireworks">Fireworks</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /well -->
				<div class="well">
					<h4>Side Widget Well</h4>
					<p>Bootstrap's default wells work great for side widgets! What
						is a widget anyways...?</p>
				</div>
				<!-- /well -->
			</div>
		</div>

		<hr>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Yet Another Simple Blog 2013</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- JavaScript -->
	<spring:url value="/webjars/jquery/2.0.3/jquery.js" var="jqueryJs" />
	<script src="${jqueryJs}"></script>
	<spring:url value="/webjars/bootstrap/3.0.2/js/bootstrap.js"
		var="bootstrapJs" />
	<script src="${bootstrapJs}"></script>

</body>
</html>