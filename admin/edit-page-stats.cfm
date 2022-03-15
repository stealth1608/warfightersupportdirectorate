<cfinclude template="includes/header.cfm">
<cfinclude template="includes/navigation.cfm">

<cfset updateFlag = false />
<cfif structkeyexists(FORM,'add_activity') and FORM.id NEQ ''>

	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		UPDATE user_story
		SET count1 = <cfqueryparam value="#FORM.count1#" cfsqltype="cf_sql_numeric">,
			count2 = <cfqueryparam value="#FORM.count2#" cfsqltype="cf_sql_numeric">,
			count3 = <cfqueryparam value="#FORM.count3#" cfsqltype="cf_sql_numeric">,
			count4 = <cfqueryparam value="#FORM.count4#" cfsqltype="cf_sql_numeric">,
			speed1 = <cfqueryparam value="#FORM.speed1#" cfsqltype="cf_sql_numeric">,
			speed2 = <cfqueryparam value="#FORM.speed2#" cfsqltype="cf_sql_numeric">,
			speed3 = <cfqueryparam value="#FORM.speed3#" cfsqltype="cf_sql_numeric">,
			speed4 = <cfqueryparam value="#FORM.speed4#" cfsqltype="cf_sql_numeric">,
			label1 = <cfqueryparam value="#FORM.label1#" cfsqltype="cf_sql_varchar">,
			label2 = <cfqueryparam value="#FORM.label2#" cfsqltype="cf_sql_varchar">,
			label3 = <cfqueryparam value="#FORM.label3#" cfsqltype="cf_sql_varchar">,
			label4 = <cfqueryparam value="#FORM.label4#" cfsqltype="cf_sql_varchar">
		WHERE id = <cfqueryparam value="#FORM.id#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>


<cfquery datasource="db_wsd_datasource" name="qUserStory">
	SELECT top 1 * FROM user_story                        
</cfquery>

		<div class="body-container-wrapper">
			<div class="body-container container-fluid">
				<div class="container">
				<div class="modal-body">
				<form id="cust_add_log_form" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" id="id" value="<cfoutput>#qUserStory.id#</cfoutput>">
					<h4>
						User Activity on Website
					</h4>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Label 1</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="label1" id="label1" value="<cfoutput>#qUserStory.label1#</cfoutput>"
								placeholder="Label 1" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Count 1</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="count1" id="count1" value="<cfoutput>#qUserStory.count1#</cfoutput>"
								placeholder="Count 1" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Speed 1 (In Seconds)</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="speed1" id="speed1" value="<cfoutput>#qUserStory.speed1#</cfoutput>"
								placeholder="Speed 1" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Label 2</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="label2" id="label2" value="<cfoutput>#qUserStory.label2#</cfoutput>"
								placeholder="Label 2" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Count 2</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="count2" id="count2" value="<cfoutput>#qUserStory.count2#</cfoutput>"
								placeholder="Count 2" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Speed 2 (In Seconds)</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="speed2" id="speed2" value="<cfoutput>#qUserStory.speed2#</cfoutput>"
								placeholder="Speed 2" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Label 3</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="label3" id="label3" value="<cfoutput>#qUserStory.label3#</cfoutput>"
								placeholder="Label 3" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Count 3</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="count3" id="count3" value="<cfoutput>#qUserStory.count3#</cfoutput>"
								placeholder="Count 3" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Speed 3 (In Seconds)</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="speed3" id="speed3" value="<cfoutput>#qUserStory.speed3#</cfoutput>"
								placeholder="Speed 3" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Label 4</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="label4" id="label4" value="<cfoutput>#qUserStory.label4#</cfoutput>"
								placeholder="Label 4" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Count 4</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="count4" id="count4" value="<cfoutput>#qUserStory.count4#</cfoutput>"
								placeholder="Count 4" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Speed 4 (In Seconds)</label>
						<div class="col-lg-9 col-xl-9">
							<input type="number" class="form-control" name="speed4" id="speed4" value="<cfoutput>#qUserStory.speed4#</cfoutput>"
								placeholder="Speed 4" required>
						</div>
					</div>
					<div class="modal-footer">
						<button type="Submit" name="add_activity" id="submit_btn" class="btn btn-primary">Save</button>
					</div>
				</form>
				</div>	
				</div>	
			</div>
			<!--end body -->
		</div>
		<!--end footer wrapper -->
		<cfinclude template="includes/footer.cfm">
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
