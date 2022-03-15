<cfquery datasource="db_wsd_datasource" name="qDevisions">
	SELECT * FROM tbl_divisions                        
</cfquery>

	<cfinclude template="includes/header.cfm">
	<cfinclude  template="includes/page_menus.cfm">
	<link rel="stylesheet" type="text/css" href="slick/slick.css">
	<link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
	<div class="work">
		<img src="images/banner.jpg" alt="" style="width:100%;" />
	</div>
	<div class="work">
		<section class="regular slider">
			<cfoutput>
				<cfloop query="qDevisions">
					<div style="text-align:center">
						<a class="button-map-custom pages_link" href="#qDevisions.divURL#" target="_blank">
							<img src="images/AGE_carousel/#qDevisions.divIMG#" style="border:solid 6px;border-radius:5px">
						</a>
						<br/>
						<a class="button-map-custom pages_link" href="#qDevisions.divURL#" target="_blank">#qDevisions.divName#</a>
					  </div>
				</cfloop>
			</cfoutput>
		  </section>
	</div>
	<div class="work" style="width:100%;text-align:center">
		<img src="images/water_resources.png" alt="AGC Water Resources" />
		<img src="images/tdm.png" alt="TDM" />
		<img src="images/cmb.png" alt="CMB" />
		<img src="images/enfire.png" alt="Enfire Upload" />
		<img src="images/sage.png" alt="WSD Sage Request" />
		<img src="images/survey123.png" alt="Survey 123" />
		<img src="images/training.png" alt="Training" />
		<img src="images/permissions.png" alt="Request Permission" />
		<img src="images/Support_Ticket.png" alt="Support Ticket" />
	</div>
	<div class="work" style="width:100%;text-align:center">
		
	</div>
	<div id="sep1">	
		<div class="slideshow" id="slideshow">
			<ol class="slides" style="background: #323232;height: 850px;">
				<li class="current">
					<div class="description desc_custom" style="background: inherit;width:80%;bottom: 10%;">
						<h4>Announcements (January 2020)</h4>
						<p>
							<ul style="margin-left: 20px;">
								<li>
									<p>
										<b>TDM data holdings have been updated.</b>
										TDM users now have access to the following country datasets: Azerbaijan, Czech Republic, Georgia, Kosovo, Palau. A facility dataset for Ft. Rucker, AL has also been added.
									</p>
								</li>
								<li>
									<p>
										<b>PLEASE NOTE</b>
										that it is incumbent upon all users to properly classify their content in order to ensure proper use and sharing throughout the AGE enterprise. This Portal can host content classified up to CUI/LIMDIS; PII and PHI data may not be hosted in any capacity. Users <a href="https://agewebportal.erdc.mil/portal/home/item.html?id=a1467620258045a197f198253a51411a" class="pages_link" target="_blank">can access a guide</a> detailing the suggested method of classifying content from the AGE Portal Training group. Portal administrators reserve the right to un-share or remove content that has not been classified.
									</p>
								</li>
								<li>
									<p>
										The AGE SIPR Portal remains operational, however, please note that while AGE Portal personnel will work with users to address any future issues experienced on the SIPR network, there may be delays in response through classified channels as AGC leadership is currently enforcing reduced building access and telework scheduling due to the COVID-19 pandemic.
									</p>
								</li>
								<li>
									<p>
										Onsite training covering use of the AGE Portal, TM/TLM production, CMB (remote and online), SAGE, and extraction methodology is available upon request with no cost to Army units (deployed/OCONUS personnel included). Training can be conducted on local systems or on AGC equipment, and can be tailored for Unclassified or SPIR environments. All requests and inquiries should be sent <br/>
										<a href="mailto:ronnie.s.buzzard@usace.army.mil" target="_blank" class="pages_link">ronnie.s.buzzard@usace.army.mil</a> or <a href="mailto:angel.martinez@usace.army.mil" target="_blank" class="pages_link">angel.martinez@usace.army.mil</a>
									</p>
								</li>
								<li>
									<p>
										Current <b>UNCLASS </b>site status: <b>OPERATIONAL</b>
									</p>
								</li>
								<li>
									<p>
										Current <b>SIPR</b> site status: <b>OPERATIONAL</b>
									</p>
								</li>
							</ul>
						</p>
						<br/>
						<p>
							This portal is operated for use by the Army Geospatial Enterprise (AGE) and all of its members and partners, and is maintained by the USACE Army Geospatial Center's Engagements Branch in the Warfighter Support Directorate. A valid DoD CAC card is required to sign-in to visualize, create and share geospatial content with the AGE.
						</p>
						<br/>
						<p>
							The AGE Portal is authorized to host UNCLASSIFIED content, including Controlled Unclassified Infromation (CUI). All content must be classified and labeled appropriately by the owning user. Failure to do so will result in content deletion and account suspension.
						</p>
						<br/>
						<p>
							The AGE is an integrated system of technologies, standards and processes that provide a comprehensive framework for systematically managing, exploiting and sharing geospatial data, information and services to enable Army full spectrum operations. Geospatial services provide standard interfaces to AGE capabilities enabling operational collaboration, decision and action. Any questions or comments regarding the operation of the AGE Web Portal, including its current status and performance, may be addressed to the AGE Web Portal Operations team.
						</p>
						<br/>
						<p>
							Protected Health Information (PHI) includes health records that are identified to an individual, such as: lab test results; diagnoses; treatment information, insurance information, unique identifiers and demographic information.
						</p>
						<br/>
						<p>
							Personally Identifiable Information (PII) is any information which can be used to trace an individual's identity such as name, Social Security Number (SSN), date and place of birth, mother's maiden name, and biometric records.
						</p>
						
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">
							<a href="mailto:dll-agesupport@usace.army.mil" target="_blank" class="pages_link">
								Contact Us
							</a>
						</span>
					</div>
				</li>
			</ol>
		</div><!-- /slideshow -->
	</div>
	<cfinclude template="includes/footer.cfm">
<!--- 	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script> --->
	<script src="slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="application/javascript">
		$('.scroll').hide();
		$(".regular").slick({
        	dots: true,
        	infinite: true,
        	slidesToShow: 4,
        	slidesToScroll: 4
		});

		$('.slick-slide').each(function(){
			$(this).addClass('slick-current slick-active');
		});
		 
		var int = setInterval(function() {  
			$('.slick-next').click();  
			$('.slick-slide').addClass('slick-current slick-active');                
		}, 3000);

		$('.slick-slide').on("mouseenter", function(){
			clearInterval(int);
		});

		$('.slick-slide').on("mouseleave", function(){
			int = setInterval(function() {  
				$('.slick-next').click();  
				$('.slick-slide').addClass('slick-current slick-active');                
			}, 3000);
		});

	</script>