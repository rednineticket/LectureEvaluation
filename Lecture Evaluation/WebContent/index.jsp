<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Jin-Hong's Web</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> 
		<a class="navbar-brand" href="index.jsp">Jin-Hong's Website</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			<span class="navbar-toggler-icon"></span>	
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Main</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
						Edit Reg
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="#">Login</a>
						<a class="dropdown-item" href="#">Register</a>
						<a class="dropdown-item" href="#">Log Out</a>
					</div>
				</li>
			</ul>		
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="Enter Here" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<section class="container">
		<form method="get" action="./index.jsp" class="form-inline mt-3">
			<select name="LectureDivide" class="form-control mx-1 mt-2">
				<option value="All">All</option>
				<option value="All">Major</option>
				<option value="All">Arts</option>
				<option value="All">Others</option>
				
			</select>
			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="Enter here">
			<button type="submit" class="btn btn-primary mx-1 mt-2">search</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">Register</a>
			<a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">Report</a>	
		</form>	
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">ComputerOS&nbsp;<small>Jin</small></div>
					<div class="col-4 text-right">
						Total<span style="color: red;">A</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					This is really good.&nbsp;<small>(2017 fall)</small>
				</h5>
				<p class="card-text">So easy so didn't learn much but good grades.</p>
				<div class="row">
					<div class="col-9 text-left">
						Grades<span style="color: red;">A</span>
						Easiness<span style="color: red;">A</span>
						Lecture<span style="color: red;">B</span>
						<span style="color: green;">(Likes:15)</span>							
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('Like?')" href="./likeAction.jsp?evaluationID">Like</a>
						<a onclick="return confirm('Delete?')" href="./deleteAction.jsp?evaluationID">Delete</a>
					</div>					
				</div>
			</div>	
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">Linux admin&nbsp;<small>John</small></div>
					<div class="col-4 text-right">
						Total<span style="color: red;">F</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					This guy was the worst.&nbsp;<small>(2016 fall)</small>
				</h5>
				<p class="card-text">He taught nothing. he just reads presentation slides</p>
				<div class="row">
					<div class="col-9 text-left">
						Grades<span style="color: red;">F</span>
						Easiness<span style="color: red;">C</span>
						Lecture<span style="color: red;">F</span>
						<span style="color: green;">(Likes:99)</span>							
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('Like?')" href="./likeAction.jsp?evaluationID">Like</a>
						<a onclick="return confirm('Delete?')" href="./deleteAction.jsp?evaluationID">Delete</a>
					</div>					
				</div>
			</div>	
		</div>
		<div class="card bg-light mt-3">
			<div class="card-header bg-light">
				<div class="row">
					<div class="col-8 text-left">Weblogic&nbsp;<small>Michael</small></div>
					<div class="col-4 text-right">
						Total<span style="color: red;">B+</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				<h5 class="card-title">
					He was pretty good.&nbsp;<small>(2017 fall)</small>
				</h5>
				<p class="card-text">Not bad at all.</p>
				<div class="row">
					<div class="col-9 text-left">
						Grades<span style="color: red;">B</span>
						Easiness<span style="color: red;">A</span>
						Lecture<span style="color: red;">B</span>
						<span style="color: green;">(Likes:15)</span>							
					</div>
					<div class="col-3 text-right">
						<a onclick="return confirm('Like?')" href="./likeAction.jsp?evaluationID">Like</a>
						<a onclick="return confirm('Delete?')" href="./deleteAction.jsp?evaluationID">Delete</a>
					</div>					
				</div>
			</div>	
		</div>
	</section>

	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">평가등록</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./evaluationRegisterAction.jsp" method="post">
						<div class="form-row">
							<div class="form-group col-sm-6">
								<label>Lecture</label>
								<input type="text" name="LectureName" class="form-control" maxlength="20">
							</div>
							<div class="form-group col-sm-6">
								<label>Professor</label>
								<input type="text" name="professorName" class="form-control" maxlength="20">							
							</div>
						</div>
							<div class="form-row">
								<div class="form-group col-sm-4">
									<label>Year</label>
									<select name="LectureYear" class="form-control">
										<option value="2011">2011</option>
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
										<option value="2018" selected>2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021">2021</option>
									</select>
								</div>
								<div class="form-group col-sm-4">
									<label>Semester</label>
									<select name="semesterDivide" class="form-control">
										<option value="1학기" selected>1학기</option>
										<option value="여름학기" >여름학기</option>
										<option value="2학기" >2학기</option>
										<option value="겨울학기" >겨울학기</option>										
									</select>								
								</div>		
								<div class="form-group col-sm-4">
									<label>LectureDiv</label>
									<select name="lectureDivide" class="form-control">
										<option value="major" selected>major</option>
										<option value="Art">Art</option>
										<option value="Other">Other</option>
									
									</select>								
								</div>										
							</div>
							<div class="form-group">
								<label>Title</label>
								<input type="text" name="evaluationTime" class="form-control" maxlength="30">								
							</div>
							<div class="form-group">
								<label>Content</label>
								<textarea name="evaluationContent" class="form-control" maxlength="2048" style="height: 220px;"></textarea>
							</div>		
							<div class="form-row">
								<div class="form-group col-sm-3">
									<label>Total</label>
									<select name="totalScore" class="form-control">
										<option value="A" selected>A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="F">F</option>										
									</select>
								</div>
								<div class="form-group col-sm-3">
									<label>Grades</label>
									<select name="creditScore" class="form-control">
										<option value="A" selected>A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="F">F</option>										
									</select>
								</div>
								<div class="form-group col-sm-3">
									<label>Easiness</label>
									<select name="comfortableScore" class="form-control">
										<option value="A" selected>A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="F">F</option>										
									</select>
								</div>
								<div class="form-group col-sm-3">
									<label>Lecture</label>
									<select name="lectureScore" class="form-control">
										<option value="A" selected>A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="F">F</option>										
									</select>
								</div>																
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismmiss="modal">cancel</button>
								<button type="submit" class="btn btn-primary">submit</button>
							
							
							</div>				
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">Report</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="./reportAction.jsp" method="post">						
							<div class="form-group">
								<label>Report Title</label>
								<input type="text" name="reportTitle" class="form-control" maxlength="30">								
							</div>
							<div class="form-group">
								<label>Report Content</label>
								<textarea name="reportContent" class="form-control" maxlength="2048" style="height: 220px;"></textarea>
							</div>		
						
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismmiss="modal">cancel</button>
								<button type="submit" class="btn btn-danger">report</button>
							
							
							</div>				
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
		Copyright &copy; 2018 Jin-Hong All Rights Reserved.
	</footer>
	<!-- jquery javscript -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/popper.js"></script>
	
	
	
</body>
</html>