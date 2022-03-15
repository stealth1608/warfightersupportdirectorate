<cfinclude template="includes/header.cfm">
<cfinclude template="includes/navigation.cfm">
<cfset menuName   = ''/>
<cfset menuHref   = ''/>
<cfset menuParent = ''/>
<cfset updateFlag = false />
<cfif structkeyexists(FORM,'update_menu') and FORM.recordID NEQ ''>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		UPDATE tbl_ace_nav
		SET menuName = <cfqueryparam value="#FORM.menuName#" cfsqltype="cf_sql_varchar">,
			menuHref = <cfqueryparam value="#FORM.menuHref#" cfsqltype="cf_sql_varchar">
		WHERE recordID = <cfqueryparam value="#FORM.recordID#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>
<cfif structkeyexists(FORM,'add_menu')>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		INSERT INTO tbl_ace_nav(menuName,
								menuHref,
								menuParent)
							VALUES(<cfqueryparam value="#FORM.menuName#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.menuHref#" cfsqltype="cf_sql_varchar">,
									<cfqueryparam value="#FORM.menuParent#" cfsqltype="cf_sql_integer">)
	</cfquery>
	<cfset updateFlag = true />
</cfif>
<cfif structkeyexists(URL,'action') and URL.action EQ 'delete'>
	<cfquery name="SaveUserActivity" datasource="db_wsd_datasource">
		DELETE FROM tbl_ace_nav
		WHERE recordID = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
	</cfquery>
	<cfset updateFlag = true />
</cfif>
<cfquery datasource="db_wsd_datasource" name="get_navigations">
	SELECT * FROM tbl_ace_nav 
	WHERE menuParent <> 0   
	ORDER BY menuParent                 
</cfquery>
<cfset menuName   = ''/>
<cfset menuHref   = ''/>
<cfset menuParentName = ''/>
<cfif structKeyExists(URL, 'id') and URL.id neq ''>
	<cfquery datasource="db_wsd_datasource" name="qGetNavigation">
		SELECT * FROM tbl_ace_nav  
		WHERE recordID  = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">                    
	</cfquery>
	<cfif qGetNavigation.recordCount GT 0>
		<cfset menuName  	= qGetNavigation.menuName />
		<cfset menuHref 	= qGetNavigation.menuHref />
		<cfset menuParentName 	= qGetNavigation.menuParent />
	</cfif>
</cfif>
<cfquery datasource="db_wsd_datasource" name="get_navigations_parent">
	SELECT * FROM tbl_ace_nav   
	WHERE menuParent = 0                 
</cfquery>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/ui/trumbowyg.min.css" rel="stylesheet">
<link href="css/ion.calendar.css" rel="stylesheet">
	<div class="container">
		<form id="cust_add_log_form" method="post" enctype="multipart/form-data" action="navigation_panel.cfm">
			<cfif structKeyExists(URL, 'id') and URL.id neq ''>
				<input type="hidden" name="recordID" id="recordID" value="<cfoutput>#qGetNavigation.recordID#</cfoutput>">
			</cfif>
			<h2>Create Navigation Menu Item <small><a href="#edit" class="btn btn-sm btn-warning"><i class='fas fa-pencil-alt'></i>
 				&nbsp;&nbsp;Edit Navigation Menu Items</a></small></h2>
		<div class="form-group row">
			<label class="col-xl-3 col-lg-3 col-form-label">Parent Menu</label>
			<div class="col-lg-9 col-xl-9">
				<select class="form-control" name="menuParent" id="menuParent" required>
					<option value="">Select</option>
						<cfoutput query="get_navigations_parent">
						<cfset slec_text = '' />
						<cfif get_navigations_parent.recordID eq menuParentName>
						<cfset slec_text = 'selected' />
						</cfif>
						<option value="#get_navigations_parent.recordID#" #slec_text#>#get_navigations_parent.menuName#</option>
						</cfoutput>
				</select>
			</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Menu Name</label>
						<div class="col-lg-9 col-xl-9">
							<textarea name="menuName" id="menuName" class="form-control editor"><cfoutput>#menuName#</cfoutput></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-xl-3 col-lg-3 col-form-label">Menu Link</label>
						<div class="col-lg-9 col-xl-9">
							<input type="text" class="form-control" name="menuHref" id="menuHref" value="<cfoutput>#menuHref#</cfoutput>"
								placeholder="Menu HREF" required>
						</div>
					</div>
					<div class="modal-footer">
						<cfif structKeyExists(URL, 'id') and URL.id neq ''>
							<button type="Submit" name="update_menu" id="submit_btn" class="btn btn-primary">Update Menu</button>
						<cfelse>
							<button type="Submit" name="add_menu" id="submit_btn" class="btn btn-primary">Add Navigation Menu Item</button>
						</cfif>
					</div>
				</form>
				</div>
				<a id="edit"></a>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>Edit Navigation Menu Items</h2>
					</div>
				</div>
				<div class="row">
			<div class="col-md-12">
				<table id="navigation_table" class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Parent</th>
							<th>Menu Href</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<cfloop query="get_navigations">
							<cfquery datasource="db_wsd_datasource" name="get_navigation_parent">
								SELECT * FROM tbl_ace_nav   
								WHERE recordID = <cfqueryparam value="#get_navigations.menuParent#" cfsqltype="cf_sql_integer">                 
							</cfquery>
							<cfoutput>
								<tr>
									<td>#get_navigations.menuName#</td>
									<td>#get_navigation_parent.menuName#</td>
									<td>#get_navigations.menuHref#</td>
									<td>
										<a href="navigation_panel.cfm?id=#get_navigations.recordID#" class="btn btn-primary">Edit</a>
										<a class="btn btn-danger" href="javascript: void(0)" onclick="deleteConfirm('navigation_panel.cfm?action=delete&id=#get_navigations.recordID#')">Delete</a>
									</td>
								</tr>
							</cfoutput>
						</cfloop>
					</tbody>
				</table>
			</div>
		</div>
	</div>
		<!--end footer wrapper -->
		<cfinclude template="includes/footer.cfm">
		<script type="text/javascript" src="js/moment.min.js"></script>
		<script type="text/javascript" src="js/ion.calendar.js"></script>
		
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
		
<!--- 		<script src="https://cdn.tiny.cloud/1/pxu6b40j88u9gppyji0mkkqhh84nvfswbx8pmxefjxqzjmtv/tinymce/5/tinymce.min.js"></script> --->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/trumbowyg.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.25.1/plugins/colors/trumbowyg.colors.min.js"></script>

		
		<script>

		var menuName = '<cfoutput>#menuName#</cfoutput>';
			$(document).ready(function(){
				$('.datepicker').ionDatePicker({
					lang: "en",
					years: "1945-2050",
					format: "MM/DD/YYYY",
					position: "bottom"
				});
				$('#menuName').trumbowyg({
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

				/*tinymce.init({
					selector: 'textarea.editor',
					height: 200,
					menubar: false,
					plugins: [
						'advlist autolink lists link image charmap print preview anchor',
						'searchreplace visualblocks code fullscreen',
						'insertdatetime media table paste code help wordcount',
						'image',
						'table',
						'textcolor'
					],
					contextmenu: "cut copy paste | link image inserttable | cell row column deletetable",
					toolbar: 'undo redo | formatselect | ' +
						'bold italic forecolor backcolor | alignleft aligncenter ' +
						'alignright alignjustify | bullist numlist outdent indent | ' +
						'removeformat | help | image link | code | table'
				});

				
				//$(tinymce.get('menuName').getBody()).html('<p>This is my new content!</p>')

				//console.log(tinymce.get('menuName').getBody());

				setTimeout(function() { 
					tinymce.get('menuName').setContent(menuName);
				}, 1000);*/

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
