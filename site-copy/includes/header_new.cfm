<cfquery datasource="warfightersupport" name="qUserStory">
	SELECT top 1 * FROM user_story                        
</cfquery>

<cfset fileName = listlast(cgi.script_name,"/") />
<cfset redirectURL = '' />
<cfif fileName NEQ 'index.cfm'>
	<cfset redirectURL = 'index.cfm' />
</cfif>

<cfset currentDate=DateFormat(now(),'Y-m-d') />

<cfquery datasource="warfightersupport" name="announcements">
	SELECT * FROM tbl_announcements
	WHERE GETDATE() < announceLastDay
	ORDER BY announceLastDay ASC
</cfquery>

<cfset title = 'Warfighter Support Directorate' />
<cfif fileName eq '3dgeov.cfm'>
	<cfset title &= ' | 3D GEOV' />
<cfelseif fileName eq '3dprm.cfm'>
	<cfset title &= ' | 3D PRM' />
<cfelseif fileName eq 'mst.cfm'>
	<cfset title &= ' | MST' />
<cfelseif fileName eq 'rcmb.cfm'>
	<cfset title &= ' | rCMB' />
<cfelseif fileName eq 'rtp.cfm'>
	<cfset title &= ' | RTP' />
<cfelseif fileName eq 'hr3d.cfm'>
	<cfset title &= ' | HR3D' />
<cfelseif fileName eq 'lidar.cfm'>
	<cfset title &= ' | LIDAR' />
<cfelseif fileName eq 'cmb.cfm'>
	<cfset title &= ' | CMB' />
<cfelseif fileName eq 'foundation-data.cfm'>
	<cfset title &= ' | Foundation Data' />
</cfif>

<!DOCTYPE html>
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title><cfoutput>#title#</cfoutput></title>
	<meta name="description" content="USACE AGC Warfighter Support Directorate educate, collect, manage, disseminate and deliver authoritative inter-operable geospatial data to enable terrain dominance across all operational phases and environments.">
	<meta name="author" content="USACE Geospatial Center">

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">



	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/skeleton.css" />
	<link rel="stylesheet" href="css/layout.css" />
	<link rel="stylesheet" href="css/ionicons.css">
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="css/settings.css" />
	<link rel="stylesheet" href="css/jquery.fancybox.css" />
	<link rel="stylesheet" href="css/flat_filled_styles.css">
	<!--SVG Animation Styles-->
	<link rel="stylesheet" href="css/retina.css" />
	<link rel="stylesheet" href="chosen/chosen.css">
	<link rel="stylesheet" href="css/search.css" />



	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.png">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
	<style >
		
		.no-csstransforms3d .tiltview.col{
			top: 12% !important;
		}
		
	</style>
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/landing-pages.css">
	<link rel="stylesheet" href="css/announce.css">
<style>
.mobile-container {
  max-width: 480px;
  margin: auto;
  background-color: #555;
  height: 500px;
  color: white;
  border-radius: 10px;
}

.topnav {
  overflow: hidden;
  background-color: #333;
  position: relative;
}

.topnav #myLinks {
  display: none;
}

.topnav a {
  color: #a6a6a6;
  padding: 1px;
  text-decoration: none;
  font-size: 17px;
  display: block;
  font-family: 'OpenSans-Light-webfont';
}

.topnav a.frame {
  border: 1px solid #a6a6a6;
  padding: 5px;
}

.topnav a:hover {
  background-color: rgb(189, 189, 189);
  color: black;
}


.topnav div {
  color: #a6a6a6;
  padding: 1px;
  text-decoration: none;
  font-size: 17px;
  display: block;
  font-family: 'OpenSans-Light-webfont';
}

.topnav div.frame {
  border: 1px solid #a6a6a6;
  padding: 5px;
}

</style>

</head>

<body class="royal_loader" style="background: #292929;color:none">

	<!-- BEGIN OF site header Menu -->
	<header class="page-header navbar page-header-alpha scrolled-white menu-left logo-center topmenu-right" style="padding: 0rem !important;">
		<!-- Begin of menu icon toggler -->
		<button class="navbar-toggler site-menu-icon" <cfif redirectURL NEQ ''>style="top: 56px;"</cfif>>
			<!-- Available class : menu-icon-dot / menu-icon-thick /menu-icon-random -->
			<span class="menu-icon menu-icon-random">
				<span class="bars">
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
				</span>
			</span>
		</button>
		<!-- End of menu icon toggler -->

		<!-- begin of menu wrapper -->
		<div class="all-menu-wrapper" id="navbarMenu">
			
			<!-- Begin of hamburger mainmenu menu -->
			<cfoutput>
			<nav class="navbar-mainmenu">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Collection Branch</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###contact">Contact</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Data Dissemination Branch</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Data Generation Branch</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Engagements Branch</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###about">Focus Areas</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#redirectURL###home">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###about">Mission Statement</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Mission Specific Areas</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Military Support</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###additional_links">Additional Links</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="javascript:void();" onclick="open_Modal()">Announcements</a>
					</li>
				</ul>
			</nav>
			</cfoutput>
			<!-- End of hamburger mainmenu menu -->

			<!-- Begin of sidebar nav menu params class: text-only / icon-only-->
			<nav class="navbar-sidebar icon-only">
				<ul class="navbar-nav" id="qmenu">
					<li class="nav-item" data-menuanchor="home">
						<a href="<cfoutput>#redirectURL#</cfoutput>#home">
							<i class="icon ion-android-home"></i>
							<span class="txt">Home</span>
						</a>
					</li>
					<li class="nav-item" data-menuanchor="contact">
						<a href="https://cac.agc.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture2.png" style="width: 40px;margin-left: 2px;margin-top: 2px;">
							</i>
						</a>
					</li>
					<li class="nav-item" data-menuanchor="contact">
						<a href="https://www.usace.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture3.png" style="width: 35px;">
							</i>
						</a>
					</li>
					<li class="nav-item" data-menuanchor="contact">
						<a href="https://www.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture1.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item">
						<a href="../org-chart" target="_blank">
							<i class="icon">
								<img src="images/org.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item">
						<a href="javascript:void();" onclick="open_Modal()">
							<i class="icon">
								<img src="images/announce.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item">
						<a href="https://arcportal-ucop.usace.army.mil/portal/apps/opsdashboard/index.html#/4f0adacafb0f4bc2a76ebc9d45e912c8" target="_blank">
							<i class="icon">
								<img src="images/chart.png" style="width: 30px;">
							</i>
						</a>
					</li>
				</ul>
			</nav>
		</div>
		<!-- end of menu wrapper -->

	</header>
	<!-- END OF site header Menu-->

	<div class="model-container" id="a">
	</div>

	<div class="model-modal" id="b" style="color: black;">
		<div class="model-header">
			<h4 class="headline">ANNOUNCEMENTS</h4>
			<a href="#" class="cancel">X</a>
		</div>
		<div class="model-content" style="padding:20px">
			<cfif announcements.recordCount GT 0>
				<cfloop query="announcements">
					<cfoutput>
						<div class="model-sub-content">
							<span style="font-size: x-large;font-weight: bolder;">#announcements.announcementTitle#</span>
							<p>#announcements.announcementText#</p>
						</div>
					</cfoutput>
				</cfloop>
			<cfelse>
				<div class="model-sub-content-no-announce">
					<span style="font-size: x-large;font-weight: bolder;">There are no announcements at this time</span>
				</div>
			</cfif>
			
		</div>
	</div>