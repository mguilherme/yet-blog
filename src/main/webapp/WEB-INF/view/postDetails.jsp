<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<jsp:include page="fragments/headTag.jsp" />

<body>

	<jsp:include page="fragments/navBar.jsp" />

	<div class="container">

		<div class="row">
			<div class="col-lg-8">

				<!-- blog post -->
				<h1>${post.title}</h1>
				<p class="lead">
					<spring:url value="/user/${post.author.userName}" var="userUrl" />
					by <a href="${userUrl}">${post.author.fullName}</a>
				</p>
				<hr>
				<p>
					<span class="glyphicon glyphicon-time"></span> Posted on
					<fmt:formatDate value="${post.creationDate}" dateStyle="medium"
						timeStyle="short" type="both" />
				</p>
				<p>
					<span class="glyphicon glyphicon-comment"></span>
					${fn:length(post.replies)} comments
				</p>
				<hr>
				<img src="http://placehold.it/900x300" class="img-responsive">
				<hr>
				<p style="text-align: justify;">${post.content}</p>
				<hr>

				<!-- the comment box -->
				<div class="well">
					<h4>Leave a Comment:</h4>
					<form role="form">
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>

				<hr>

				<!-- the comments -->
				<c:forEach var="reply" items="${post.replies}">
					<h3>${reply.author.fullName}
						<small><fmt:formatDate value="${reply.creationDate}"
								dateStyle="medium" timeStyle="short" type="both" /></small>
					</h3>
					<p style="text-align: justify;">${reply.comment}</p>
				</c:forEach>

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

		<jsp:include page="fragments/footer.jsp" />

	</div>
	<!-- /.container -->

	<jsp:include page="fragments/bottomJS.jsp" />

</body>
</html>