

	<cfinclude template="includes/header.cfm">
    <cfinclude template="includes/page_menus.cfm">
	<div id="about">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">GTS</div>
					<h1>GTS</h1>
					<br/>
					<p>On-call Technical Geospatial Support to help with the integration and implementation of geospatial resources at all echelons. Support can be provided at AGC or if needed deploys mobile support teams to units to train soldiers on the latest tools, techniques and procedures for data generation and content management.</p>
				</div>
			</div>
		</div>
	</div>

	<div id="about">
		<div id="about-what-we-do">
			<div class="container container-mission">

				<cfquery datasource="db_wsd_datasource" name="qParentMenu">
					SELECT * FROM tbl_branch 
					WHERE branch_id <> 6   
					ORDER BY branch_name                   
				</cfquery>

				<cfoutput query="qParentMenu">

					<div class="one-third column" data-scrollreveal="enter left and move 150px over 1s">
						<div class="icon-left1">
							<div class="topnav" style="background: inherit;">
		
								<a href="javascript:void(0);" style="text-align: center;" onclick="myFunction(this)">
									<h5 style="font-size: 12px;padding-bottom: 0px;padding-left: 0px;">#qParentMenu.branch_name#</h5><br/>
									<img src="images/arrow-down.png" width="15px">
								</a>
		
								<cfquery datasource="db_wsd_datasource" name="qChildMenu">
									SELECT * FROM users 
									WHERE branch = #qParentMenu.branch_id#
									AND show_on_gts = 1  
									ORDER by firstName
								</cfquery>
		
								<cfif qChildMenu.recordCount GT 0>
		
									<div id="myLinks">
										<cfloop query="#qChildMenu#">

											<cfquery datasource="db_wsd_datasource" name="qdesign">
												SELECT * FROM tbl_designation 
												WHERE id = #qChildMenu.designation#  
											</cfquery>
											<div class="frame">
												<a href="mailto:#qChildMenu.colEmail#" target="_blank" style="color: red;text-decoration: revert;">#qChildMenu.firstName# #qChildMenu.lastName#</a><br/>
												<span>
													<a href="tel:#qChildMenu.phnArea#-#qChildMenu.phnExchange#-#qChildMenu.phnExchange#" target="_blank">#qChildMenu.phnArea#-#qChildMenu.phnExchange#-#qChildMenu.phnExchange#</a>
													#qChildMenu.colAddr# #qChildMenu.colAddrL2# <br/>
													#qChildMenu.colCity# #qChildMenu.colState#		
												</span>
											</div>

										</cfloop>
									</div>
		
								</cfif>

							</div>
						</div>	
					</div>
				</cfoutput>

			</div>
		</div>
		
	</div>


	<cfinclude template="includes/footer.cfm">
	<script type="application/javascript">
		$('.scroll').hide()
	</script>