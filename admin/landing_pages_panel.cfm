
<cfinclude template="includes/header.cfm">
<cfinclude template="includes/navigation.cfm">
<cfset page_name   = ''/>
<cfset col_md_12_title   = ''/>
<cfset col_md_9 = ''/>
<cfset col_md_3 = ''/>
<cfset col_md_12_description = ''/>
<cfset updateFlag = false />
<cfif structkeyexists(FORM,'update_page') and FORM.id NEQ ''>
	<cfquery name="UpdateLandingPage" datasource="db_wsd_datasource">
		UPDATE tbl_landing_pages
		SET page_name = <cfqueryparam value="#FORM.page_name#" cfsqltype="cf_sql_varchar">,
			col_md_12_title = <cfqueryparam value="#FORM.col_md_12_title#" cfsqltype="cf_sql_varchar">,
			col_md_9 = <cfqueryparam value="#FORM.col_md_9#" cfsqltype="cf_sql_varchar">,
			col_md_3 = <cfqueryparam value="#FORM.col_md_3#" cfsqltype="cf_sql_varchar">,
			col_md_12_description = <cfqueryparam value="#FORM.col_md_12_description#" cfsqltype="cf_sql_varchar">
		WHERE id = <cfqueryparam value="#FORM.id#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
	
</cfif>

<cfif structkeyexists(FORM,'add_page')>
	
	<cfquery name="SaveLandingPage" datasource="db_wsd_datasource">
		INSERT INTO tbl_landing_pages(page_name,
								col_md_12_title,
								col_md_9,
								col_md_3,
								col_md_12_description)
							VALUES(<cfqueryparam value="#FORM.page_name#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.col_md_12_title#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.col_md_9#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.col_md_3#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.col_md_12_description#" cfsqltype="cf_sql_varchar">)
	</cfquery>
	<cfset updateFlag = true />

</cfif>
<cfif structkeyexists(URL,'action') and URL.action EQ 'delete'>
	<cfquery name="deleteLandingPage" datasource="db_wsd_datasource">
		DELETE FROM tbl_landing_pages
		WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>
<cfquery datasource="db_wsd_datasource" name="get_landing_pages">
	SELECT * FROM tbl_landing_pages  
	ORDER BY page_name                 
</cfquery>
<cfset page_name   = ''/>
<cfset col_md_12_title   = ''/>
<cfset col_md_9 = ''/>
<cfset col_md_3 = ''/>
<cfset col_md_12_description = ''/>
<cfif structKeyExists(URL, 'id') and URL.id neq ''>
	<cfquery datasource="db_wsd_datasource" name="qGetPage">
		SELECT * FROM tbl_landing_pages  
		WHERE id  = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">                    
	</cfquery>

	<cfif qGetPage.recordCount GT 0>
		<cfset page_name   				= qGetPage.page_name />
		<cfset col_md_12_title   		= qGetPage.col_md_12_title />
		<cfset col_md_9 				= qGetPage.col_md_9 />
		<cfset col_md_3 				= qGetPage.col_md_3 />
		<cfset col_md_12_description 	= qGetPage.col_md_12_description />
	</cfif>
</cfif>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="css/responsive.bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/ui/trumbowyg.min.css" rel="stylesheet">
<link href="css/ion.calendar.css" rel="stylesheet">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form id="cust_add_log_form" method="post" enctype="multipart/form-data" action="landing_pages_panel.cfm">
					<cfif structKeyExists(URL, 'id') and URL.id neq ''>
						<input type="hidden" name="id" id="id" value="<cfoutput>#qGetPage.id#</cfoutput>">
					</cfif>
					<h2>Create Landing Page <small><a href="#edit" class="btn btn-sm btn-warning"><i class='fas fa-pencil-alt'></i>
						&nbsp;&nbsp;Edit Landing Pages</a></small></h2>

					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Page Name<br /><small>This is the actual file name</small></label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" name="page_name" id="page_name" class="form-control" value="<cfoutput>#page_name#</cfoutput>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Page Title</label>
						<div class="col-lg-9 col-xl-9">
							<textarea name="col_md_12_title" id="col_md_12_title" class="form-control editor"><cfoutput>#col_md_12_title#</cfoutput></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Top Left Area</label>
						<div class="col-lg-9 col-xl-9">
							<textarea name="col_md_9" id="col_md_9" class="form-control editor"><cfoutput>#col_md_9#</cfoutput></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Top Right Area</label>
						<div class="col-lg-9 col-xl-9">
							<textarea name="col_md_3" id="col_md_3" class="form-control editor"><cfoutput>#col_md_3#</cfoutput></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Bottom Area</label>
						<div class="col-lg-9 col-xl-9">
							<textarea name="col_md_12_description" id="col_md_12_description" class="form-control editor"><cfoutput>#col_md_12_description#</cfoutput></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<cfif structKeyExists(URL, 'id') and URL.id neq ''>
							<button type="Submit" name="update_page" id="submit_btn" class="btn btn-primary">Update Page</button>
						<cfelse>
							<button type="Submit" name="add_page" id="submit_btn" class="btn btn-primary">Add Page</button>
						</cfif>
					</div>
				</form>
				</div>
			</div>
		</div>

		<a id="edit"></a>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Edit Landing Pages</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
				<table id="navigation_table" class="table">
					<thead>
						<tr>
							<th>Page Name</th>
							<th>Title</th>
							<th>Top Left Area</th>
							<th>Top Right Area</th>
							<th>Bottom Area</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<cfloop query="get_landing_pages">
							<cfoutput>
								<tr>
									<td>#get_landing_pages.page_name#</td>
									<td>#get_landing_pages.col_md_12_title#</td>
									<td>#get_landing_pages.col_md_9#</td>
									<td>#get_landing_pages.col_md_3#</td>
									<td>#get_landing_pages.col_md_12_description#</td>
									<td>
										<a href="landing_pages_panel.cfm?id=#get_landing_pages.id#" class="btn btn-primary">Edit</a>
										<a class="btn btn-danger" href="javascript: void(0)" onclick="deleteConfirm('landing_pages_panel.cfm?action=delete&id=#get_landing_pages.id#')">Delete</a>
									</td>
								</tr>
							</cfoutput>
						</cfloop>	
					</tbody>
				</table>
			</div>
		</div>
	</div>
		<cfinclude template="includes/footer.cfm">
		<script type="text/javascript" src="js/moment.min.js"></script>
		<script type="text/javascript" src="js/ion.calendar.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/dataTables.bootstrap4.min.js"></script>
		<script src="js/dataTables.responsive.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/trumbowyg.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/plugins/colors/trumbowyg.colors.min.js"></script>
		<script>
			$(document).ready(function(){

				$('#navigation_table').DataTable( {
					stateSave: true,
					"order": [[0, "desc"]],
					"iDisplayLength": 10,
					"lengthMenu": [
					[10, 100, 250, -1],
					[10, 100, 250, "All"]
					],
					"stateDuration": 60 * 60 * 24, // 1 day
					responsive: true,
					"language": {
						"paginate": {
						"previous": "<i class='fa fa-angle-left'></i>",
						"next": "<i class='fa fa-angle-right'></i>"
						}
					},
					columnDefs: [
						{ responsivePriority: 1, targets: 0 },
						{ responsivePriority: 2, targets: -1 }
					]
				});

				$('.datepicker').ionDatePicker({
					lang: "en",
					years: "1945-2050",
					format: "MM/DD/YYYY",
					position: "bottom"
				});
				$('.editor').trumbowyg({
					lang: 'en',

					fixedBtnPane: false,
					fixedFullWidth: false,
					autogrow: false,
					autogrowOnEnter: false,

					prefix: 'trumbowyg-',
					tagClasses: {},

					semantic: true,
					semanticKeepAttributes: false,
					resetCss: false,
					removeformatPasted: false,
					tabToIndent: false,
					tagsToRemove: [],
					tagsToKeep: ['hr', 'img', 'embed', 'iframe', 'input'],
					btns: [
						['viewHTML'],
						['undo', 'redo'], // Only supported in Blink browsers
						['formatting'],
						['strong', 'em', 'del'],
						['superscript', 'subscript'],
						['link'],
						['insertImage'],
						['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
						['unorderedList', 'orderedList'],
						['horizontalRule'],
						['removeformat'],
						['fullscreen'],
						['foreColor'],
						['backColor']
					],
					// For custom button definitions
					btnsDef: {},
					changeActiveDropdownIcon: false,

					inlineElementsSelector: 'a,abbr,acronym,b,caption,cite,code,col,dfn,dir,dt,dd,em,font,hr,i,kbd,li,q,span,strikeout,strong,sub,sup,u',

					pasteHandlers: [],

					plugins: {
						colors: {
							foreColorList: [
								'ff0000', '00ff00', '0000ff'
							],
							backColorList: [
								'000', '333', '555'
							]
						}
					},
					urlProtocol: false,
					minimalLinks: false,
					defaultLinkTarget: undefined
				});


				$( "#col_md_12_title" ).closest(".trumbowyg-box").css("min-height", "100px");
				$( "#col_md_12_title" ).prev(".trumbowyg-editor").css("min-height", "100px");

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
