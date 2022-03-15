
		<div class="header-main">
			<div class="header-inner">
				<div class="logo-main">
					<a href="index.cfm">
						<img src="assets/images/logo.png" width="35">
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
						<!---<li>
							<a href="../index-welcome.cfm">Home</a>
						</li>
						<li>
							<a href="#">CMB</a>
						</li>
						<li>
							<a href="#">Portal</a>
						</li>
						<li>
							<a href="#">Links</a>
						</li>--->
						<li>
							<a href="announcements.cfm">Announcements</a>
						</li>
						<li>
							<a href="index.cfm">Org Chart</a>
						</li>
						<li>
							<a href="edit-page-stats.cfm">Stats</a>
						</li>
						<li>
							<a href="navigation_panel.cfm">Navigation Menu</a>
						</li>
						<li>
							<a href="landing_pages_panel.cfm">Landing Pages</a>
						</li>
						<cfif structkeyExists(session,'logged_id')>
							<li>
								<a href="logout.cfm">Logout</a>
							</li>
						</cfif>
					</ul>

				</div>
			</div>
		</div>