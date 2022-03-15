<cfset fileName = listlast(cgi.script_name,"/") />

<cfquery datasource="db_wsd_datasource" name="get_landing_page">
	SELECT * FROM tbl_landing_pages  
	WHERE page_name = '#fileName#'                
</cfquery>

<cfinclude template="includes/header_new.cfm">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<cfinclude template="includes/page_menus_new.cfm">

	<div class="container" style="color:white">
		<div class="row">
		  	<div class="col-md-12">
				<div id="about">
					<div class="sixteen columns" style="float: none !important;" data-scrollreveal="enter top and move 150px over 1s">
						<div class="header-text">
							<div class="header-shadow-text"><cfoutput>#REReplaceNoCase(get_landing_page.COL_MD_12_TITLE, "<[^[:space:]][^>]*>", "", "ALL")#</cfoutput></div>
							<h1><cfoutput>#REReplaceNoCase(get_landing_page.COL_MD_12_TITLE, "<[^[:space:]][^>]*>", "", "ALL")#</cfoutput></h1>
						</div>
					</div>
				</div>
		  	</div>
		</div>
		<div class="row" style="background: #a6a6a6;color:white !important;padding-top: 20px;">
			<div class="col-md-9">
				<cfoutput>#get_landing_page.col_md_9#</cfoutput>
			</div>
			<div class="col-md-3">
				<cfoutput>#get_landing_page.col_md_3#</cfoutput>
			</div>
		</div>
		<div class="row" style="background: #a6a6a6;color:white !important;padding-top: 20px;">
			<div class="col-md-12">
				<cfoutput>#get_landing_page.col_md_12_description#</cfoutput>
			</div>
		</div>
	</div>

	<cfinclude template="includes/footer.cfm">
	<script type="application/javascript">
		$('.scroll').hide()
	</script>