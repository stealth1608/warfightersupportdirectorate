<cfif structkeyExists(session,'logged_id') EQ 'NO'>
	<cflocation url="login.cfm" addtoken="false">
	<cfabort>
</cfif>

<cfset fileName = listlast(cgi.script_name,"/") />
<cfset title = 'Warfighter Support Directorate' />
<cfif fileName eq 'index.cfm'>
	<cfset title &= ' | Organization Chart' />
<cfelseif fileName eq 'edit-page-stats.cfm'>
	<cfset title &= ' | Front Page Stats' />
</cfif>
<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<link href="assets/css/all.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/module_27325013768_Our_People_Filter_Tab_Nav_Vue.min.css">
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js//popper.min.js"></script>
		<script src="assets/js/bootstrap.js"></script>
		<meta name="author" content="USACE Geospatial Center">
		<meta name="description" content="USACE AGC Warfighter Support Directorate educate, collect, manage, disseminate and deliver authoritative inter-operable geospatial data to enable terrain dominance across all operational phases and environments.">
		<title><cfoutput>#title#</cfoutput></title>		
		<link rel="shortcut icon" href="assets/images/favicon.png">
		<link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114.png">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<style>
			a.cta_button {
				-moz-box-sizing: content-box !important;
				-webkit-box-sizing: content-box !important;
				box-sizing: content-box !important;
				vertical-align: middle
			}
			.hs-breadcrumb-menu {
				list-style-type: none;
				margin: 0px 0px 0px 0px;
				padding: 0px 0px 0px 0px
			}
			.hs-breadcrumb-menu-item {
				float: left;
				padding: 10px 0px 10px 10px
			}
			.hs-breadcrumb-menu-divider:before {
				content: '›';
				padding-left: 10px
			}
			.hs-featured-image-link {
				border: 0
			}
			.hs-featured-image {
				float: right;
				margin: 0 0 20px 20px;
				max-width: 50%
			}
			@media (max-width: 568px) {
				.hs-featured-image {
					float: none;
					margin: 0;
					width: 100%;
					max-width: 100%
				}
			}

			.hs-screen-reader-text {
				clip: rect(1px, 1px, 1px, 1px);
				height: 1px;
				overflow: hidden;
				position: absolute !important;
				width: 1px
			}

			input[type=number]::-webkit-inner-spin-button {
				-webkit-appearance: none;
			}
			
			.dropdown-menu {
    			min-width: 16rem;
    		}
    		.header .header__inner .logo img {
				display: none;
			}
			#service-content-wrap {
				max-width:100%;
			}
			/* Chrome, Safari, Edge, Opera */
			input::-webkit-outer-spin-button,
			input::-webkit-inner-spin-button {
			  -webkit-appearance: none;
			  margin: 0;
			}
			
			/* Firefox */
			input[type=number] {
			  -moz-appearance: textfield;
			}
		</style>
		<link rel="stylesheet" href="css/module_5930404364_Header_05July.min.css">
		<link rel="stylesheet" href="css/module_6165787046.min.css">
		<link rel="stylesheet" href="css/slick.css">
		<link rel="stylesheet" href="css/slick-theme.css">
		<link rel="stylesheet" href="css/module_6169947814_Core_Value_Box.min.css">
		<link rel="stylesheet" href="css/module_27325013768_Our_People_Filter_Tab_Nav_Vue.min.css">
		<link rel="stylesheet" href="css/global-style.min.css">
		<link rel="stylesheet" href="css/ie-fixes.min.css">
		<link rel="stylesheet" href="css/c10-popup.min.css">
		<link rel="stylesheet" href="css/vue_bundle.min.css">
		<link rel="stylesheet" href="css/layout.min.css">
		<link rel="stylesheet" href="css/fonts.min.css">
		<link rel="stylesheet" href="css/Act-Theme-monochrome.min.css">
		<link rel="stylesheet" href="css/Animate.min.css">
		<link rel="stylesheet" href="css/Construct_Revamp_2018_-_Homepage_Navbar.min.css">
		<link rel="stylesheet" href="css/Construct_Revamp_2018_-_White_Footer.min.css">
		<link rel="stylesheet" href="css/Construct_Revamp_2018_-_Button.min.css">
			
			
		</link>
		<style>
			.header .header__inner .logo img {
				display: none;
			}
			#service-content-wrap {
				max-width:100%;
			}
		</style>
	</head>
	<body>
		<div class="scrollToTop circle"><i class="fa fa-arrow-up"></i></div>