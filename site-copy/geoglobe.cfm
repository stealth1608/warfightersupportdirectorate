

	<cfinclude template="includes/header.cfm">
    <cfinclude  template="includes/page_menus.cfm">
	<div id="about">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">AGE GeoGlobe</div>
					<h1>AGE GeoGlobe</h1>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="sep1">
		
		<div class="slideshow" id="slideshow">
			<ol class="slides" style="background: #323232;height: 2250px;">
				<li class="current">
					<div class="description desc_custom" style="background: inherit;width:50%;bottom: 5%;">
						<h4>AGE GeoGlobe</h4>
						<img src="images/geoGlobeLogo_2.gif" alt="GEO GLOBE LOGO" style="margin-top:10px;margin-left: 100px;" width="400px">
						<br/>
						<br/>
						<p>
							AGE GeoGlobe is a 3D based visualization and dissemination tool designed to make the discovery and exploitation of geospatial information more intuitive and productive within the DOD user community.  AGE GeoGlobe is based on Skyline Software's SkylineGlobe suite of products. This enterprise software allows users with PKI/CAC card authentication to access AGE geospatial data archives and products through a locally installed 3D client for Internet Explorer and Internet Information Services (IIS).
						</p>
						<br/>
						<img src="images/first_1.jpg" alt="first_1" style="margin-top:10px;margin-left: 100px;" width="400px">
						<br/>
						<br/>
						<p>
							<img src="images/img2_2.jpg" alt="Hard Drive" style="float: left;margin-right:10px" width="150px">
							The AGE GeoGlobe provides users with an easy to use interface to find and view AGC products such as the Water Resources Database (WRDB), Urban Tactical Planner (UTP), and Buckeye imagery and LIDAR elevation data. These products form an integral part of the GeoGlobe's data layers and can be viewed in any of the GeoGlobe's 3 different Globe views (World Map, NGA Map, and Imagery).
						</p>
						<br/>
						<p>
							These views act as the Globe's "skin" and form the base layers on which all other geospatial data is viewed and interacted with.
						</p>
						<br/>
						<p>
							<img src="images/img3_1.jpg" alt="Hard Drive" style="float: left;margin-right:10px" width="150px">
							The World Map View includes several types of cartographic products which vary by scale. At the smallest scale, the GeoGlobe displays the NGA World Commanders' Areas of Responsibility Map. As the user zooms into the globe that map is replaced with ESRI's World Street Map which provides an excellent base and reference map. In the near future, USGS maps will also be displayed for the United States.
						</p>
						<br/>
						<br/>
						<p>
							<img src="images/img4_1.jpg" alt="Hard Drive" style="float: left;margin-right:10px" width="150px">
							The NGA Map View provides the user with worldwide coverage of NGA's Global Navigational Charts (GNC), Jet Navigational Charts (JNC), Operational Navigational Charts (ONC), Tactical Pilotage Charts (TPC) and Joint Operational Graphics (JOG). Detailed 1:100,000 and 1:50,000 Topographic Line maps are currently available for Afghanistan and Iraq. NGA's complete dataset of Topographic Line Maps will be added to GeoGlobe in the near future.
						</p>
						<br/>
						<br/>
						<p>
							<img src="images/img5_1.jpg" alt="Hard Drive" style="float: left;margin-right:10px" width="150px">
							The Imagery View of AGE GeoGlobe includes worldwide imagery coverage at a resolution of 15m using EarthSat's NaturalVue global imagery product. Commercial imagery with resolutions of up to 60cm is available for selected areas. This includes Digital Globe's CitySphere dataset of 223 high resolution city images. NGA's Controlled Imagery Base (CIB) 1m and 5m products are also available. AGC's Buckeye and Urban Tactical Planner city mosaic images are currently being added the Globe and will be available in the near future.
						</p>
						<br/>
						<br/>
						<p>
							The GeoGlobe uses NGA DTED Level 1 and 2 as the base elevation model for the Globe. AGC's Buckeye LIDAR elevation data and other high resolution elevation datasets such as 5m elevation for most of Afghanistan are also used where available. As higher resolution elevation data becomes available it can easily be added to the base elevation model for GeoGlobe.
						</p>
						<br/>
						<p>
							<img src="images/img6_1.jpg" alt="Hard Drive" style="float: left;margin-right:10px" width="150px">
							AGE GeoGlobe also provides users with advanced 3D analysis capabilities such as Terrain Profiling, Line-of-Sight and Viewshed Analysis. Users can also display most standard raster (Erdas IMG, GeoTiff, MrSid, Ecw, NITF) and vector (Shapefile, KML, KMZ) data formats or access data directly from any spatial database (Oracle Spatial, ArcSDE, ArcGIS Server). It is also possible to view open source formats such as Web Mapping Services (WMS) and Web Feature Services (WFS). This ability allows AGE GeoGlobe to forego the normal processing time required by other applications to prepare the terrain datasets or "skins" for viewing.
						</p>

						<br/>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">Other GeoGlobe features include:</span>
						<br/><br/>
						<p>
							<ul style="margin-left: 20px;">
								<li><p>Coordinates displayed in Latitude/Longitude, UTM and MGRS</p></li>
								<li><p>Snapshot tool to capture image displayed in the viewer</p></li>
								<li><p>Detachable 2D map linked to the 3D view display</p></li>
								<li><p>Searchable gazetteer for finding and displaying areas by place name or coordinates</p></li>
								<li><p>Bookmark and share favorite locations</p></li>
								<li><p>Collaboration tool which allows multiple users  to synchronize views and to share geospatial data</p></li>
								<li><p>Sketch and annotate on maps and imagery</p></li>
							</ul>
						</p>
						<br/>
						<p>
							AGE GeoGlobe requires the local installation of the TerraExplorer C2MP (Command and Control / Mission Planning) Viewer which can be downloaded from the AGC website. Current DTSS users and others with TerraExplorer Pro v5.1.1.9 can immediately access the AGE GeoGlobe without further installation (Browsers do not currently allow true "thin client" 3D applications to be run without the installation of a local software component). A recent improvement in the installation process no longer requires administrative rights to perform the local install.  Users can now install the executable file directly to their local profile.
						</p>
						<br/>
						<p>
							Launch AGE GeoGlobe (temporarily disabled) The above link should automatically prompt you to install the viewer control. If you receive a security error, you can obtain the viewer control from <a href="https://galaxy.agc.army.mil/Installs/TerraExplorer_6.1.1_ATO.exe" class="pages_link" target="_blank">here</a>. For assistance, please contact <a href="mailto:Jason.H.Warne@usace.army.mil" class="pages_link" target="_blank">Jason Warne.</a> 
						</p>
						<br/>
						<p>
							NOTICE:  Users may experience limited functionality with Internet Explorer version 9.
						</p>
					</div>
					
					<div class="description desc_custom" style="width: 27%;left: 67%;bottom: 80%;">
						
						<span style="font-size: 15px;" class="button-map-custom">
							<a href="https://cac.agc.army.mil/Products/geoglobe/" target="_blank" class="pages_link">AGE GeoGlobe</a>
						</span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/GlobeFAQ.cfm" class="button-map-custom pages_link" target="_blank">AGE GeoGlobe FAQs</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/upload/AGE_Geoglobe_v1_Type-ATO.pdf" class="button-map-custom pages_link" target="_blank">NEW!!! ATO for GeoGlobe</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/poc.cfm" class="button-map-custom pages_link" target="_blank">Points of Contact</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Software/upload/CoN-TerraExplorer-6-x.pdf" class="button-map-custom pages_link" target="_blank">Skyline Certificate of Networthiness</a>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">
							What's New in AGE GeoGlobe
						</span>
						<br/>
						<br/>
						<ul style="margin-left: 20px;">
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/index.cfm" class="button-map-custom pages_link" target="_blank">AGE GeoGlobe</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/GlobeFAQ.cfm" class="button-map-custom pages_link" target="_blank">AGE GeoGlobe FAQs</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/upload/AGE_Geoglobe_v1_Type-ATO.pdf" class="button-map-custom pages_link" target="_blank">NEW!!! ATO for GeoGlobe</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/Products/geoglobe/poc.cfm" class="button-map-custom pages_link" target="_blank">Points of Contact</a>
							</li>
							<li>
								<a href="https://cac.agc.army.mil/whatsnewsection.cfm?s=93&n=AGE%20GeoGlobe" class="button-map-custom pages_link" target="_blank">view all new items in AGE GeoGlobe</a>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">Fact Sheets</span>
						<br/><br/>
						<ul style="margin-left: 20px;">
							<li>
								<span class="button-map-custom">
									<a href="https://cac.agc.army.mil/About/FactSheets/upload/AGE-GeoGlobe-Fact-Sheet.pdf" target="_blank" class="pages_link">AGE GeoGlobe Fact Sheet</a>
								</span>
							</li>
						</ul>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom">Primary Contact for AGE GeoGlobe</span>
						<br/>
						<br/>
						<span style="font-size: 15px;" class="button-map-custom"><a href="mailto:Jason.H.Warne@usace.army.mil" target="_blank" class="pages_link">Jason Warne</a></span>
						<p>Geospatial Applications Team</p>
						<p>703-428-3635 (COMM)</p>
						<p>328-3635 (DSN)</p>
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