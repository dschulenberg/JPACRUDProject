<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<title>Welcome</title>
<jsp:include page ="bootstrapHead.jsp" />
</head>

<body>
	<%--Edit the file nav.jsp to change nav links --%>
<%--
	<h2>
		<a id="header" href="home.do">The Right Tool</a>
	</h2>
	 --%>
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="3" aria-label="Slide 4"></button>	
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img
					src="https://st2.depositphotos.com/1007963/5903/i/450/depositphotos_59038581-stock-photo-computer-maintenance-concept.jpg"
					width="100%" height="825px" class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Maintenance at your fingers</h5>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img
					src="https://st.depositphotos.com/1907633/3331/i/450/depositphotos_33313725-stock-photo-engineer-with-the-piping-of.jpg"
					width="100%" height="825px" class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Predictive Maintenance</h5>
					<p>Transforming Corrective Maintenance into Predictive
						Maintenance</p>
				</div>
			</div>
			<div class="carousel-item" data-bs-interval="5000">
				<img
					src="https://st2.depositphotos.com/4537707/8074/i/450/depositphotos_80742760-stock-photo-silver-wrench-clenching-a-fragile.jpg"
					width="100%" height="825px" class="d-block w-100" alt="war">
				<div class="carousel-caption d-none d-md-block">
					<h5>The Right Tool</h5>
					<p>Easy to Use and the right tool for the job</p>
				</div>
			</div>
						<div class="carousel-item" data-bs-interval="5000">
				<img
					src="https://st3.depositphotos.com/1229718/19218/i/450/depositphotos_192183372-stock-photo-wrong-tool-for-the-job.jpg"
					width="100%" height="825px" class="d-block w-100" alt="war">
				<div class="carousel-caption d-none d-md-block">
					<h5>Are you hooked?</h5>
					<p><a id="header" href="home.do">Click here to continue.</a></p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

<jsp:include page ="bootstrapFoot.jsp" />
</body>
</html>