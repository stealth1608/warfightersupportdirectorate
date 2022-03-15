<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
        <link href="assets/css/all.css" rel="stylesheet" type="text/css">
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap.js"></script>
    </head>
    <body>
        <div class="header-main">
            <div class="header-inner">
                <div class="logo-main">
                    <a href="index-welcome.cfm">
                        <img src="assets/images/logo.png">
                        <span>WARFIGHTER SUPPORT DIRECTORATE<small>Helping you make the right move</small></span>
                    </a>
                </div>
                <button class="toggleBtn">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div class="nav-main">
                    <ul>
                        <li>
                            <a href="index-welcome.cfm">Home</a>
                        </li>
                        <li>
                            <a href="#">CMB</a>
                        </li>
                        <li>
                            <a href="#">Portal</a>
                        </li>
                        <li>
                            <a href="#">Links</a>
                        </li>
                        <li>
                            <a href="services.cfm">Services</a>
                        </li>
                        <cfif structkeyExists(session,'logged_id')>
                        	<li>
	                            <a href="../admin/logout.cfm">Logout</a>
	                        </li>	
                        </cfif>
                    </ul>

                </div>
            </div>
        </div>