<cfinclude template="includes/header.cfm">
<cfinclude template="includes/navigation.cfm">

<cfset announcementText  = ''/>
<cfset announceLastDay 	 = ''/>
<cfset announcementTitle = ''/>

<cfset updateFlag = false />
<cfif structkeyexists(FORM,'update_annoucement') and FORM.announcementID NEQ ''>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		UPDATE tbl_announcements
		SET announcementText = <cfqueryparam value="#FORM.announcementText#" cfsqltype="cf_sql_varchar">,
			announceLastDay = <cfqueryparam value="#FORM.announceLastDay#" cfsqltype="cf_sql_date">,
			announcementTitle = <cfqueryparam value="#FORM.announcementTitle#" cfsqltype="cf_sql_varchar">
		WHERE announcementID = <cfqueryparam value="#FORM.announcementID#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>

<cfif structkeyexists(FORM,'add_annoucement')>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		INSERT INTO tbl_announcements(announcementText,
									  announceLastDay,
									  announcementTitle)
							VALUES(<cfqueryparam value="#FORM.announcementText#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.announceLastDay#" cfsqltype="cf_sql_date">,
									<cfqueryparam value="#FORM.announcementTitle#" cfsqltype="cf_sql_varchar">)
	</cfquery>
	<cfset updateFlag = true />
</cfif>

<cfif structkeyexists(URL,'action') and URL.action EQ 'delete'>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		DELETE FROM tbl_announcements
		WHERE announcementID = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>

<cfquery datasource="db_wsd_datasource" name="announcements">
	SELECT * FROM tbl_announcements ORDER BY announceLastDay                        
</cfquery>

<cfif structKeyExists(URL, 'id') and URL.id neq ''>
	<cfquery datasource="db_wsd_datasource" name="qGetAnnouncement">
		SELECT * FROM tbl_announcements  
		WHERE announcementID  = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">                    
	</cfquery>

	<cfif qGetAnnouncement.recordCount GT 0>
		<cfset announcementText  = qGetAnnouncement.announcementText />
		<cfset announceLastDay 	 = qGetAnnouncement.announceLastDay />
		<cfset announcementTitle = qGetAnnouncement.announcementTitle />
	</cfif>
</cfif>

<!--- <cfdump  var="#announcements#" abort> --->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/ion.calendar.css" rel="stylesheet">
		<div class="body-container-wrapper">
			<div class="body-container container-fluid">
				<div class="container">
				<form id="cust_add_log_form" method="post" enctype="multipart/form-data" action="announcements.cfm">
					<cfif structKeyExists(URL, 'id') and URL.id neq ''>
						<input type="hidden" name="announcementID" id="announcementID" value="<cfoutput>#qGetAnnouncement.announcementID#</cfoutput>">
					</cfif>
					<h4>
						Annoucements
					</h4>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Annoucement Title</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="announcementTitle" id="announcementTitle" value="<cfoutput>#announcementTitle#</cfoutput>"
								placeholder="Annoucement Title" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Annoucement Details</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="announcementText" id="announcementText" value="<cfoutput>#announcementText#</cfoutput>"
								placeholder="Annoucement Details" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Annoucement Date</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control datepicker" name="announceLastDay" id="announceLastDay" value="<cfoutput>#announceLastDay#</cfoutput>"
								placeholder="Annoucement Date" required>
						</div>
					</div>
					<div class="modal-footer">
						<cfif structKeyExists(URL, 'id') and URL.id neq ''>
							<button type="Submit" name="update_annoucement" id="submit_btn" class="btn btn-primary">Update Annoucement</button>
						<cfelse>
							<button type="Submit" name="add_annoucement" id="submit_btn" class="btn btn-primary">Add Annoucement</button>
						</cfif>
					</div>
				</form>
				</div>
			</div>
			<!--end body -->
		</div>
		<div class="row" style="padding-left: 132px;padding-right: 132px;">
			<div class="col-md-12">
				<table id="annoucement-table" class="table">
					<thead>
						<tr>
							<th>Title</th>
							<th>Details</th>
							<th>Removal Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<cfloop query="announcements">
							<cfoutput>
								<tr>
									<td>#announcements.announcementTitle#</td>
									<td>#Left(announcements.announcementText,80)#</td>
									<td>#announcements.announceLastDay#</td>
									<td>
										<a href="announcements.cfm?id=#announcements.announcementID#" class="btn btn-primary">Edit</a>
										<a class="btn btn-danger" href="javascript: void(0)" onclick="deleteConfirm('announcements.cfm?action=delete&id=#announcements.announcementID#')">Delete</a>
									</td>
								</tr>
							</cfoutput>
						</cfloop>
						
						
					</tbody>
				</table>
			</div>
		</div>
		<!--end footer wrapper -->
		<cfinclude template="includes/footer.cfm">
		<script type="text/javascript" src="js/moment.min.js"></script>
		<script type="text/javascript" src="js/ion.calendar.js"></script>
		
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
		
		<script>
			$(document).ready(function(){
				$('.datepicker').ionDatePicker({
					lang: "en",
					years: "1945-2050",
					format: "MM/DD/YYYY",
					position: "bottom"
				});

				//$('#annoucement-table').DataTable();
			});
			function deleteConfirm(url)
			{
				if(confirm('Are You Sure'))
				{
					location.href = url;	
				}
			}
		</script>
		<cfif updateFlag>
			<script>
				swal.fire({
							title: 'Success',
							text: "Information has been updated.",
							type: 'success',
							confirmButtonText: 'Ok!'
						});
			</script>
		</cfif>
