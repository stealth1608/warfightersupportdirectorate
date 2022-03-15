<cfquery datasource="warfightersupport" name="qParentMenu">
	SELECT * FROM tbl_ace_nav WHERE menuParent = 0                        
</cfquery>

<div id="about-what-we-do" style="padding-bottom:0px !important;background: black;">
	<div class="container container-mission">
		
		<div class="one-third" style="float: left;margin-left:70px">
			<div class="icon-left1">
				<div class="topnav" style="background: inherit;padding-top: 12px;">
					  <a href="index.cfm">
						<img src="images/BUCKEYE.png" width="50">
						<!---<span>WARFIGHTER SUPPORT DIRECTORATE<small>Helping you make the right move</small></span>--->
					</a>
				</div>
			</div>	
		</div>
		
		<cfoutput query="qParentMenu">

			<cfif qParentMenu.menuName eq 'SUPPORT'>
				<cfset href 	= 'mailto:dll-wsd-reachback@usace.army.mil' />
				<cfset onClick 	= '' />
				<cfset imageSrc = 'images/question-circle-solid.svg' />

				<cfset one_third_style = 'width: 160px;float:left' />
			<cfelse>
				<cfset href = 'javascript:void(0);' />
				<cfset onClick = 'onclick="myFunction(this)"' />

				<cfif qParentMenu.menuName eq 'BUCKEYE'>
					<cfset imageSrc 		= 'images/plane-solid.svg' />
					<cfset one_third_style 	= 'width: 158px;float: left;' />
				<cfelseif qParentMenu.menuName eq 'FOUNDATION DATA'>
					<cfset imageSrc 		= 'images/layer-group-solid.svg' />
					<cfset one_third_style 	= 'float: left;margin-right: 14px;' />
				<cfelseif qParentMenu.menuName eq 'GEOSERVICES'>
					<cfset imageSrc 		= 'images/globe-americas-solid.svg' />
					<cfset one_third_style 	= 'width: 197px;float:left' />
				<cfelseif qParentMenu.menuName eq 'MISSION AREAS'>
					<cfset imageSrc 		= 'images/map-marked-alt-solid.svg' />
					<cfset one_third_style 	= 'float:left' />
				</cfif>

			</cfif>
			<div class="one-third" style="#one_third_style#">
				<div class="icon-left1">
					<div class="topnav" style="background: inherit;">

						<a href="#href#" #onClick# style="padding-left: 8px;padding-top: 18px;">
							<img src="#imageSrc#" width="20px">
							<h5 style="padding-left: 10px !important;">#qParentMenu.menuName#</h5>&nbsp;
							<i class="fas fa-angle-double-down" style="font-size: 20px;" id="fa_arrow"></i>
						</a>

						<cfquery datasource="warfightersupport" name="qChildMenu">
							SELECT * FROM tbl_ace_nav 
							WHERE menuParent = #qParentMenu.recordID#  
							ORDER by menuName
						</cfquery>

						<cfif qChildMenu.recordCount GT 0>

							<div id="myLinks">
								<cfloop query="#qChildMenu#">
									<a class="frame" href="#qChildMenu.menuHref#" target="_blank">#qChildMenu.menuName#</a>	
								</cfloop>
							</div>

						</cfif>
					</div>
				</div>	
			</div>
		</cfoutput>

		<!---<div class="one-third" style="float: left;    margin-right: 14px;">
			<div class="icon-left1">
				<div class="topnav" style="background: inherit;">
					<a href="javascript:void(0);" onclick="myFunction(this)" style="padding-left: 8px;padding-top: 16px;">
						<img src="images/layer-group-solid.svg" width="25px">
						<h5>FOUNDATION DATA</h5>
					</a>
					<div id="myLinks">
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e" target="_blank">AGC Water Resources Repository (AWR2)</a>
						<a class="frame" href="https://agcwfs.agc.army.mil/CMB_Online/default.html" target="_blank">Common Map Background (CMB)</a>
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/egdmapp/" target="_blank">Enterprise Geospatial Data Management Service (EGDM)</a>
						<a class="frame" href="https://agewebportal.erdc.mil/portal/apps/sites/#/remote-common-map-background" style="pointer-events: none;cursor: default;">Remote Common Map Background (rCMB)<span style="color:red"> - (DREN)</span></a>
						<a class="frame" href="https://agewebportal.erdc.mil/ndvdp/">Topographic Data Management (TDM)<span style="color:red"> - (DREN)</span></a>
					</div>
				</div>
			</div>	
		</div>
		<div class="one-third" style="width: 197px;float:left">
			<div class="icon-left1">
				<div class="topnav" style="background: inherit;">
					<a href="javascript:void(0);" onclick="myFunction(this)" style="padding-left: 8px;padding-top: 16px;">
						<img src="images/globe-americas-solid.svg" width="25px">
						<h5>GEOSERVICES</h5>
					</a>
					<div id="myLinks">
						<a class="frame" href="https://agewebportal.erdc.mil/portal/home/" style="pointer-events: none;cursor: default;">
							Army Geospatial Enterprise (AGE)<span style="color:red"> - (DREN)</span>
						</a>
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e"
							target="_blank">
							AGC Water Resources Repository (AWR2)
						</a>
						<a class="frame" href="https://agcwfs.agc.army.mil/CMB_Online/default.html" target="_blank">
							Common Map Background (CMB)
						</a>
						<a class="frame" href="http://erd-a35alxvm/CMB_lite/dev_index_20210915.html" target="_blank">
							Common Map Background Lite (CMB-L)
						</a>
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/egdmapp/" target="_blank">
							Enterprise Geospatial Data Management Service (EGDM)
						</a>
						<a class="frame" href="https://cac.agc.army.mil/Products/geoglobe/index.cfm" target="_blank">
							GEOGLOBE
						</a>
						<a class="frame" href="https://grid.nga.mil/grid/" target="_blank">
							Geospatial Repository and Data Management System (GRID)<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://uroc-redi.usace.army.mil/sitepages/redi_jecop.aspx" target="_blank">
							Joint Engineer Common Operating Picture (JECOP)<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://map.nga.mil/ " target="_blank">
							Map of the World<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://uroc-redi.usace.army.mil/sites/oev/redi/index.html?map=oev" target="_blank">
							Open Enclave Viewer (OEV)<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://uroc-redi.usace.army.mil/SitePages/REDi_DMZ.html" target="_blank">
							Reachback Engineer Data Integration (REDi)<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://globe.nga.mil/" target="_blank">
							The Globe<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
						<a class="frame" href="https://agewebportal.erdc.mil/ndvdp/" target="_blank">
							Topographic Data Management (TDM)<span style="color:red"> - (DREN)</span>
						</a>
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/portal/home/" target="_blank">
							USACE Common Operating Picture (uCOP)<span style="color:#FFFFFF"> - (EXTERNAL)</span>
						</a>
					</div>
				</div>
			</div>	
		</div>
		<div class="one-third" style="float:left">
			<div class="icon-left1">
				<div class="topnav" style="background: inherit;">
					<a href="javascript:void(0);" onclick="myFunction(this)" style="padding-left: 8px;padding-top: 18px;">
						<img src="images/map-marked-alt-solid.svg" width="25px">
						<h5>MISSION AREAS</h5>
					</a>
					<div id="myLinks">
						<a class="frame" href="http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/3dgeov.cfm" target="_blank">
							3-D Geovisualization (3DGEOV)<span style="color:red"> - (Pending)</span>
						</a>
						<a class="frame" href="http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/3dprm.cfm" target="_blank">
							3-D Plastic Relief Maps (3DPRM)<span style="color:red"> - (Pending)</span>
						</a>
						<a class="frame" href="https://agc-aip.erdc.mil/" target="_blank" style="pointer-events: none;cursor: default;">
							Advanced Imagery Platform (AIP)<span style="color:red"> - (DREN)</span>
						</a>
						<a class="frame" href="http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/aio.cfm" target="_blank">
							AGC Imagery Office (AIO)
						</a>
						<a class="frame" href="https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e" target="_blank">
							AGC Water Resources (AWR2)
						</a>
						<a class="frame" href="https://agewebportal.erdc.mil/" style="pointer-events: none;cursor: default;">
							ARMY Geospatial Enterprise Portal (AGE)<span style="color:red"> - (DREN)</span>
						</a>
						<a class="frame" href="http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/hr3de.cfm" target="_blank">
							BuckEye Enhance Team (BET)
						</a>
						<a class="frame" href="https://cac.agc.army.mil/Products/CommonMapBackground/index.cfm" target="_blank">
							Common Map Background (CMB)
						</a>
						<a class="frame" href="https://cac.agc.army.mil/Products/MapArchive/index.cfm" target="_blank">
							Digital Map Repository (DMR)
						</a>
						<a class="frame" target="_blank" href="https://cac.agc.army.mil/Products/EngineeringRouteStudies/index.cfm">
							Engineering Route Studies (ERS)
						</a>
						<a class="frame" href="https://agewebportal.erdc.mil/portal/apps/sites/#/geospatial-engineering-support-team" style="pointer-events: none;cursor: default;">
							Geospatial-Engineering Support Team (GST)
						</a>
						<a class="frame" href="https://cac.agc.army.mil/Products/BuckEye/index.cfm" target="_blank">
							High Resolution 3D (HR3D)
						</a>
						<a class="frame" href="https://cac.agc.army.mil/Products/HPA/index.cfm" target="_blank">
							Historical Photographic Analysis (HPA)
						</a>
						<a class="frame" href="http://www.ronaldmcqueen.net/warfightersupportdirectorate/site/mst.cfm" target="_blank">
							Military Support Team (MST)
						</a>
						<a class="frame" href="https://agewebportal.erdc.mil/portal/apps/sites/#/remote-common-map-background" style="pointer-events: none;cursor: default;">
							Remote Common Map Background (rCMB)
						</a>
						<a class="frame" href="https://agewebportal.erdc.mil/ndvdp/">
							Topographic Data Management (TDM)
						</a>
						<a class="frame" href="utp.cfm" target="_blank">
							Urban Tactical Planner (UTP)
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="one-third" style="width: 160px;float:left">
			<div class="icon-left1">
				<div class="topnav" style="background: inherit;">
					  <a href="mailto:dll-wsd-reachback@usace.army.mil" style="padding-left: 8px;padding-top: 16px;" target="_blank">
						  <img src="images/question-circle-solid.svg" width="25px">
						  <h5>SUPPORT</h5>
					  </a>
				</div>
			</div>
		</div>--->
	</div>
</div>