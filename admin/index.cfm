<cfif structkeyExists(session,'logged_id') EQ 'NO'>
	<cflocation url="login.cfm" addtoken="false">
		<cfabort>
</cfif>

<cfif structkeyexists(FORM,'add_users') and FORM.id EQ '' and structkeyexists(URL,'action') EQ 'NO'>

	<cfset eimg='' />

	<cfif isdefined("form.image") and form.image neq ''>

		<cfset CF_TEMPLATE_PATH=replace(CGI.CF_TEMPLATE_PATH,'index.cfm','','ALL') />
		<cfset full_path=CF_TEMPLATE_PATH&'uploads\' />

		<cfset fName = reReplace(FORM.firstName, "[[:space:]]", "", "ALL") />
		<cfset lName = reReplace(FORM.lastName, "[[:space:]]", "", "ALL") />
		<cfset rank = reReplace(FORM.colRank, "[[:space:]]", "", "ALL") />
		<cffile action="upload" filefield="image" destination="#full_path#"
			accept="image/jpg,image/gif,image/png,image/jpeg" nameconflict="overwrite">
		<cfif LEN(rank)>0>
			<cfset eimg="#rank#_#fName#_#lName#.#cffile.CLIENTFILEEXT#" />
		<cfelse>
			<cfset eimg="#fName#_#lName#.#cffile.CLIENTFILEEXT#" />
		</cfif>
		<cffile action="rename" source="#full_path##cffile.CLIENTFILE#"
				destination="#full_path##eimg#">
				

	</cfif>

	<cfquery name="SaveOrgUsers" datasource="db_wsd_datasource">
		INSERT INTO users(firstName,
		lastName,
		designation,
		branch,
		parent,
		<cfif eimg neq ''>
			image,
		</cfif>
		phnArea,
		phnExchange,
		phnLastFour,
		colAddr,
		colAddrL2,
		colCity,
		colState,
		colZip,
		colEmail,
		colRank)
		VALUES(<cfqueryparam value="#FORM.firstName#" cfsqltype="cf_sql_varchar">,
			<cfqueryparam value="#FORM.lastName#" cfsqltype="cf_sql_varchar">,
				<cfqueryparam value="#FORM.designation#" cfsqltype="cf_sql_varchar">,
				<cfqueryparam value="#FORM.branch#" cfsqltype="cf_sql_integer">,
					<cfqueryparam value="0" cfsqltype="cf_sql_integer">,
						<cfif eimg neq ''>
							<cfqueryparam value="#eimg#" cfsqltype="cf_sql_varchar">,
						</cfif>
						<cfqueryparam value="#FORM.phnArea#" cfsqltype="cf_sql_varchar">,
							<cfqueryparam value="#FORM.phnExchange#" cfsqltype="cf_sql_varchar">,
								<cfqueryparam value="#FORM.phnLastFour#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.colAddr#" cfsqltype="cf_sql_varchar">,
										<cfqueryparam value="#FORM.colAddrL2#" cfsqltype="cf_sql_varchar">,
											<cfqueryparam value="#FORM.colCity#" cfsqltype="cf_sql_varchar">,
												<cfqueryparam value="#FORM.colState#" cfsqltype="cf_sql_varchar">,
													<cfqueryparam value="#FORM.colZip#" cfsqltype="cf_sql_varchar">,
														<cfqueryparam value="#FORM.colEmail#" cfsqltype="cf_sql_varchar">,
														<cfqueryparam value="#FORM.colRank#" cfsqltype="cf_sql_longvarchar">)
	</cfquery>

</cfif>


<cfif structkeyexists(FORM,'add_users') and FORM.id NEQ ''>


	<cfset eimg='' />

	<cfif isdefined("form.image") and form.image neq ''>
		<cfset CF_TEMPLATE_PATH=replace(CGI.CF_TEMPLATE_PATH,'index.cfm','','ALL') />
		<cfset full_path=CF_TEMPLATE_PATH&'uploads\' />

		<cffile action="upload" filefield="image" destination="#full_path#"
			accept="image/jpg,image/gif,image/png,image/jpeg" nameconflict="overwrite">

		<cfset fName = reReplace(FORM.firstName, "[[:space:]]", "", "ALL") />
		<cfset lName = reReplace(FORM.lastName, "[[:space:]]", "", "ALL") />
		<cfset rank = reReplace(FORM.colRank, "[[:space:]]", "", "ALL") />
		<cffile action="upload" filefield="image" destination="#full_path#" accept="image/jpg,image/gif,image/png,image/jpeg" nameconflict="overwrite">
		<cfif LEN(rank)>0>
			<cfset eimg="#rank#_#fName#_#lName#.#cffile.CLIENTFILEEXT#" />
		<cfelse>
			<cfset eimg="#fName#_#lName#.#cffile.CLIENTFILEEXT#" />
		</cfif>
		<cffile action="rename" source="#full_path##cffile.CLIENTFILE#" destination="#full_path##eimg#">

	</cfif>


	<cfquery name="SaveOrgUsers" datasource="db_wsd_datasource">
		UPDATE users
		SET firstName = <cfqueryparam value="#FORM.firstName#" cfsqltype="cf_sql_varchar">,
			lastName = <cfqueryparam value="#FORM.lastName#" cfsqltype="cf_sql_varchar">,
				designation = <cfqueryparam value="#FORM.designation#" cfsqltype="cf_sql_varchar">,
				branch = <cfqueryparam value="#FORM.branch#" cfsqltype="cf_sql_integer">
					<cfif eimg neq ''>
						,image = <cfqueryparam value="#eimg#" cfsqltype="cf_sql_varchar">
					</cfif>
					,phnArea = <cfqueryparam value="#FORM.phnArea#" cfsqltype="cf_sql_varchar">
						,phnExchange = <cfqueryparam value="#FORM.phnExchange#" cfsqltype="cf_sql_varchar">
							,phnLastFour = <cfqueryparam value="#FORM.phnLastFour#" cfsqltype="cf_sql_varchar">
								,colAddr = <cfqueryparam value="#FORM.colAddr#" cfsqltype="cf_sql_varchar">
									,colAddrL2 = <cfqueryparam value="#FORM.colAddrL2#" cfsqltype="cf_sql_varchar">
										,colCity = <cfqueryparam value="#FORM.colCity#" cfsqltype="cf_sql_varchar">
											,colState = <cfqueryparam value="#FORM.colState#"
												cfsqltype="cf_sql_varchar">
												,colZip = <cfqueryparam value="#FORM.colZip#"
													cfsqltype="cf_sql_varchar">
													,colEmail = <cfqueryparam value="#FORM.colEmail#"
														cfsqltype="cf_sql_varchar">
														,colRank = <cfqueryparam value="#FORM.colRank#" cfsqltype="cf_sql_longvarchar">
														WHERE id = <cfqueryparam value="#FORM.id#"
															cfsqltype="cf_sql_integer">
	</cfquery>

</cfif>




<cfif structkeyexists(URL,'action') and URL.action EQ 'edit'>

	<cfquery datasource="db_wsd_datasource" name="qGetUser">
		SELECT * FROM users
		WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
	</cfquery>

	<cfset retString='['>
		<cfif qGetUser.recordCount gte 1>
			<cfloop query="#qGetUser#">

				<cfset retString=retString&'{"id":"#id#","firstName":"#firstName#", "lastName": "#lastName#", "branch": "#branch#", "designation":"#designation#", "parent":"#parent#", "phnArea":"#phnArea#", "phnExchange":"#phnExchange#", "phnLastFour":"#phnLastFour#", "colAddr":"#colAddr#", "colAddrL2":"#colAddrL2#", "colCity":"#colCity#", "colState":"#colState#", "colZip":"#colZip#", "colEmail":"#colEmail#", "image":"#image#", "colRank": "#colRank#"},'>
			</cfloop>
			<cfset retString=left(retString,len(retString)-1)>
		</cfif>
		<cfset retString=retString&"]">

			<cfoutput>
				#retString#
			</cfoutput>

			<cfabort>
</cfif>

<cfif structkeyexists(URL,'action') and URL.action EQ 'delete'>

	<cfquery datasource="db_wsd_datasource" name="qGetUser">
		DELETE FROM users
		WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
	</cfquery>

	<script type="text/javascript">
		window.location.href = "index.cfm";
	</script>

</cfif>


<cfquery name="GetDesignation" datasource="db_wsd_datasource">
	select * from tbl_designation order by sort_order
</cfquery>

<cfquery name="GetBranches" datasource="db_wsd_datasource">
	select * from tbl_branch order by branch_sort_order
</cfquery>

<cfquery name="GetTabs" datasource="db_wsd_datasource">
	select * from tbl_tabsGroup order by sort_order
</cfquery>

<cfset randon_number = RandRange(-1000, 1000) />

<cfset full_path='../admin/uploads/' />

<cfinclude template="includes/header.cfm">
<cfinclude template="includes/navigation.cfm">		

		<div class="body-container-wrapper">
			
			<div class="body-container container-fluid">
				<div class="row-fluid-wrapper row-depth-1 row-number-11 ">
					<div class="row-fluid ">
						<div class="span12 widget-span widget-type-cell builder-wrapper" style=""
							data-widget-type="cell" data-x="0" data-w="12">
							<div class="row-fluid-wrapper row-depth-1 row-number-13" style="margin-top:20px">
								<div class="row-fluid ">
									
									<div class="span12 widget-span widget-type-global_group " style=""
										data-widget-type="global_group" data-x="0" data-w="12">
										<!-- start coded_template: id:27452421007 path:generated_global_groups/27452421006.html -->
										<div class=""
											data-global-widget-path="generated_global_groups/27452421006.html">
											<div class="row-fluid-wrapper row-depth-1 row-number-1 ">
												<div class="row-fluid ">
													
													<div class="span12 widget-span widget-type-custom_widget " style=""
														data-widget-type="custom_widget" data-x="0" data-w="12">
														<div id="hs_cos_wrapper_module_158468848520914"
															class="hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_module"
															style="" data-hs-cos-general-type="widget"
															data-hs-cos-type="module">
															<div class="row">
																<h1 style="text-align: center;margin-left: 19px;font-size: 22px;font-family: 'Roboto', sans-serif;font-weight: 700;" id="selectedBranch"></h1>
															</div>
															<div id="service-content-wrap" class="filtr-container">
																<base-filter>
																	<div class="filter-nav-wrap">
																		<ul id="service-nav" class="nav nav-tabs simplefilter">
																			<cfoutput>
																				<cfset counter=0 />
																				<cfloop query="GetTabs">
																					
																					<cfquery name="GetDesignationSub" datasource="db_wsd_datasource">
																						select * from tbl_designation 
																						where tab_id = <cfqueryparam value="#GetTabs.id#" cfsqltype="cf_sql_integer">
																						order by sort_order
																					</cfquery>
																					<cfif GetDesignationSub.recordCount GT 0>
																						<li class="dropdown fltr-controls">
								      														<div class="dropdown-toggle" data-toggle="dropdown" id="tabName_#reReplace(GetTabs.tab_name, '[ _]+', '_', 'all')#" data-tab="#GetTabs.tab_name#">
								      															#GetTabs.tab_name# <span class="caret"></span>
								      														</div>
							      															<ul class="dropdown-menu">
							      																<cfloop query="GetDesignationSub">
							      																	<li class="fltr-controls <cfif counter EQ 0>filtr-active</cfif>" id="li_#counter#" style="margin-left: 16px;" data-filter=".#reReplace(GetDesignationSub.designation_name, '[ _]+', '_', 'all')#" onclick="setNames('#GetDesignationSub.designation_name#','#reReplace(GetTabs.tab_name, '[ _]+', '_', 'all')#')">#GetDesignationSub.designation_name#</li>
							      																	<cfset counter++ />                       
							      																</cfloop>
								      														</ul>
								    													</li>
								    												<cfelse>
								    													<li class="fltr-controls <cfif counter EQ 0>filtr-active</cfif>">
																							#GetTabs.tab_name#
																						</li>	
																					</cfif>
																					
																				</cfloop>
																				
																			</cfoutput>
																			
																		</ul>
																	</div>
																	<div class="grid-filter">

																		<cfoutput>
																			<cfset counter=0 />
																			<cfloop query="GetDesignation">


																				<cfquery name="getChiefs" datasource="db_wsd_datasource">
																					SELECT a.*, b.branch_name, c.designation_name FROM users a
																					LEFT JOIN tbl_branch b ON a.branch = b.branch_id
																					LEFT JOIN tbl_designation c ON a.designation = c.id
																					WHERE (a.designation = <cfqueryparam
																						value="#GetDesignation.id#"
																						cfsqltype="cf_sql_integer">
																					<cfif len(GetDesignation.branch_id) GT 0>
																					OR a.branch = <cfqueryparam
																						value="#GetDesignation.branch_id#"
																						cfsqltype="cf_sql_integer">
																					</cfif>
																					)
																					AND c.designation_name LIKE '%Chief'
																					ORDER BY a.firstName ASC
																				</cfquery>
																				
																				<cfquery name="getLeads" datasource="db_wsd_datasource">
																					SELECT a.*, b.branch_name, c.designation_name FROM users a
																					LEFT JOIN tbl_branch b ON a.branch = b.branch_id
																					LEFT JOIN tbl_designation c ON a.designation = c.id
																					WHERE (a.designation = <cfqueryparam
																						value="#GetDesignation.id#"
																						cfsqltype="cf_sql_integer">
																					<cfif len(GetDesignation.branch_id) GT 0>
																					OR a.branch = <cfqueryparam
																						value="#GetDesignation.branch_id#"
																						cfsqltype="cf_sql_integer">
																					</cfif>
																					)
																					AND c.designation_name = 'Team Lead'
																					ORDER BY a.firstName ASC
																				</cfquery>
																				
																				<cfquery name="getUsers" datasource="db_wsd_datasource">
																					SELECT a.*, b.branch_name, c.designation_name FROM users a
																					LEFT JOIN tbl_branch b ON a.branch = b.branch_id
																					LEFT JOIN tbl_designation c ON a.designation = c.id
																					WHERE (a.designation = <cfqueryparam
																						value="#GetDesignation.id#"
																						cfsqltype="cf_sql_integer">
																					<cfif len(GetDesignation.branch_id) GT 0>
																					OR a.branch = <cfqueryparam
																						value="#GetDesignation.branch_id#"
																						cfsqltype="cf_sql_integer">
																					</cfif>
																					)
																					AND (c.designation_name NOT LIKE '%Chief'
																					AND c.designation_name != 'Team Lead')
																					ORDER BY a.firstName ASC
																				</cfquery>
																				
																				<cfif getChiefs.recordCount GT 0>
																					<cfloop query="getChiefs">

																						<div
																							class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">

																							<p class="team-quote">
																								#getChiefs.colAddr# <cfif
																									len(getChiefs.colAddrL2)
																									GT 0>
																									<br />#getChiefs.colAddrL2#
																								</cfif>,
																								#getChiefs.colCity#
																								#getChiefs.colState#
																								#getChiefs.colZip#<br />
																								<a target="_blank"
																									href="mailto:#getChiefs.colEmail#">#getChiefs.colEmail#</a><br />
																								<a href="tel:#getChiefs.phnArea#-#getChiefs.phnExchange#-#getChiefs.phnLastFour#">#getChiefs.phnArea#-#getChiefs.phnExchange#-#getChiefs.phnLastFour#</a>
																								<br />
																								<button type="button"
																									class="btn btn-success"
																									onclick='getEditModal(#getChiefs.id#, "#GetDesignation.designation_name#")'
																									title="Click to Edit #getChiefs.firstName# #getChiefs.lastName#">Edit</button>
																								<button type="button"
																									class="btn btn-danger"
																									onclick='getDeleteModal(#getChiefs.id#, "#GetDesignation.designation_name#")'
																									title="Click to Delete #getChiefs.firstName# #getChiefs.lastName#">Delete</button>

																							</p>
																							<div
																								class="filter-image-wrapper">
																								
																								<cfif getChiefs.image NEQ ''>
																									<cfset theDir	= GetDirectoryFromPath(GetCurrentTemplatePath()) /> 
																									<cfset theFile	= theDir & '../admin/uploads/'&getChiefs.image />
																									<cfif FileExists(theFile) EQ 'YES'>
																										<cfset varImage = '../admin/uploads/'&getChiefs.image&'?var='&randon_number />
																									<cfelse>
																										<cfset varImage = '../admin/uploads/no-image.png' />		
																									</cfif>
																								<cfelse>
																									<cfset varImage = '../admin/uploads/no-image.png' />
																								</cfif>
																								<img class="filter-image"
																									src="#varImage#"
																									alt="#getChiefs.firstName# #getChiefs.lastName#"
																									width="360"
																									height="360">


																							</div>
																							<div class="team-info">
																								<span
																									class="team-name">#getChiefs.colRank# #getChiefs.firstName#
																									#getChiefs.lastName#</span>
																								<span
																									class="team-position">#getChiefs.designation_name#<br>
																									#getChiefs.branch_name#</span>
																							</div>

																						</div>

																					</cfloop>

																				</cfif>
																				
																				<cfif getLeads.recordCount GT 0>
																					<cfloop query="getLeads">

																						<div
																							class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">

																							<p class="team-quote">
																								#getLeads.colAddr# <cfif
																									len(getLeads.colAddrL2)
																									GT 0>
																									<br />#getLeads.colAddrL2#
																								</cfif>,
																								#getLeads.colCity#
																								#getLeads.colState#
																								#getLeads.colZip#<br />
																								<a target="_blank"
																									href="mailto:#getLeads.colEmail#">#getLeads.colEmail#</a><br />
																								<a href="tel:#getLeads.phnArea#-#getLeads.phnExchange#-#getLeads.phnLastFour#">#getLeads.phnArea#-#getLeads.phnExchange#-#getLeads.phnLastFour#</a>
																								<br />
																								<button type="button"
																									class="btn btn-success"
																									onclick='getEditModal(#getLeads.id#, "#GetDesignation.designation_name#")'
																									title="Click to Edit #getLeads.firstName# #getLeads.lastName#">Edit</button>
																								<button type="button"
																									class="btn btn-danger"
																									onclick='getDeleteModal(#getLeads.id#, "#GetDesignation.designation_name#")'
																									title="Click to Delete #getLeads.firstName# #getLeads.lastName#">Delete</button>

																							</p>
																							<div
																								class="filter-image-wrapper">
																								
																								<cfif getLeads.image NEQ ''>
																									<cfset theDir	= GetDirectoryFromPath(GetCurrentTemplatePath()) /> 
																									<cfset theFile	= theDir & '../admin/uploads/'&getLeads.image />
																									<cfif FileExists(theFile) EQ 'YES'>
																										<cfset varImage = '../admin/uploads/'&getLeads.image&'?var='&randon_number >
																									<cfelse>
																										<cfset varImage = '../admin/uploads/no-image.png' />		
																									</cfif>
																								<cfelse>
																									<cfset varImage = '../admin/uploads/no-image.png' />
																								</cfif>
																								<img class="filter-image"
																									src="#varImage#"
																									alt="#getLeads.firstName# #getLeads.lastName#"
																									width="360"
																									height="360">


																							</div>
																							<div class="team-info">
																								<span
																									class="team-name">#getLeads.colRank# #getLeads.firstName#
																									#getLeads.lastName#</span>
																								<span
																									class="team-position">#getLeads.designation_name#<br>
																									#getLeads.branch_name#</span>
																							</div>

																						</div>

																					</cfloop>

																				</cfif>
																				
																				<cfif getUsers.recordCount GT 0>
																					<cfloop query="getUsers">

																						<div
																							class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">

																							<p class="team-quote">
																								#getUsers.colAddr# <cfif
																									len(getUsers.colAddrL2)
																									GT 0>
																									<br />#getUsers.colAddrL2#
																								</cfif>,
																								#getUsers.colCity#
																								#getUsers.colState#
																								#getUsers.colZip#<br />
																								<a target="_blank"
																									href="mailto:#getUsers.colEmail#">#getUsers.colEmail#</a><br />
																								<a href="tel:#getUsers.phnArea#-#getUsers.phnExchange#-#getUsers.phnLastFour#">#getUsers.phnArea#-#getUsers.phnExchange#-#getUsers.phnLastFour#</a>
																								<br />
																								<button type="button"
																									class="btn btn-success"
																									onclick='getEditModal(#getUsers.id#, "#GetDesignation.designation_name#")'
																									title="Click to Edit #getUsers.firstName# #getUsers.lastName#">Edit</button>
																								<button type="button"
																									class="btn btn-danger"
																									onclick='getDeleteModal(#getUsers.id#, "#GetDesignation.designation_name#")'
																									title="Click to Delete #getUsers.firstName# #getUsers.lastName#">Delete</button>

																							</p>
																							<div
																								class="filter-image-wrapper">
																								
																								<cfif getUsers.image NEQ ''>
																									<cfset theDir	= GetDirectoryFromPath(GetCurrentTemplatePath()) /> 
																									<cfset theFile	= theDir & '../admin/uploads/'&getUsers.image />
																									<cfif FileExists(theFile) EQ 'YES'>
																										<cfset varImage = '../admin/uploads/'&getUsers.image&'?var='&randon_number >
																									<cfelse>
																										<cfset varImage = '../admin/uploads/no-image.png' />		
																									</cfif>
																								<cfelse>
																									<cfset varImage = '../admin/uploads/no-image.png' />
																								</cfif>
																								<img class="filter-image"
																									src="#varImage#"
																									alt="#getUsers.firstName# #getUsers.lastName#"
																									width="360"
																									height="360">


																							</div>
																							<div class="team-info">
																								<span
																									class="team-name">#getUsers.colRank# #getUsers.firstName#
																									#getUsers.lastName#</span>
																								<span
																									class="team-position">#getUsers.designation_name#<br>
																									#getUsers.branch_name#</span>
																							</div>

																						</div>

																					</cfloop>

																				</cfif>
																				
																				<div class="filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">
																					<div
																						class="filter-image-wrapper">
																						<img class="filter-image"
																							src="add.png"
																							alt="charan"
																							width="360"
																							height="360"
																							onclick="getAddModal(#GetDesignation.id#, '#GetDesignation.designation_name#')"
																							title="Click to Add #GetDesignation.designation_name#">
																					</div>
																				</div>

																				<cfset counter++ />
																			</cfloop>
																		</cfoutput>





																	</div>
																</base-filter>
															</div>
														</div>
													</div>
													<!--end widget-span -->
												</div>
												<!--end row-->
											</div>
											<!--end row-wrapper -->
										</div>
										<!-- end coded_template: id:27452421007 path:generated_global_groups/27452421006.html -->
									</div>
									<!--end widget-span -->
								</div>
								<!--end row-->
							</div>
							<!--end row-wrapper -->
						</div>
						<!--end widget-span -->
					</div>
					<!--end row-->
				</div>
				<!--end row-wrapper -->
			</div>
			<!--end body -->
		</div>
		<!--end footer wrapper -->
		
		<div class="container">
			<div class="modal" tabindex="-1" role="dialog" id="callModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Add Subordinate</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<form id="cust_add_log_form" action="index.cfm" method="post" enctype="multipart/form-data">
							<input type="hidden" name="parentID" id="parentID" value="" />
							<input type="hidden" name="id" id="id" value="" />
							<input type="hidden" name="delete_flag" id="delete_flag" value="N" />
							<div class="modal-body">
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Rank</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colRank" id="colRank" value=""
											placeholder="Rank">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">First Name</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="firstName" id="firstName" value=""
											placeholder="First Name" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Last Name</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="lastName" id="lastName" value=""
											placeholder="Last Name" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Position</label>
									<div class="col-lg-9 col-xl-9">
										<select class="form-control" id="drop_desig" name="designation">
											<option value="">-- Select --</option>
											<cfoutput>
												<cfloop query="GetDesignation">
													<option value="#id#">#designation_name#</option>
												</cfloop>
											</cfoutput>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Branch</label>
									<div class="col-lg-9 col-xl-9">
										<select class="form-control" id="branch" name="branch" required>
											<option value="">-- Select --</option>
											<cfoutput>
												<cfloop query="getBranches">
													<option value="#branch_id#">#branch_name#</option>
												</cfloop>
											</cfoutput>
										</select>
									</div>
								</div>
								<div class="form-group row" id="img_div">
									<label class="col-xl-3 col-lg-3 col-form-label">Profile Photo</label>
									<div class="col-lg-9 col-xl-9">
										<input type="file" class="form-control" name="image" id="image" />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Phone No</label>
									<div class="col-lg-3 col-xl-3">
										<input type="number" class="form-control" oninput="maxLengthCheck(this)"
											maxlength="3" name="phnArea" id="phnArea" value="" placeholder="Area"
											required>
									</div>
									<div class="col-lg-3 col-xl-3">
										<input type="number" class="form-control" oninput="maxLengthCheck(this)"
											maxlength="3" name="phnExchange" id="phnExchange" value=""
											placeholder="Exchange" required>
									</div>
									<div class="col-lg-3 col-xl-3">
										<input type="number" class="form-control" oninput="maxLengthCheck(this)"
											maxlength="4" name="phnLastFour" id="phnLastFour" value=""
											placeholder="Last Four" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Address</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colAddr" id="colAddr" value=""
											placeholder="Address 1" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Address 2</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colAddrL2" id="colAddrL2" value=""
											placeholder="Address 2" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">City</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colCity" id="colCity" value=""
											placeholder="City" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">State</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colState" id="colState" value=""
											placeholder="State" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Zip</label>
									<div class="col-lg-9 col-xl-9">
										<input type="text" class="form-control" name="colZip" id="colZip" value=""
											placeholder="Zip" required>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-xl-3 col-lg-3 col-form-label">Email</label>
									<div class="col-lg-9 col-xl-9">
										<input type="email" class="form-control" name="colEmail" id="colEmail" value=""
											placeholder="Email Address" required>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="Submit" name="add_users" id="submit_btn"
									class="btn btn-primary">Save</button>
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>

	<cfinclude template="includes/footer.cfm" >
	<script>
		function maxLengthCheck(object) {
			if (object.value.length > object.maxLength)
				object.value = object.value.slice(0, object.maxLength)
		}
		$(document).ready(function () {
			$('#phnArea').keydown(function (event) {
				if (this.value.length == this.maxLength && event.which != 8 && event.which != 13 && event
					.which != 46 && event.which != 37 && event.which != 39) {
					event.preventDefault();
					$('#phnExchange').focus();
				}
			});

			$('#phnExchange').keydown(function (event) {
				if (this.value.length == this.maxLength && event.which != 8 && event.which != 13 && event
					.which != 46 && event.which != 37 && event.which != 39) {
					event.preventDefault();
					$('#phnLastFour').focus();
				}
			});

			$('.toggleBtn').removeClass('active');
			$('.toggleBtn').click(function (e) {
				$(this).toggleClass('active');
				$('.nav-main').slideToggle();
			});

			$('#li_0').click();
		});

		function getAddModal(val, desig_name) {
			$('.modal-title').html('Add ' + desig_name);
			$('#id').val('');
			$('#colRank').val();
			$('#firstName').val('');
			$('#lastName').val('');
			$('#image').prop('required', true);
			//$('#designation').val(val);
			$('#drop_desig').val(val);
			$('#branch').val('');
			$('#phnArea').val('');
			$('#phnExchange').val('');
			$('#phnLastFour').val('');
			$('#colAddr').val('');
			$('#colAddrL2').val('');
			$('#colCity').val('');
			$('#colState').val('');
			$('#colZip').val('');
			$('#colEmail').val('');
			$('#parentID').val(val);
			$('#callModal').modal('show');
		}

		function getEditModal(id, desig_name) {
			$('.modal-title').html('Edit ' + desig_name);
			$('#id').val(id);
			$.ajax({
				type: "POST",
				url: "index.cfm?action=edit&id=" + id,
				cache: false,
				async: false,
				success: function (data) {
					var data = $.parseJSON(data);
					$('#id').val();
					$('#colRank').val(data[0].colRank);
					$('#firstName').val(data[0].firstName);
					$('#lastName').val(data[0].lastName);
					$('#image').prop('required', false);
					//$('#designation').val(data[0].designation);
					$('#branch').val(data[0].branch);
					$('#drop_desig').val(data[0].designation);
					$('#position').val(data[0].position);
					$('#phnArea').val(data[0].phnArea);
					$('#phnExchange').val(data[0].phnExchange);
					$('#phnLastFour').val(data[0].phnLastFour);
					$('#colAddr').val(data[0].colAddr);
					$('#colAddrL2').val(data[0].colAddrL2);
					$('#colCity').val(data[0].colCity);
					$('#colState').val(data[0].colState);
					$('#colZip').val(data[0].colZip);
					$('#colEmail').val(data[0].colEmail);
					if(data[0].image != '')
				     {
				     	$('#image').removeAttr('required');
				     }
				}
			});
			$('#img_div').show();
			$('#callModal').modal('show');
		}

		function getDeleteModal(id) {
			if (confirm('Are You Sure??')) {
				$('#delete_flag').val('Y');
				window.location.href = "index.cfm?action=delete&id=" + id;
				/*$.ajax({
				type: "POST",
				url: "index.cfm?action=delete&id="+id,
				cache: false,
				async: false,
				success: function(data){
				location.reload(true);
				}
				});*/
			}
		}
		
		function setNames(selectedList,tabName)
		{	
			$('#selectedBranch').html(selectedList+'&nbsp;<span class="caret"></span>');
		}
	</script>

</html>