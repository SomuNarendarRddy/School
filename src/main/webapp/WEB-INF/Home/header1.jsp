<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Vijnana Vihara Nutakki</title>

		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<link href="css/animate.css" rel="stylesheet" media="screen" />
		<link href="css/main.css" rel="stylesheet" media="screen" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.min.css" />
<!-- 		<link href="css/barIndicator.css" rel="stylesheet" /> -->
<!-- 		<link href="css/chosen.css" rel="stylesheet"/> -->
		<link href="fonts/font-awesome.min.css" rel="stylesheet" />
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
		 <link rel="stylesheet" href="css/font-awesome.css">
		
		<!-- Data Tables -->
		<link href="css/datatables/dataTables.bs.min.css" rel="stylesheet"/>
		<link href="css/datatables/autoFill.bs.min.css" rel="stylesheet"/>
		<link href="css/datatables/fixedHeader.bs.css" rel="stylesheet"/>
		<link href="css/datatables/buttons.bs.css" rel="stylesheet"/>
		
<!-- 		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
		<script src="js/jquery.js"></script>
		
		<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
<style type="text/css">
span.has-error, #already_exist, .subjects_error
{
  font-weight:normal;
  color:red;
  margin:0px;
  display: block !important;
  position: absolute;
}
th{text-align: center;}

@media (max-width:660px)
{
	#scrollUp{
		display: none !important; 
	}
}
.loadingajax{
    background-color: #333;
    opacity: 0.9;
    position: fixed;
    left: 0px;
    top: 0px;
    z-index: 99999999999;
    height: 100%;
    width: 100%;
    overflow: hidden;
    background-attachment: fixed;
    background-image: url("img/hloader.gif");
    background-position: center;
    background-repeat: no-repeat;
}
</style>
	</head>  

	<body>
<%
String url =request.getScheme() + "://" + request.getServerName() +      ":" +   request.getServerPort() +  request.getContextPath();

// System.out.println(url);
%>
		 	<%
				 	HttpSession sess = request.getSession(false);
					 
					if (sess.getAttribute("cacheUserBean") == null) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("/HomePage");
						dispatcher.forward(request, response);
					}else{
						 String testId = (String)sess.getAttribute("rolId");
						int rolid22 = Integer.parseInt(testId);
						 if (rolid22 != 1) {
							RequestDispatcher dispatcher = request.getRequestDispatcher("/HomePage");
							dispatcher.forward(request, response);
						}  
					}
			%>  
			
		<!-- Header Start -->
		<header style="height: 70px">

			<!-- Logo starts -->
			<div class="logo">
				<a href="#">
					<a href="dashBoard" style="display:inline !important"><img src="img/VVN.png" style="width: 65px;height: 65px;" alt="AKSHARA BHARATHI VIDYALAYAM">&nbsp; &nbsp; &nbsp; <b style="font-size: 25px;color: white !important">VVN</b></a>
					<span class="menu-toggle hidden-xs">
						<i class="fa fa-bars"></i>
					</span>
				</a>
			</div>
			<div class="pull-right hidden-sm hidden-xs">
				<h1 style="color: white;font-family: sans-serif;margin: 10px;">Vijnana Vihara Nutakki</h1>
			</div>
			<!-- Logo ends -->

			<!-- Mini right nav starts -->
			<div class="pull-right">
				<ul id="mini-nav" class="clearfix">
					<li class="list-box hidden-lg hidden-md hidden-sm" id="mob-nav">
						<a href="#">
							<i class="fa fa-reorder"></i>
						</a>
					</li>
					
				</ul>
			</div>
			<!-- Mini right nav ends -->

		</header>
		<!-- Header ends -->

		<!-- Left sidebar starts -->
		<aside id="sidebar">

			<!-- Menu start -->
			<div id='menu'>
				<ul>
					<li class="">
						<a href='dashBoard'>
							<i class="fa fa-tachometer"></i> <span>Dashboard</span>
<!-- 							<span class="current-page"></span> -->
						</a>
					</li>
					
					<li class='has-sub'>
						<a href='#'><i class="fa fa-cogs"></i><span>General Settings</span></a>
						<ul>
							<li><a href="boardHome"><span>Add Board</span></a></li>
							<li><a href="mediumHome"><span>Medium Creation</span></a></li>
							<li><a href="classHome"><span>Class Creation</span></a></li>
							<li><a href="sectionHome"><span>Section Creation</span></a></li>
							<li><a href="#" id="addClass" onclick="addclass();"><span>Add Class</span></a></li>
							<li><a href='#' id="addfaculty" onclick="addFaculty()"><span>Add Faculty</span></a></li>
							<li><a href='#' id="addfacultySubjects" onclick="addFacultySubjects()"><span>Add Faculty Subjects</span></a></li>
							<li><a href='#' id="subjectHome" onclick="subjectHome()"><span>Add  Subjects</span></a></li>
						</ul>
					</li>
					<li class='has-sub'>
						<a href='#'><i class="fa fa-users"></i><span>Student Details </span></a>
						<ul>
							<li><a href='#' id="addStudent" onclick="addStudent();"><span>Add Student</span></a></li>
							<li><a href='#' id="viewStudent" onclick="viewStudent();"><span>View Student</span></a></li>
							<li><a href='#' onclick="studentFee();"><span>Student Fee</span></a></li>
							<li><a href='#' onclick="viewStudentFee();"><span> View Student Fee</span></a></li>
							<li><a href='#' onclick="importStudent();"><span>Import Student</span></a></li>
							<li><a href='#' onclick="exportStudent();"><span>Export Student</span></a></li>
						</ul>
					</li>
					<li class='has-sub'>
						<a href='#'><i class="fa fa-envelope-open-o"></i><span>Message</span></a>
						<ul>
							<li><a href='#' id="messageDisplayId" onclick="messageDisplay()"><span>Attendance</span></a></li>
							
							<li><a href='#' onclick="viewAttendanceHome()"><span>View Attendance</span></a></li>
							 <li><a href='#' onclick="eventHome()"><span>Notifications</span></a></li>
							<li><a href='#' onclick="viewEvents()"><span>View Notifications</span></a></li> 
						</ul>
					</li>
<!-- 					<li><a href='#' onclick="backUpdata()"><i class="fa fa-database"></i><span>BackupData</span></a></li> -->
				</ul>
		  </div>
			<!-- Menu End -->

			<!-- Freebies Starts -->
			<div class="freebies">
				
				<!-- Sidebar Extras -->      
				<div class="sidebar-addons">
					<ul class="views">
						<!-- <li>
							<i class="fa fa-circle-o text-success"></i>
							<div class="details">
								<a style="color: white;" href="">Review/Feedback</a>
							</div>
						</li> -->
						<li>
							<i class="fa fa-circle-o text-danger"></i>
							<div class="details">
								<a style="color: white;" href="#" onclick="logout()">Logout</a>
							</div>
						</li>
					</ul>
				</div>

			</div>
		</aside>
		<!-- Left sidebar ends -->


	<script type="text/javascript">
	
	function addclass(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/HomeControl1';
	}
	function addStudent(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/studentHome';	
	}
	function addFaculty(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/addFaculty';
	}
	function addFacultySubjects(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/facultySubject';
	}
	function messageDisplay(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/attendanceHome';
	}
	function importStudent(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/importStudent';
	}
	function viewStudent(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/viewStudent';
	}
	function exportStudent(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/exportStudent';
	}
	function studentFee(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/studentFeeHome';
	}
	function logout(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/logoutHome1.htm';
	}
	function viewAttendanceHome(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/viewAttendanceHome';
	}
	function viewStudentFee(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/viewStudentFee';
	}
	function eventHome(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/eventsHome';
	}
	function viewEvents(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/viewEvents';
	}
	function backUpdata(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/backupData';
	}
	function subjectHome(){
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		window.location.href = baseUrl+'/subjectHome';
	}
	
	
 	function searchTable() {
 	    var input, filter, found, table, tr, td, i, j;
 	    input = document.getElementById("search");
 	    filter = input.value.toUpperCase();
 	    table = document.getElementById("itemContainer");
 	    tr = table.getElementsByTagName("tr");
 	    for (i = 0; i < tr.length; i++) {
 	        td = tr[i].getElementsByTagName("td");
 	        for (j = 0; j < td.length; j++) {
 	            if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
 	                found = true;
 	            }
 	        }
 	        if (found) {
 	            tr[i].style.display = "";
 	            found = false;
 	        } else {
 	            tr[i].style.display = "none";
 	        }
 	    }
 	}
	</script>
	 
	