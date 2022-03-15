

	<cfinclude template="includes/header.cfm">
    <cfinclude  template="includes/page_menus.cfm">
	<div id="about">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">High Resolution 3D BuckEye</div>
					<h1>High Resolution 3D BuckEye</h1>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="sep1">
		
		<div class="slideshow" id="slideshow">
			<ol class="slides" style="background: #323232;height: 800px;">
				<li class="current">
					<div class="description desc_custom" style="background: inherit;width:50%;bottom: 14%;">
						<h4>BuckEye Imagery Library</h4>
						<p>
						<span style="font-size: 15px;" class="button-map-custom"><b>Find Coverage:</b></span>
						<br/><br/>
						<ol>
							<li>
								<a href="https://cac.agc.army.mil/Products/filelib.cfm?d=/PDF_indexes/BuckEye_Guides" class="button-map-custom pages_link" target="_blank">
									BuckEye Product Coverage Guide (GeoPDF)
								</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/filelib.cfm?d=/PDF_indexes/Ortho_Shapefiles/" class="button-map-custom pages_link" target="_blank">
									BuckEye Orthophoto Shapefile
								</a>
							</li>
						</ol>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom"><b>Download/Ship Data:</b></span>
						<br/><br/>
						<ol>
							<li>
								<p><a href="https://agcwfs.agc.army.mil/CMB_Online/default.aspx" class="button-map-custom pages_link" target="_blank">CMB Download</a> (Orders that are 40gb or less can be downloaded, otherwise they will be shipped on external drives).</p>
							</li>
							<li>
								<p>GRiD Bulk Data Download <a href="http://grid.nga.smil.mil/gridsw1" class="button-map-custom pages_link">sipra</a> (Partner Agency)</p>
							</li>
						</ol>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom"><b>Direct Link:</b></span>
						<br/><br/>
						<ol>
							<li>
								<a href="https://cac.agc.army.mil/Products/filelib.cfm?d=/PDF_indexes/3D_BuckEye_Products" class="button-map-custom pages_link" target="_blank">3D BuckEye Products</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/MapArchive/index.cfm" class="button-map-custom pages_link" target="_blank">GeoPDF Mapbooks</a>
							</li>
							<li>
								<p>By Country and Collection Site (see below)</p>
							</li>
						</ol>
						<br/>
						<span>
							<select onChange="window.open(this.value, '_blank')">
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Afghanistan</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Albania</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Belgium</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Bosnia-Herzegovina</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Burkina Faso</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Central African Republic</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Congo (Democratic Republic of)</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Djibouti</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Iraq</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Italy</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Jordan</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Kenya</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Kosovo</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Kuwait</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Latvia</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Lebanon</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Libya</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Lithuania</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Mali</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Mauritania</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Niger</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Nigeria</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">North Macedonia</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Philippines</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Poland</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Senegal</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Somalia</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">South Korea</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Syria</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">United States of America</option>
							    <option value="https://cac.agc.army.mil/Products/BuckEye/index.cfm">Related Product Pages</option>
							</select>
						</span>
						</p>
					</div>
					
					<div class="description desc_custom" style="width: 27%;left: 67%;bottom: 65%;">
						<a style="font-size: 13px;" href="https://cac.agc.army.mil/customcf/email-a-friend.cfm?fuseaction=ShowForm&url=%2FProducts%2FBuckEye%2Findex%2Ecfm" class="button-map-custom pages_link" target="_blank">
							Email to a Friend
						</a>|
						<a style="font-size: 13px;" href="https://cac.agc.army.mil/Video/" class="button-map-custom pages_link" target="_blank">
							Product Training Videos
						</a>
						<br/><br/>
						<span style="font-size: 15px;" class="button-map-custom"><a href="https://cac.agc.army.mil/Products/BuckEye/" target="_blank" class="pages_link">BuckEye</a></span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="https://cac.agc.army.mil/ortho_images/BuckEye_Training_CENTCOM_10_20.pdf" class="button-map-custom pages_link" target="_blank">BuckEye HR3D Overview Brief (FOUO)</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/BuckEye/inforequest.cfm" class="button-map-custom pages_link" target="_blank">Request for Information</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/BuckEye/poc.cfm" class="button-map-custom pages_link" target="_blank">Points of Contact</a>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">How-to Guides</span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="https://cac.agc.army.mil/Products/BuckEye/upload/Checking_for_Imagery_Coverage.pdf" class="button-map-custom pages_link" target="_blank">Checking for Imagery Coverage</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/BuckEye/upload/Checking_for_LIDAR_Coverage.pdf" class="button-map-custom pages_link" target="_blank">Checking for LIDAR Coverage</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/BuckEye/upload/GeoPDF_Mapbooks.pdf" class="button-map-custom pages_link" target="_blank">GeoPDF Mapbooks</a>
							</li>
							
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom"><a href="https://cac.agc.army.mil/Products/LIDAR/" target="_blank" class="pages_link">LIDAR Product Library</a></span>
						<br/><br/>
						<span style="font-size: 15px;" class="button-map-custom">Software Downloads</span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="http://appliedimagery.com/download" class="button-map-custom pages_link" target="_blank">Quick Terrain Modeler/Reader</a>
							</li>
							<li>
								<a href="https://qgis.org/en/site/forusers/download.html" class="button-map-custom pages_link" target="_blank">QGIS</a>
							</li>
							<li>
								<a href="https://www.google.com/earth/versions/" class="button-map-custom pages_link" target="_blank">GoogleEarth</a>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">Fact Sheets</span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="https://cac.agc.army.mil/About/FactSheets/upload/BuckEye_Ground_FactSheet_Jan19.pdf" class="button-map-custom pages_link" target="_blank">BuckEye Ground Fact Sheet</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/About/FactSheets/upload/BuckEye_FactSheet_Jan_19.pdf" class="button-map-custom pages_link" target="_blank">BuckEye HR3D Fact Sheet</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/About/FactSheets/upload/BuckEye_UAS_FactSheet_Jan19.pdf" class="button-map-custom pages_link" target="_blank">BuckEye UAS Fact Sheet</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/About/FactSheets/upload/LIDAR_FactSheet_Jan19.pdf" class="button-map-custom pages_link" target="_blank">LIDAR Fact Sheet</a>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">Primary Contact for BuckEye</span>
						<br/>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom"><a href="mailto:Andrew.R.McHugh@usace.army.mil" class="pages_link" target="_blank">Andrew McHugh</a></span>
						<p>BuckEye Program Manager</p>
						<p>703-428-6897 (COMM)</p>
						<p>328-6897 (DSN)</p>
						<p>Alexandria, VA</p>
						
						
						
							
					</div>
				</li>
			</ol>
		</div><!-- /slideshow -->
	</div>
	<cfinclude template="includes/footer.cfm">
	<script type="application/javascript">
		$('.scroll').hide()
	</script>