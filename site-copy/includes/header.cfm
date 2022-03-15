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
<!--- 	<link rel="stylesheet" href="css/flat_filled_styles.css"> --->
	<!--SVG Animation Styles-->
<!--- 	<link rel="stylesheet" href="css/retina.css" /> --->
	<link rel="stylesheet" href="chosen/chosen.css">
	<link rel="stylesheet" href="css/hamburger-style.css">



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





.menu-toggler {
  position: absolute;
  display: block;
  top:0;
  bottom:0;
  right:0;
  left:0;
  margin:auto;
  width:40px;
  height:40px;
  z-index:2;
  opacity:0;
  cursor:pointer;
}
.menu-toggler:hover + label,
.menu-toggler:hover + label:before,
.menu-toggler:hover + label:after,{
  background: white;
}
.menu-toggler:checked + label {
  background: transparent;
}
.menu-toggler:checked + label:before,
.menu-toggler:checked + label:after,{
  top:0;
  width:40px;
  transform-origin: 50% 50%;
}
.menu-toggler:checked + label:before {
  transform: rotate(45deg) translateY(-15px) translateX(-15px);
}
.menu-toggler:checked + label:after {
  transform: rotate(-45deg);
}
.menu-toggler:checked ~ ul .menu-item { 
  opacity: 1;
}
.menu-toggler:checked ~ ul .menu-item:nth-child(1) {
  transform: rotate(0deg) translate(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(2) {
  transform: rotate(60deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(3) {
  transform: rotate(120deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(4) {
  transform: rotate(180deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(5) {
  transform: rotate(240deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item:nth-child(6) {
  transform: rotate(300deg) translateX(-110px);
}
.menu-toggler:checked ~ ul .menu-item a {
  pointer-events:auto;
}
.menu-toggler + label {
  width: 40px;
  height: 5px;
  display: block;
  z-index: 1;
  border-radius: 2.5px;
  background: rgba(230, 239, 250, 0.9);
  transition: transform 0.5s top 0.5s;
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
}
.menu-toggler + label:before,
.menu-toggler + label:after {
  width: 40px;
  height: 5px;
  display: block;
  z-index: 1;
  border-radius: 2.5px;
  background: rgba(255, 255, 255, 0.7);
  transition: transform 0.5s top 0.5s;
  content: "";
  position: absolute;
  display: block;
  left: 0;
}
.menu-toggler + label:before {
  top: 10px;
}
.menu-toggler + label:after {
  top: -10px;
}
.menu-item:nth-child(1) a {
  transform: rotate(0deg);
}
.menu-item:nth-child(2) a {
  transform: rotate(-60deg);
}
.menu-item:nth-child(3) a {
  transform: rotate(-120deg);
}
.menu-item:nth-child(4) a {
  transform: rotate(-180deg);
}
.menu-item:nth-child(5) a {
  transform: rotate(-240deg);
}
.menu-item:nth-child(6) a {
  transform: rotate(-300deg);
}
.menu-item {
    position: fixed;
    display: block;
    top: 150px;
    bottom: 0;
	right: 150px;
    margin: auto;
    width: 80px;
    height: 80px;
    opacity: 0;
    transition: 0.5s;
    z-index: 1000;
}
	.menu-item a {
    display: block;
    width: inherit;
    height: inherit;
    line-height: 80px;
    color: rgba(255, 255, 255, 0.7);
    /* background: rgba(230, 230, 250, 0.7); */
    border-radius: 50%;
    text-align: center;
    text-decoration: none;
    font-size: 40px;
    pointer-events: none;
    transition: 0.2s;
    border: solid 1px rgba(255, 255, 255, 0.2);

}
.menu-item a:hover {
  box-shadow: 0 0 0 2px rgba(255, 255, 255, 0.3);
  color: white;
  background: rgba(255, 255, 255, 0.3);
  font-size: 44.44px
}

</style>

</head>

<body class="royal_loader">

	<!-- BEGIN OF site header Menu -->
	<header class="page-header navbar page-header-alpha scrolled-white menu-left logo-center topmenu-right">
		<!-- Begin of menu icon toggler -->
		<!---<button class="navbar-toggler site-menu-icon" <cfif redirectURL NEQ ''>style="top: 56px;"</cfif>>
			<!-- Available class : menu-icon-dot / menu-icon-thick /menu-icon-random -->
			<span class="menu-icon menu-icon-random">
				<span class="bars">
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
				</span>
			</span>
		</button>--->
		<!-- End of menu icon toggler -->

		<div class="hamburger">
			<div class="hamburger--container">
				<div class="hamburger--bars">
		
				</div>
			</div>
		</div>

		<div class="fsmenu">
			<div class="fsmenu--container">
				<div class="fsmenu--text-block">
					<div class="fsmenu--text-container">
						<ul class="fsmenu--list" style="margin-top: -50px;">
							<li class="fsmenu--list-element">
								<a href="<cfoutput>#redirectURL#</cfoutput>">
									<span>Home</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>
									<span>Home</span>

								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/home.jpg">
									</div>	
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Announcements</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>
									<span>Announcements</span>

								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/age1.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Catalog Map</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
									<span>Catalog Map</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/pack.png">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Data</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
									<span>Data</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/data_generation_br.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Defence Research & Engineering Network (DREN)</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>
									<span>Defence Research & Engineering Network (DREN)</span>

								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/millitary_support.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Imagery</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
									<span>Imagery</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/img2_2.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Products</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
									<span>Products</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/contact.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Services</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
									<span>Services</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/mission_statement.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Support</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
									<span>Support</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/Training_Support.jpg">
									</div>
								</div>
							</li>
							<li class="fsmenu--list-element">
								<a href="#">
									<span>Additional Links</span>
								</a>
								<div class="fsmenu--scrolling-text">
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
									<span>Additional Links</span>
								</div>
								<div class="fsmenu--link-img">
									<div class="fsmenu--img-container">
										<img src="images/collection_br.jpg">
									</div>
								</div>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>




		<!-- begin of menu wrapper -->
		<div class="all-menu-wrapper" id="navbarMenu">
			
			<!-- Begin of hamburger mainmenu menu -->
			<cfoutput>
			<!---<nav class="navbar-mainmenu">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###contact">Announcements</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">Catalog Map</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">
							Data &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">
							Defence Research & Engineering Network (DREN) &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###about">
							Imagery &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#redirectURL###home">
							Products &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###about">
							Services &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###work">
							Support &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#redirectURL###additional_links">
							Additional Links &nbsp;
							<img src="images/arrow-down.png" width="15px">
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="javascript:void();" onclick="open_Modal()"></a>
					</li>
				</ul>
			</nav>--->
			</cfoutput>
			<!-- End of hamburger mainmenu menu -->

			<!-- Begin of sidebar nav menu params class: text-only / icon-only-->
			<nav class="menu">
				<input checked="checked" class="menu-toggler" type="checkbox">
				<label for="menu-toggler"></label>
				<ul>
				  <li class="menu-item">
					<a href="https://cac.agc.army.mil/" target="_blank" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/Picture2.png" style="width: 40px;margin-left: 2px;margin-top: 2px;">
						</i>
					</a>
				  </li>
				  <li class="menu-item">
					<a href="https://www.usace.army.mil/" target="_blank" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/Picture3.png" style="width: 35px;">
						</i>
					</a>
				  </li>
				  <li class="menu-item">
					<a href="https://www.army.mil/" target="_blank" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/Picture1.png" style="width: 30px;">
						</i>
					</a>
				  </li>
				  <li class="menu-item">
					<a href="../org-chart" target="_blank" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/org.png" style="width: 30px;">
						</i>
					</a>
				  </li>
				  <li class="menu-item">
					<a href="javascript:void();" onclick="open_Modal()" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/bell.png" style="width: 30px;">
						</i>
					</a>
				  </li>
				  <li class="menu-item">
					<a href="https://arcportal-ucop.usace.army.mil/portal/apps/opsdashboard/index.html#/4f0adacafb0f4bc2a76ebc9d45e912c8" target="_blank" style="background:rgba(255, 255, 255, 0.2)">
						<i class="icon">
							<img src="images/chart.png" style="width: 30px;">
						</i>
					</a>
				  </li>
				</ul>
			</nav>
			<nav class="navbar-sidebar icon-only" <cfif fileName NEQ 'index.cfm'> style="top:32%" <cfelse> style="top:31%" </cfif>>
				<ul class="navbar-nav" id="qmenu">
					<li class="nav-item" data-menuanchor="home">
						<a href="<cfoutput>#redirectURL#</cfoutput>#home">
							<i class="icon ion-android-home"></i>
							<span class="txt">Home</span>
						</a>
					</li>
					<li class="nav-item" data-menuanchor="home">
						<a href="<cfoutput>#redirectURL#</cfoutput>#home">
							<i class="icon ion-android-search"></i>
							<span class="txt">Home</span>
						</a>
					</li>
					<li class="nav-item" data-menuanchor="home">
						<a href="javascript:void(0);" onclick="Get_down_menus(this)" title="Click to Show/Hide Additional Menus">
							<i class="icon ion-android-arrow-down"></i>
							<span class="txt">Down Menus</span>
						</a>
					</li>
					<li class="nav-item cls_hide" data-menuanchor="contact" style="display:none">
						<a href="https://cac.agc.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture2.png" style="width: 40px;margin-left: 2px;margin-top: 2px;">
							</i>
						</a>
					</li>
					<li class="nav-item cls_hide" data-menuanchor="contact" style="display:none">
						<a href="https://www.usace.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture3.png" style="width: 35px;">
							</i>
						</a>
					</li>
					<li class="nav-item cls_hide" data-menuanchor="contact" style="display:none">
						<a href="https://www.army.mil/" target="_blank">
							<i class="icon">
								<img src="images/Picture1.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item cls_hide" style="display:none">
						<a href="../org-chart" target="_blank">
							<i class="icon">
								<img src="images/org.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item cls_hide" style="display:none">
						<a href="javascript:void();" onclick="open_Modal()">
							<i class="icon">
								<img src="images/bell.png" style="width: 30px;">
							</i>
						</a>
					</li>
					<li class="nav-item cls_hide" style="display:none">
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