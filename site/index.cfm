<cfquery datasource="db_wsd_datasource" name="qUserStory">
	SELECT top 1 * FROM user_story
</cfquery>

<cfinclude template="includes/header.cfm">
	
	<div id="home">

		<div class="small-text">
			<div class="cl-effect-5"><a class="scroll" href="#work"><span data-hover="portfolio">
						<!---portfolio---></span></a> <a class="scroll" href="#contact"><span data-hover="contact">
						<!---contact---></span></a></div>
		</div>

		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/home.jpg" alt="" />
						<div class="just_pattern"></div>

						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>Home</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/mission_statement.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>Mission Statement</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/focus_areas.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>Focus Areas</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/mission_specific.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>MISSION SPECIFIC AREAS</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/collection_br.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>COLLECTION BRANCH</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/data_dissemination_br.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>DATA DISSEMINATION BRANCH</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/data_generation_br.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>DATA GENERATION BRANCH</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/engagement_br.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>ENGAGEMENTS BRANCH</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/millitary_support.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>MILITARY SUPPORT</span></div>
						</div>
					</li>
					<li data-transition="fade" data-slotamount="1" data-masterspeed="400">
						<img src="images/contact.jpg" alt="" />
						<div class="just_pattern"></div>
						<div class="caption big-text lft ltt" data-x="center" data-y="center" data-speed="500"
							data-start="500" data-easing="easeOutExpo">
							<div class="big-text"><span>Contact</span></div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<a class="scroll" href="#about">
			<div class="scroll-btn tipped" data-title="About Warfighter Support Directorate"
				data-tipper-options='{"direction":"top","follow":"true"}'></div>
		</a>
	</div>


	<div id="about">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">Mission Statement</div>
					<h1>Mission Statement</h1>
					<p>Provides geospatial engineering support to the Army's generating and operating forces focused on
						fulfilling critical geospatial data generation gaps; provides technical reach-back, data
						collection, exploitation, storage and dissemination of geospatial information tailored to the
						Army's unique mission requirements and mission command systems.</p>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div id="about-what-we-do">
			<div class="container container-mission">
				<div class="one-third column" data-scrollreveal="enter left and move 150px over 1s">
					<div class="icon-left1">
						<div class="topnav" style="background: inherit;">
							<a href="javascript:void(0);" onclick="myFunction(this)"
								style="padding-left: 8px;padding-top: 16px;">
								<img src="images/plane-solid.svg" width="25px">
								<h5>BUCKEYE</h5>
							</a>
							<div id="myLinks">
								<a href="hr3d.cfm">HR3D</a>
								<a href="lidar.cfm">LIDAR</a>
							</div>
						</div>
					</div>

					<p>WSD collects, processes, stores and disseminates Unclassified BuckEye HR3D EO & Lidar data in all
						COCOMs.</p>
				</div>
				<div class="one-third column" data-scrollreveal="enter left and move 150px over 1s">
					<div class="icon-left1">
						<div class="topnav" style="background: inherit;">
							<a href="foundation-data.cfm" style="padding-left: 8px;padding-top: 16px;">
								<img src="images/layer-group-solid.svg" width="25px">
								<h5>FOUNDATION DATA</h5>
							</a>
						</div>
					</div>

					<p>WSD provides critical mission specific GEOINT data and technical support to the operating and
						generating force.</p>
				</div>
				<div class="one-third column" data-scrollreveal="enter bottom and move 150px over 1s">
					<div class="icon-left1">
						<div class="topnav" style="background: inherit;">
							<a href="javascript:void(0);" onclick="myFunction(this)"
								style="padding-left: 8px;padding-top: 16px;">
								<img src="images/globe-americas-solid.svg" width="25px">
								<h5>GEOSERVICES</h5>
							</a>
							<div id="myLinks">
								<a href="https://agewebportal.erdc.mil/portal/home/" target="_blank">
									AGE
								</a>
								<a href="https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e"
									target="_blank">
									AWR2
								</a>
								<a href="cmb.cfm">
									CMB
								</a>
								<a href="ers.cfm">
									ERS
								</a>
								<a href="geoglobe.cfm">
									GEOGLOBE
								</a>
								<a href="https://grid.nga.mil/grid/" target="_blank">
									GRID
								</a>
								<a href="https://odin.tradoc.army.mil/DATEWORLD" target="_blank">
									ODIN
								</a>
								<a href="https://uroc-redi.usace.army.mil/SitePages/REDi_DMZ.html" target="_blank">
									REDi
								</a>
								<a href="https://uroc-redi.usace.army.mil/sitepages/redi_jecop.aspx" target="_blank">
									REDi (JECOP)
								</a>
								<a href="https://uroc-redi.usace.army.mil/sites/oev/redi/index.html?map=oev"
									target="_blank">
									REDi (OEV)
								</a>
								<a href="https://agewebportal.erdc.mil/ndvdp/" target="_blank">
									TDM
								</a>
								<a href="utp.cfm">
									UTP
								</a>
							</div>
						</div>
					</div>

					<p>WSD ensures that geospatial mission specific Standard, Sharable, Geospatial Foundation (SSGF)
						data is available in theater through web services such as CMB, AGE Web Portal and interactive
						applications.</p>
				</div>
				<div class="one-third column" data-scrollreveal="enter right and move 150px over 1s">
					<div class="icon-left1">
						<div class="topnav" style="background: inherit;">
							<a href="javascript:void(0);" onclick="myFunction(this)"
								style="padding-left: 8px;padding-top: 16px;">
								<img src="images/map-marked-alt-solid.svg" width="25px">
								<h5>MISSION AREAS</h5>
							</a>
							<div id="myLinks">
								<a href="3dgeov.cfm">
									3DGEOV
								</a>
								<a href="3dprm.cfm">
									3DPRM
								</a>
								<a href="https://agewebportal.erdc.mil/portal/home/" target="_blank">
									AGE
								</a>
								<a href="aio.cfm">
									AIO
								</a>
								<a href="cmb.cfm">
									CMB
								</a>
								<a href="ers.cfm">
									ERS
								</a>
								<a href="geopdf.cfm">
									GeoPDF
								</a>
								<a href="gil.cfm">
									GIL
								</a>
								<a href="hpa.cfm">
									HPA
								</a>
								<a href="hr3d.cfm">
									HR3D
								</a>
								<a href="mst.cfm">
									MST
								</a>
								<a href="rcmb.cfm">
									rCMB
								</a>
								<a href="rtp.cfm">
									RTP
								</a>
								<a href="https://agewebportal.erdc.mil/portal/home/group.html?id=6898e0bbb268463abb6183a66705cfb7#overview"
									target="_blank">
									SUPPORT (TSP)
								</a>
								<a href="https://agewebportal.erdc.mil/ndvdp/" target="_blank">
									TDM
								</a>
								<a href="utp.cfm">
									UTP
								</a>
							</div>
						</div>
					</div>
					<p class="padding-bottom-project">WSD fills the geospatial requirement gap between the Army and NGA
						providing Geospatial Information & Services (GI&S) training, data and technical support to all
						echelons.</p>
				</div>
				<div class="one-third column" data-scrollreveal="enter right and move 150px over 1s">
					<div class="icon-left1">
						<div class="topnav" style="background: inherit;">
							<a href="mailto:dll-wsd-reachback@usace.army.mil" style="padding-left: 8px;
    padding-top: 16px;" target="_blank">
								<img src="images/question-circle-solid.svg" width="25px">
								<h5>SUPPORT</h5>
							</a>
						</div>
					</div>

					<p class="padding-bottom-project">WSD provides geospatial, time sensitive, reach-back solutions to
						the DoD and Army in support current, planned or crisis support operations.</p>
				</div>
			</div>
		</div>
		<!--<div class="video-sections">-->
		<div class="work">
			<div class="container">
				<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
					<div class="header-text">
						<div class="header-shadow-text">OEV</div>
						<h1>OEV</h1>
						<p></p>
					</div>
				</div>
			</div>
			<a target="_blank" href="https://uroc-redi.usace.army.mil/sites/oev/redi/index.html?map=oev"><img
					src="images/landing_map.jpg" alt="" style="width:100%;"></a>
		</div>
	</div>

	<div id="sep1">
		<div class="just_pattern"></div>
		<div class="parallax"></div>
		<div class="slideshow" id="slideshow">
			<ol class="slides">
				<li class="current">
					<div class="description">
						<h4>FLY-THRUS</h4>
						<p>AGC produces customer requested terrain fly-thrus using Skyline TerraExplorer software.
							Fly-thrus are designed to provide terrain visualization using NGA and AGC datasets and can
							be used on Army Program of Record systems that have Skyline TerraExplorer software
							installed.</p>
					</div>
					<div class="tiltview col">
						<a href="fly-thrus.cfm" style="color: white" target="_blank"><img src="images/flythru.png"
								alt="" /></a>
					</div>
				</li>
				<li>
					<div class="description">
						<h4>GEOGLOBE</h4>
						<p>A 3D based visualization and dissemination tool designed to make the discovery and
							exploitation of high resolution data more intuitive and productive within an organization's
							user community. AGC's GeoGlobe is based on Skyline Software's Skyline Globe suite of
							products. This enterprise software allows users to access AGC created 3D datasets on their
							hosted environment through a locally installed 3D client. AGC supports seven GeoGlobes at
							Army Combat Training Centers, deployed locations overseas, and Global Response Force units
							with software, data, training, and reach back support.</p>
					</div>
					<div class="tiltview col">
						<a href="geoglobe.cfm" target="_blank"><img src="images/GLOBE.png?ver=1" alt="" width="400"
								height="400" /></a>
					</div>
				</li>
				<li>
					<div class="description">
						<h4>Geospatial Technical Support (GTS)</h4>
						<p>On-call Technical Geospatial Support to help with the integration and implementation of
							geospatial resources at all echelons. Support can be provided at AGC or if needed deploys
							mobile support teams to units to train soldiers on the latest tools, techniques and
							procedures for data generation and content management.</p>
					</div>
					<div class="tiltview col">
						<a href="gts.cfm" target="_blank"><img src="images/gts1.png" alt="" /></a>
					</div>
				</li>
				<li>
					<div class="description">
						<h4>Reach Back Support</h4>
						<p>Request for Information (RFI) reach back support for units in the field. Relies heavily on
							in-house expertise of Civilian Analysts, 125D, 
							and 12Y&acute;s. Exercise support to rotational and
							national level exercises. Mission rehearsal, analytical support, AAR tools. Supports
							Soldiers directly with robust geospatial solutions to supplement organic unit capabilities.
						</p>
					</div>
					<div class="tiltview col">
						<!--- <a href="mailto:dll-wsd-reachback@usace.army.mil" target="_blank"><img src="images/REACHBACK.jpg" alt="" /></a> --->
						<a href="rbs.cfm" target="_blank"><img src="images/REACHBACK.jpg" alt="" /></a>
					</div>
				</li>
			</ol>
		</div><!-- /slideshow -->
	</div>


	<div id="work">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">MISSION AREAS</div>
					<h1>MISSION AREAS</h1>
					<p>Warfighter Support Directorate fills the geospatial requirement gap between the Army and NGA
						providing Geospatial Information & Services (GI&S) training, data and technical support to all
						echelons.</p>
				</div>
			</div>
		</div>

		<div class="clear"></div>
		<div class="portfolio"></div>


		<div class="expander-wrap relative">
			<div id="expander-wrap">
				<p class="cls-btn"><a class="close">X</a></p>
				<div class="expander-inner"></div>
			</div>
		</div>


		<div class="clear"></div>
		<div class="container">
			<div class="sixteen columns">
				<div id="portfolio-filter">
					<ul id="filter">
						<li><a href="#" class="current" data-filter="*" title="">WSD</a></li>
						<li><a href="#" data-filter=".collections" title="">Collections</a></li>
						<li><a href="#" data-filter=".data-generation" title="">Data Generation</a></li>
						<li><a href="#" data-filter=".dissemination" title="">Dissemination</a></li>
						<li><a href="#" data-filter=".engagements" title="">Engagements</a></li>
						<li><a href="#" data-filter=".military-support" title="">Military Support</a></li>
					</ul>
				</div>
			</div>
		</div>
		<ul class="portfolio-wrap">
			<li class="portfolio-box collections" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm" title="">
					<img src="images/gallery/hr3d.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>HR3D</h4>
				</a>
				<div id="divForm" style="display:none" onclick="open_details('hr3d.cfm')">
					<h4 class="mission-area-title" style="color:black">High Resolution 3D BuckEye</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The AGC HR3D BuckEye Program is a wide area mapping capability encompassing collection, storage
						and dissemination of 2-10cm geo-registered, ortho-rectified color imagery, with 1m resolution
						LiDAR elevation data, all Unclassified/FOUO releasable to Coalition and Host Nation partners.
						Co-collection of imagery and elevation data provides situational awareness, precision data for
						mission planning, operations and a shareable geospatial foundational dataset for mission command
						systems. Army systems such as MMC, JBC-P, JCR, TAK/ATAK can ingest BuckEye data for tactical use
						and advantage.
					</p>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						BuckEye platforms are manned fixed wing, unmanned and terrestrial. The BuckEye Program is
						comprised of sensors, platforms, processing systems and dissemination capabilities such as Pixia
						HiperDrives. Color imagery is processed to individual image frames with web-based indexes and
						then to ortho-rectified mosaics. LiDAR data is processed to point cloud data and then to gridded
						raster data. Data is processed within 72 hours and archived in AGC, and NGA's GRiD on all
						domains.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box data-generation" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm1" title="">
					<img src="images/gallery/ers.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>ERS</h4>
				</a>
				<div id="divForm1" style="display:none" onclick="open_details('ers.cfm')">
					<h4 class="mission-area-title" style="color:black">Engineering Route Study</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The ERS is a strategic/operational level Army planning product. It provides information on
						transportation systems, terrain, and environmental data, at the country or regional level and
						assist's the warfighter in planning a variety of missions including military operations,
						humanitarian relief, and transportation studies in easily accessible formats. The ERS can
						include man-made or environmental hazards affecting the major transportation routes. Highway
						system information includes road classification, surface type, and distance in kilometers. Other
						transportation systems delineated include C-130 capable airfields, strategic sealift capable
						ports, and major railroad lines. Terrain and environmental data includes key rivers, streams,
						surface configuration, areas of potential flooding and landslides, and descriptions of drainage
						and climate data.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm1" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box data-generation" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm2" title="">
					<img src="images/gallery/hpa.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>HPA</h4>
				</a>
				<div id="divForm2" style="display:none" onclick="open_details('hpa.cfm')">
					<h4 class="mission-area-title" style="color:black">Historical Photographic Analysis</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						Historical Photographic Analysis (HPA) uses both historical photography and ancillary sources to
						reveal potential environmental concerns on Department of Defense (DoD) properties. These
						temporal or time-based studies provide clues for identifying Hazardous, Toxic and Radioactive
						Waste (HTRW), Unexploded Ordnance (UXO) under the Military Munitions Response Program (MMRP)
						Formerly Used Defense Sites (FUDS) Program, Landfill Locations, Groundwater Contaminate
						Pathways, and Shoreline Changes. HPA allow DoD planners to make sound, cost-effective
						environmental cleanup decisions and focus restoration efforts.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm2" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box data-generation" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm3" title="">
					<img src="images/gallery/rtp.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>RTP</h4>
				</a>
				<div id="divForm3" style="display:none" onclick="open_details('rtp.cfm')">
					<h4 class="mission-area-title" style="color:black">Rural Tactical Planner</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The US Army Geospatial Center (AGC) Buckeye Extraction Team's (BET) purpose is to build datasets
						of mobility related features that affect cross country movement, including terrain environment,
						land cover, transportation networks, and obstructing features. The resulting product is the
						Rural Tactical Planner (RTP), an operational planning tool designed to support Military mobility
						studies. Created as a way to map terrain in corridor areas between UTPs and in areas other areas
						of special interest to the DoD. The team generates two vector datasets for mission use and one
						3D data package (under development):
					</p>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						-Rural Tactical Planner (RTP-C) - Tactical scale (1:24,000 - 200,000), locally focused product.
						Carried out by contractor teams. Maps ground transportation, landcover environments, and
						military points of interest in corridors between UTP analyses. The dataset is an intermediate
						scale product between ERS and UTP datasets in regions of greater interest to the DoD.
					</p>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						-Buckeye Vector (RTP-BE) - Specialized/urban scale product (< 1:24,000). Extracted in areas
							where BuckEye Airborne has flown, developed from high resolution Buckeye Imagery and LiDAR
							to capture terrain, transportation networks, and vertical obstructions. </p> 
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
							-Hi-Resolution 3D-Enhanced (HR3D-E) - a 3D model kit derived from RTP-BE vector products and
							Buckeye Imagery/Sensor data. Vector data enhances the 3D HR3D capture by providing valuable
							attribution to the 3D terrain models.
					</p>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						Both vector datasets are collected in and compliant with the Ground-Warfighter Geospatial Data
						Model (GGDM) 3.0 schema, allowing it to be used in coordination with other AGC, NGA, and DoD
						datasets.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm3" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box data-generation" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm4" title="">
					<img src="images/gallery/utp.png?ver=1" alt="" />
					<div class="mask"></div>
					<h4>UTP</h4>
				</a>
				<div id="divForm4" style="display:none" onclick="open_details('utp.cfm')">
					<h4 class="mission-area-title" style="color:black">Urban Tactical Planner</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The UTP assists in the planning and visualization of military operations in select world urban
						areas. UTP is foundational and authoritative data which one can value add to and it provides the
						warfighter to assist in the planning and visualization of military operations in world's urban
						areas. The urban environment is displayed as an aggregate of features that affect military urban
						area operations, such as building form and function (broken out as polygons of like- building
						types), building height, vertical obstructions, terrain feature, bridges, lines of
						communication, key cultural features, landmarks, etc. These features are shown as themes or
						layers that can be displayed, on- or-off, as decided by the user.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm4" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box dissemination" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm5" title="">
					<img src="images/gallery/aio.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>AIO</h4>
				</a>
				<div id="divForm5" style="display:none" onclick="open_details('aio.cfm')">
					<h4 class="mission-area-title" style="color:black">AGC Imagery Office</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The AGC Imagery Office (AIO) functions as the U.S. Army's commercial imagery acquisition agent
						and monitor. This action is designed to prevent Army agencies and organizations from duplicating
						imagery acquisition/data purchases. The AIO is also designated as the repository of selected
						commercial satellite/aerial imagery and AGI data pertaining to terrain analysis and water
						resources operations. The AIO repository is accessible to DoD users via an online search &
						discovery application requiring user registration.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm5" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box dissemination" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm6" title="">
					<img src="images/gallery/cmb.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>CMB</h4>
				</a>
				<div id="divForm6" style="display:none" onclick="open_details('cmb.cfm')">
					<h4 class="mission-area-title" style="color:black">Common Map Background</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						CMB provides AGC products and Standard and Shareable Geospatial Foundation (SSGF) digital map,
						elevation, and image data to the Warfighter. CMB utilizes a comprehensive digital data library
						and custom ArcGIS toolset designed to dramatically reduce the time and expense required to
						acquire, manage and distribute AGC and SSGF content. <a
							href="https://agcwfs.agc.army.mil/CMB_Online/default.html"
							target="_blank">https://agcwfs.agc.army.mil/CMB_Online/default.html</a>
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm6" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box dissemination" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm7" title="">
					<img src="images/gallery/gil.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>GIL</h4>
				</a>
				<div id="divForm7" style="display:none" onclick="open_details('gil.cfm')">
					<h4 class="mission-area-title" style="color:black">Geospatial Information Library</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The Geospatial Information Library focuses on physical geography, terrain analysis and military
						hydrology, and provides support to all authorized Army, DoD, and other government organizations.
						The collection is geographic and geospatial centric, and much is non-standard. The collection
						consists of printed books and reports, articles, maps, atlases, technical reports, and organized
						but unpublished field data.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm7" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box dissemination" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm8" title="">
					<img src="images/gallery/geopdf.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>GEOPDF</h4>
				</a>
				<div id="divForm8" style="display:none" onclick="open_details('geopdf.cfm')">
					<h4 class="mission-area-title" style="color:black">Geospatial PDF</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						The Army AGC Geospatial PDF program is tasked with producing Geospatial PDF versions of all AGC
						products and has created the Country Geospatial PDF DVD (a disk or set of disks containing all
						available NGA standard maps for a given country).
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm8" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm9" title="">
					<img src="images/gallery/3dgeo.jpg?ver=1" alt="" />
					<div class="mask"></div>
					<h4>3DGEO</h4>
				</a>
				<div id="divForm9" style="display:none" onclick="open_details('3dgeov.cfm')">
					<h4 class="mission-area-title" style="color:black">3D Geo-Visualization</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						3D GeoVisualization combines tools, techniques, and geospatial data to provide an interactive
						environment for the interpretation, analysis, visualization and communication of spatial
						information. AGC list of provided services are: Software (Skyline Software), Training (Software
						and Systems), Reach back Support, and Specialized Elvis Kits. These geovisualization services
						primarily support DCGS-A customers while specialized products, training and support can also be
						provided to other DoD customers as requested.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm9" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm11" title="">
					<img src="images/gallery/3dprm.jpg" alt="" />
					<div class="mask"></div>
					<h4>3DPRM</h4>
				</a>
				<div id="divForm11" style="display:none" onclick="open_details('3dprm.cfm')">
					<h4 class="mission-area-title" style="color:black">3D Plastic Relief Map</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						AGC can provide 3D Raised Relief Maps using customer supplied 2D maps or AGC created maps
						produced to customer specifications. The 2D map is then matched with a digital elevation model
						(DEM) which is then scaled vertically to enhance terrain features on the finished 3D raised
						relief map. The map is then printed on rigid plastic film which is vacuum formed over the 3D
						mold to create the final product. AGC relief maps can have a molded 3D area up to 50" x 35" in
						size, with up to 3" of vertical relief and an overall trim size of up to 54" x 38". Larger maps
						can be created using tiling when appropriate. Delivery times are approximately 2-3 months for a
						standard order.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm11" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm12" title="">
					<img src="images/gallery/age.jpg" alt="" />
					<div class="mask"></div>
					<h4>AGE</h4>
				</a>
				<div id="divForm12" style="display:none" onclick="open_details('age.cfm')">
					<h4 class="mission-area-title" style="color:black">Army Geospatial Enterprise Portal </h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						AGC ArcGIS Online Portal instance that allows Army and DoD customers to share and collaborate
						geospatial data and products in an enterprise enabled environment. AGE Web Portal architecture
						supports the creation of web maps, applications, and services from hosted content. Users can
						access the site (NIPR and SIPR) with an internet browser or ArcGIS software.
					</p>
					<p class="mission-area-text"><a href="https://agewebportal.erdc.mil/portal/home"
							target="_blank">https://agewebportal.erdc.mil/portal/home</a>
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm12" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm13" title="">
					<img src="images/gallery/rcmb.jpg" alt="" />
					<div class="mask"></div>
					<h4 style="text-transform:none;">rCMB</h4>
				</a>
				<div id="divForm13" style="display:none;" onclick="open_details('rcmb.cfm')">
					<h4 class="mission-area-title" style="color:black">remote Common Map Background </h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						Delivers a system with 12 TB of Standard and Shareable Geospatial Foundation (SSGF) digital map,
						elevation, and image data to the Warfighter for quick data availability and field military
						applications.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm13" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm14" title="">
					<img src="images/gallery/tdm.jpg" alt="" />
					<div class="mask"></div>
					<h4>TDM</h4>
				</a>
				<div id="divForm14" style="display:none" onclick="open_details('tdm.cfm')">
					<h4 class="mission-area-title" style="color:black">Topographic Data Management</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						AGC AGE web application that serves as a data repository and production application. It provides
						Army and DoD users access to versioned mission and product databases supporting extraction,
						analysis, and editing of Army feature data. <a href="https://agewebportal.erdc.mil/ndvdp"
							target="_blank">https://agewebportal.erdc.mil/ndvdp</a> (Will require request to join
						specific COCOM Geodatabase).
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm14" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box engagements" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm15" title="">
					<img src="images/gallery/tsp.jpg" alt="" />
					<div class="mask"></div>
					<h4>TSP</h4>
				</a>
				<div id="divForm15" style="display:none" onclick="open_details('tsp.cfm')">
					<h4 class="mission-area-title" style="color:black">Training Support Program</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						Provide advanced Geospatial Engineering training support that enables Geospatial Engineer and
						GEOINT Teams to prepare for Combat Training Center rotations and overseas deployments using
						AGC's premium datasets on their fielded unit Army Program of Record (PoR) systems.
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm15" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
			<li class="portfolio-box military-support" style="height:240px;">
				<a class="fancybox-effects-d" href="#divForm16" title="">
					<img src="images/gallery/mst.jpg" alt="" />
					<div class="mask"></div>
					<h4>MST</h4>
				</a>
				<div id="divForm16" style="display:none" onclick="open_details('mst.cfm')">
					<h4 class="mission-area-title" style="color:black">Military Support Team</h4>
					<p class="mission-area-text" style="text-align: justify;margin-left: 10px;">
						A service of military expertise to provide specialized products and services using military
						regulations, policies, and standards. Delivers real world and training products that provide
						geographic understanding for Warfighter and Civil Support leaders. Translates requests for
						information (RFI) and geospatial requirements for analysis and integration of emerging
						Geographic Information Science and Technologies (GIS&T) development of systems, tools, products,
						and online services, meeting technological demands for U.S. Army and Corps of Engineers&acute;
						missions. Applies Knowledge Management standards and techniques onto geospatial data and
						production, in accordance with U.S. Army and National System for Geospatial Intelligence (NSG)
						requirements of Standard and Shareable Geospatial Foundation (SSGF) and Geospatial Information
						and Services (GI&S).
					</p>
				</div>
				<a class="fancybox-effects-d" href="#divForm16" title="">
					<div class="fancybox-button">&#xf106;</div>
				</a>
			</li>
		</ul>

		<div class="clear"></div>

		<!--<div class="three columns" style="margin-top:30px;text-align:center;">
			<a href="mailto:dll-wsd-reachback@usace.army.mil" target="_blank" style="background: transparent;border: 3px solid;padding:5px 50px;font-weight:bold;color:#fff;">REQUEST SUPPORT</a>
		</div>-->

		<div class="clear"></div>

		<div id="link-work" style="padding:0px;">
			<div class="container">
				<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
					<div class="cl-effect-5">
						<!---<a class="scroll" href="#contact"><span data-hover="contact us">get in
								touch</span></a>--->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="sep1">
		<div class="slideshow" id="slideshow">
			<ol class="slides" style="background: #323232;">
				<li class="current">
					<div class="description desc_custom" style="background: inherit;">
						<h4>Reach Back Support</h4>
						<p>Request for Information (RFI) reach back support for units in the field. Relies heavily on
							in-house expertise of Civilian Analysts, 125D, 
							and 12Y&acute;s. Exercise support to rotational and
							national level exercises. Mission rehearsal, analytical support, AAR tools. Supports
							Soldiers directly with robust geospatial solutions to supplement organic unit capabilities.
						</p>
					</div>
					<div class="description submit_custom" style="background: inherit;">
						<div id="button-con">
							<button type="submit" class="send_message"><a href="mailto:dll-wsd-reachback@usace.army.mil"
									style="color: white" target="_blank">Submit</a>
							</button>
						</div>
					</div>
					<div class="tiltview col" style="width: 27%;left: 67%;">
						<a href="mailto:dll-wsd-reachback@usace.army.mil" target="_blank"><img
								src="images/pngwing.com.png" alt="" /></a>
					</div>
				</li>
			</ol>
		</div>
	</div>


	<div id="sep2">
		<cfoutput>
			<div class="just_pattern"></div>
			<div class="parallax2"></div>
			<div class="container z-index">
				<div class="four columns">
					<div class="facts-wrap">
						<div class="facts-wrap-num">
							<span class="counter1">#qUserStory.count1#</span>
						</div>
						<h5>
							<cfoutput>#qUserStory.label1#</cfoutput>
						</h5>
					</div>
				</div>
				<div class="four columns">
					<div class="facts-wrap">
						<div class="facts-wrap-num">
							<span class="counter2">#qUserStory.count2#</span>
						</div>
						<h5>
							<cfoutput>#qUserStory.label2#</cfoutput>
						</h5>
					</div>
				</div>
				<div class="four columns">
					<div class="facts-wrap">
						<div class="facts-wrap-num">
							<span class="counter3">#qUserStory.count3#</span>
						</div>
						<h5>
							<cfoutput>#qUserStory.label3#</cfoutput>
						</h5>
					</div>
				</div>
				<div class="four columns">
					<div class="facts-wrap">
						<div class="facts-wrap-num">
							<span class="counter4">#qUserStory.count4#</span>
						</div>
						<h5>
							<cfoutput>#qUserStory.label4#</cfoutput>
						</h5>
					</div>
				</div>
			</div>
		</cfoutput>
	</div>

	<div id="contact">
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
				<div class="header-text">
					<div class="header-shadow-text">feedback</div>
					<h1>feedback</h1>
					<p>Help us to help you</p>
				</div>
			</div>
		</div>
		<div class="container">
			<!--<form name="ajax-form" id="ajax-form" method="post">-->
			<div class="four columns">
				<label for="name">Your Name: *
					<span class="error" id="err-name">please enter name</span>
				</label>
				<input name="name" id="name" type="text" />
			</div>
			<div class="four columns">
				<label for="email">Subject
					<span class="error" id="err-email">please enter e-mail</span>
					<span class="error" id="err-emailvld">e-mail is not a valid format</span>
				</label>
				<input name="subject" id="subject" type="text" />
			</div>
			<div class="five columns">
				<label for="message">Tell Us Everything:</label>
				<textarea name="message" id="message"></textarea>
			</div>
			<div class="three columns">
				<div id="button-con">
					<button class="send_message" onclick="sendEmail()">Submit</button>
				</div>
			</div>
			<div class="clear"></div>
			<div class="error text-align-center" id="err-form">There was a problem validating the form please check!
			</div>
			<div class="error text-align-center" id="err-timedout">The connection to the server timed out!</div>
			<div class="error" id="err-state"></div>
			<!--</form>-->
			<div class="clear"></div>
			<div id="ajaxsuccess">Successfully sent!!</div>
			<div class="clear"></div>
			<div class="eight columns" data-scrollreveal="enter left and move 150px over 1s">
				<div class="contact-wrap">
					<p><i class="icon-contact1">&#xf095;</i><span>call us:</span> 703-428-3736
						<small><em>(Eastern Time)</em></small></p>
				</div>
			</div>
			<div class="eight columns" data-scrollreveal="enter right and move 150px over 1s">
				<div class="contact-wrap">
					<p><i class="icon-contact1">&#xf041;</i><span>Visit Us:</span> 7701 Telegraph Road, Alexandria, VA
						22315</p>
				</div>
			</div>
			<div class="sixteen columns" data-scrollreveal="enter bottom and move 150px over 1s">
				<a class="button-map cls_map close-map"><span>Locate Us on Map</span></a>
			</div>
		</div>
		<div id="google_map">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3111.912923073185!2d-77.14415068478915!3d38.74276037959478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7ada6e31684dd%3A0x4d8293fe653e5191!2s7701%20Telegraph%20Rd%2C%20Alexandria%2C%20VA%2022315!5e0!3m2!1sen!2sus!4v1607368685440!5m2!1sen!2sus"
				width="600" height="450" frameborder="0" style="border:0;height: 450px;" allowfullscreen=""
				aria-hidden="false" tabindex="0"></iframe>
		</div>
		<div class="container">
			<div class="sixteen columns" data-scrollreveal="enter bottom and move 150px over 1s">
				<a class="button-map cls_links close-map"><span>Additional Links</span></a>
			</div>
		</div>
		<div id="additional_links">
			<nav class="navbar-mainmenu" style="text-align: center;">
				<ul class="navbar-nav">
					<!--C-->
					<li class="nav-item active">
						<a href="https://www.cia.gov/" class="button-map-custom pages_link nav-link"
							target="_blank">CIA</a>
					</li>
					<!-- C -->
					<!-- D -->
					<li class="nav-item active">
						<a href="https://www.dla.mil/" class="button-map-custom pages_link nav-link"
							target="_blank">DLA</a>
					</li>
					<li class="nav-item active">
						<a href="https://safe.apps.mil/" class="button-map-custom pages_link nav-link"
							target="_blank">DoD SAFE</a>
					</li>
					<!-- G -->
					<li class="nav-item active">
						<a href="https://www.nga.mil/resources/1597167691514_US_Board_on_Geographic_Names_.html"
							class="button-map-custom pages_link nav-link" target="_blank">GEOnet</a>
					</li>
					<li class="nav-item active">
						<a href="https://gsr.nga.mil/" class="button-map-custom pages_link nav-link" target="_blank">GSR
							(formerly NGDS)</a>
					</li>
					<!-- L -->
					<li class="nav-item active">
						<a href="https://www.loc.gov/rr/geogmap/" class="button-map-custom pages_link nav-link"
							target="_blank">LOC</a>
					</li>
					<!-- N -->
					<li class="nav-item active">
						<a href="http://www.nara.gov" class="button-map-custom pages_link nav-link"
							target="_blank">NARA</a>
					</li>
					<li class="nav-item active">
						<a href="https://www.nga.mil/" class="button-map-custom pages_link nav-link" target="_blank">NGA
						</a>
					</li>
					<li class="nav-item active">
						<a href="https://www.nga.mil/resources/1597180994439_Nome.html"
							class="button-map-custom pages_link nav-link" target="_blank">NOME </a>
					</li>
					<li class="nav-item active">
						<a href="https://www.ntis.gov/" class="button-map-custom pages_link nav-link"
							target="_blank">NTIS</a>
					</li>
					<!-- O -->
					<li class="nav-item active">
						<a href="https://odin.tradoc.army.mil/" class="button-map-custom pages_link nav-link"
							target="_blank">ODIN</a>
					</li>
					<!-- R -->
					<li class="nav-item active">
						<a href="https://uroc-redi.usace.army.mil/SitePages/REDi_DMZ.html"
							class="button-map-custom pages_link nav-link" target="_blank">REDi</a>
					</li>
					<!-- U -->
					<li class="nav-item active">
						<a href="https://www.usgs.gov/" class="button-map-custom pages_link nav-link"
							target="_blank">USGS </a>
					</li>
					<li class="nav-item active">
						<a href="https://www.usgs.gov/centers/eros/science/usgs-eros-archive-products-overview?qt-science_center_objects=0#qt-science_center_objects"
							class="button-map-custom pages_link nav-link" target="_blank">USGS EROS</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>

	<cfinclude template="includes/footer.cfm">