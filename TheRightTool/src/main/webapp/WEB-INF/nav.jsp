<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- CSS only -->
<jsp:include page ="bootstrapHead.jsp" />
<nav class="navbar navbar-expand-lg bg-light">
<div class="container-fluid">
    <a class="navbar-brand" href="index.do">
          <img src="https://w7.pngwing.com/pngs/568/762/png-transparent-wrench-nut-bolt-building-screw-wrench-nuts-nuts-technic-wrench-vector-thumbnail.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
		The Right Tool
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addMaintenance.do">Add Maintenance</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="getAllHistory.do">Get All Histories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="search.do">Search By ID</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            External Links
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="https://github.com/SkillDistillery/SD34/blob/main/sql1/images/ERDiagram.png"target="_blank">ER Diagram</a></li>
            <li><a class="dropdown-item" href="https://getbootstrap.com/docs/5.2/components/navbar/"target="_blank">BootStrap</a></li>
            <li><a class="dropdown-item" href="https://github.com/SkillDistillery/SD34/blob/main/SpringMVC/IntroSpringMVC/13_steps.md"target="_blank">13 Steps</a></li>
            <li><a class="dropdown-item" href="https://mvnrepository.com/"target="_blank">MVN Rep</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="https://us02web.zoom.us/j/89671861478?pwd=UkcyQ0VhYU0ycCtEbllYQm5veEhWUT09"target="_blank">GetSkilled</a></li>
            <li><a class="dropdown-item" href="https://us02web.zoom.us/j/81164088712?pwd=TWZ4SFdWeXppYmF2cUZ5MENoZzdDdz09"target="_blank">GetTAHelp</a></li>
          </ul>
        </li>

      </ul>
            <form class="d-flex" action="searchAll.do" method="get">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" type="text" name="keyword">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
<jsp:include page ="bootstrapFoot.jsp" />
</nav>

<!-- Bottom of Page NavBar -->
<nav class="navbar fixed-bottom navbar-light bg-light">

  <div class="container-fluid">
  
    <a class="navbar-brand" href="https://www.linkedin.com/in/daniel-schulenberg-2a0837b6/" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/174/174857.png" width="40" height="40"/>LinkedIn</a>
    <a class="navbar-brand" href="https://github.com/dschulenberg" target="_blank"> <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"width="40" height="40"/>GitHub</a>
    <a class="navbar-brand" href="#"><img src="https://cdn1.vectorstock.com/i/thumb-large/94/65/contact-us-icon-simple-element-vector-27119465.jpg" width="40" height="40"/>Contact Info</a>
    <a class="navbar-brand" href="#"><img src="https://media.istockphoto.com/id/1195568987/vector/write-a-resume-icon-vector-isolated-contour-symbol-illustration.webp?s=612x612&w=is&k=20&c=954fz_sWcoGgfFrt4TABbTzwU0PAbz9p-6wypoNekwA="width="40" height="40"/>Resume</a>
  </div>
</nav>
