<cfquery name="GetDesignation" datasource="warfightersupport">
	select * from tbl_designation order by sort_order
</cfquery>

<cfquery name="GetTabs" datasource="warfightersupport">
	select * from tbl_tabsGroup order by sort_order
</cfquery>

<cfset full_path = '../admin/uploads/'/>
<cfset randon_number = RandRange(-1000, 1000) />

<cfinclude template="includes/header.cfm" />
<cfinclude template="includes/navigation.cfm" />	
			
<div class="body-container-wrapper">
	<div class="body-container container-fluid">
		<div class="row-fluid-wrapper row-depth-1 row-number-11 ">
			<div class="row-fluid ">
				<div class="span12 widget-span widget-type-cell builder-wrapper" style="" data-widget-type="cell" data-x="0" data-w="12">
					<div class="row-fluid-wrapper row-depth-1 row-number-13" style="margin-top:20px">
						<div class="row-fluid ">
							<div class="span12 widget-span widget-type-global_group " style="" data-widget-type="global_group" data-x="0" data-w="12">
								<!-- start coded_template: id:27452421007 path:generated_global_groups/27452421006.html -->
								<div class="" data-global-widget-path="generated_global_groups/27452421006.html">
									<div class="row-fluid-wrapper row-depth-1 row-number-1 ">
										<div class="row-fluid ">
											<div class="span12 widget-span widget-type-custom_widget " style="" data-widget-type="custom_widget" data-x="0" data-w="12">
												<div id="hs_cos_wrapper_module_158468848520914" class="hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_module" style="" data-hs-cos-general-type="widget" data-hs-cos-type="module">
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
																			
																			<cfquery name="GetDesignationSub" datasource="warfightersupport">
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
																	<cfset counter= 0 />
																	<cfloop query="GetDesignation">
																		
																		<cfquery name="getChiefs" datasource="warfightersupport">
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
																		
																		<cfquery name="getLeads" datasource="warfightersupport">
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
																		
																		<cfquery name="getUsers" datasource="warfightersupport">
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
																				
																				<div class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">
																		
																					<p class="team-quote">
																						
																						#getChiefs.colAddr# <cfif len(getChiefs.colAddrL2) GT 0><br />#getChiefs.colAddrL2#</cfif>, #getChiefs.colCity# #getChiefs.colState# #getChiefs.colZip#<br/> 
																						<a target="_blank" href="mailto:#getChiefs.colEmail#">#getChiefs.colEmail#</a><br />
																						<a target="_blank" href="tel:#getChiefs.phnArea#-#getChiefs.phnExchange#-#getChiefs.phnLastFour#">#getChiefs.phnArea#-#getChiefs.phnExchange#-#getChiefs.phnLastFour#</a>
																						
																					</p>
																					<div class="filter-image-wrapper">
																						
																						<cfif getChiefs.image NEQ ''>
																							<cfset theDir=GetDirectoryFromPath(GetCurrentTemplatePath()) /> 
																							<cfset theFile=theDir & '../admin/uploads/'&getChiefs.image />
																							<cfif FileExists(theFile) EQ 'YES'>
																								<cfset varImage = '../admin/uploads/'&getChiefs.image&'?var='&randon_number >
																							<cfelse>
																								<cfset varImage = '../admin/uploads/no-image.png' />		
																							</cfif>
																							
																							
																						<cfelse>
																							<cfset varImage = '../admin/uploads/no-image.png' />
																						</cfif>
																						<img class="filter-image" src="#varImage#" alt="#getChiefs.firstName# #getChiefs.lastName#" width="360" height="360">
																							
																					</div>
																					<div class="team-info">
																						<span class="team-name">#getChiefs.colRank# #getChiefs.firstName# #getChiefs.lastName#</span>
																						<span class="team-position">#getChiefs.designation_name#<br/>#getChiefs.branch_name#</span>
																					</div>
																			
																				</div>
																				
																			</cfloop>
																			
																		</cfif>
																		
																		<cfif getLeads.recordCount GT 0>
																			
																			<cfloop query="getLeads">
																				
																				<div class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">
																		
																					<p class="team-quote">
																						
																						#getLeads.colAddr# <cfif len(getLeads.colAddrL2) GT 0><br />#getLeads.colAddrL2#</cfif>, #getLeads.colCity# #getLeads.colState# #getLeads.colZip#<br/> 
																						<a target="_blank" href="mailto:#getLeads.colEmail#">#getLeads.colEmail#</a><br />
																						<a target="_blank" href="tel:#getLeads.phnArea#-#getLeads.phnExchange#-#getLeads.phnLastFour#">#getLeads.phnArea#-#getLeads.phnExchange#-#getLeads.phnLastFour#</a>
																						
																					</p>
																					<div class="filter-image-wrapper">
																						
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
																						<img class="filter-image" src="#varImage#" alt="#getLeads.firstName# #getLeads.lastName#" width="360" height="360">
																							
																					</div>
																					<div class="team-info">
																						<span class="team-name">#getLeads.colRank# #getLeads.firstName# #getLeads.lastName#</span>
																						<span class="team-position">#getLeads.designation_name#<br/>#getLeads.branch_name#</span>
																					</div>
																			
																				</div>
																				
																			</cfloop>
																			
																		</cfif>
																		
																		<cfif getUsers.recordCount GT 0>
																			
																			<cfloop query="getUsers">
																				
																				<div class="filter-box filtr-item  #reReplace(GetDesignation.designation_name, '[ _]+', '_', 'all')# ">
																		
																					<p class="team-quote">
																						
																						#getUsers.colAddr# <cfif len(getUsers.colAddrL2) GT 0><br />#getUsers.colAddrL2#</cfif>, #getUsers.colCity# #getUsers.colState# #getUsers.colZip#<br/> 
																						<a target="_blank" href="mailto:#getUsers.colEmail#">#getUsers.colEmail#</a><br />
																						<a target="_blank" href="tel:#getUsers.phnArea#-#getUsers.phnExchange#-#getUsers.phnLastFour#">#getUsers.phnArea#-#getUsers.phnExchange#-#getUsers.phnLastFour#</a>
																						
																					</p>
																					<div class="filter-image-wrapper">
																						
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
																						<img class="filter-image" src="#varImage#" alt="#getUsers.firstName# #getUsers.lastName#" width="360" height="360">
																							
																					</div>
																					<div class="team-info">
																						<span class="team-name">#getUsers.colRank# #getUsers.firstName# #getUsers.lastName#</span>
																						<span class="team-position">#getUsers.designation_name#<br/>#getUsers.branch_name#</span>
																					</div>
																			
																				</div>
																				
																			</cfloop>
																			
																		</cfif>
																			
																		
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
		      		<input type="hidden" name="designation" id="designation" value="">
			    	<div class="modal-body">
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">First Name</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="firstName" id="firstName" value="" placeholder="First Name" required>
							</div>
						</div>									
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Last Name</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="lastName" id="lastName" value="" placeholder="Last Name" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Position</label>
							<div class="col-lg-9 col-xl-9">
								<select class="form-control" id="drop_desig" disabled>
									<option value="">-- Select --</option>
									<cfoutput>
										<cfloop query="GetDesignation">
											<option value="#id#">#designation_name#</option>
										</cfloop>
									</cfoutput>
								</select>
							</div>
						</div>
						<div class="form-group row" id="img_div">
							<label class="col-xl-3 col-lg-3 col-form-label">Profile Photo</label>
							<div class="col-lg-9 col-xl-9">
								<input type="file" class="form-control" name="image" id="image" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Phone No</label>
							<div class="col-lg-3 col-xl-3">
								<input type="text" class="form-control" name="phnArea" id="phnArea" value="" placeholder="Area" required>
							</div>
							<div class="col-lg-3 col-xl-3">
								<input type="text" class="form-control" name="phnExchange" id="phnExchange" value="" placeholder="Exchange" required>
							</div>
							<div class="col-lg-3 col-xl-3">
								<input type="text" class="form-control" name="phnLastFour" id="phnLastFour" value="" placeholder="Last Four" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Address</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="colAddr" id="colAddr" value="" placeholder="Address 1" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Address 2</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="colAddrL2" id="colAddrL2" value="" placeholder="Address 2" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">City</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="colCity" id="colCity" value="" placeholder="City" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">State</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="colState" id="colState" value="" placeholder="State" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Zip</label>
							<div class="col-lg-9 col-xl-9">
								<input type="text" class="form-control" name="colZip" id="colZip" value="" placeholder="Zip" required>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-xl-3 col-lg-3 col-form-label">Email</label>
							<div class="col-lg-9 col-xl-9">
								<input type="email" class="form-control" name="colEmail" id="colEmail" value="" placeholder="Email Address" required>
							</div>
						</div>
					</div>
			      	<div class="modal-footer">
			        	<button type="Submit" name="add_users" id="submit_btn" class="btn btn-primary">Save</button>
			        	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			      	</div>
		      	</form>
			</div>
		</div>
	</div>
</div>
<cfinclude template="includes/footer.cfm" >
<script>
    $(document).ready(function(){
        $('#li_0').click();
    });
    function setNames(selectedList,tabName)
	{	
		$('#selectedBranch').html(selectedList+'&nbsp;<span class="caret"></span>');
	}
</script>
</html>
		