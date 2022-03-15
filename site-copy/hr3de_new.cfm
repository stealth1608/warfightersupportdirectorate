
	<cfinclude template="includes/header.cfm">
    <cfinclude  template="includes/page_menus.cfm">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<div class="row">
		<div class="col-md-12">
			<div id="about">
				<div class="container">
					<div class="sixteen columns" data-scrollreveal="enter top and move 150px over 1s">
						<div class="header-text">
							<div class="header-shadow-text" style="font-size: 47px;">BuckEye HR3D-Enhanced Datasets</div>
							<h1>BuckEye HR3D-Enhanced Datasets</h1>
							<p style="font-size: 26px;"><b>U.S. Army Geospatial Center</b></p>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-md-9">
			<div class="description desc_custom" style="background: inherit;width:50%;bottom: 6%;left: 6%;">
				<h4>BuckEye HR3D-Enhanced Datasets</h4>
				<p>
					<span style="font-size: 15px;color: skyblue;" class="button-map-custom">MISSION</span>
					<br/>
					The US Army Geospatial Center (AGC) Buckeye Extraction Team’s (BET) purpose is to build datasets of mobility related features that affect cross country movement— including terrain environment, land cover,
					transportation networks, and obstructing features—
					and use them to provide qualitative and quantitative
					context to 3D terrain models.<br/><br/>
					BET exploits LiDAR and imagery sensor data collected
					by the AGC’s BuckEye Program for most datasets, allowing for greater fidelity in feature extraction, and the
					development of 3D visualizations of Areas of Interest.<br/><br/>
					All vector datasets are collected in and compliant with
					Ground-Warfighter Geospatial Data Model (GGDM) 3.0
					schema. The schema contains universally defined features classes, coded attributes, and quantitative properties. allowing it to be used in coordination with other
					compliant AGC, NGA, and DoD datasets

				</p>
			</div>
		</div>
		<div class="col-md-3">
			<div class="description desc_custom" style="width: 31%;left: 60%;bottom: 98%;margin-top: 870px;">
				<p>
					<img src="images/pack.png" alt="Conceptual Model of teh BuckEye HR3D-E Dataset Package" style="text-align: center;margin-left: 0px;width: 420px;" />
				</p>
				<p>
					<b style="font-weight: bolder;">Conceptual Model of the BuckEye HR3D-E Dataset Package.</b>&nbsp;
					A 3D Model is generated from a
					BuckEye collection using the Pipeline Software program. The BuckEye Extraction Vector dataset
					is then developed and overlaid over the model to provide qualitative and quantitative context,
					such as slope, road networks, landcover, and key buildings and points of interest.
				</p>
				<br/>
				<p>
					<img src="images/view.png" alt="3D Phototextured HR3D produced from airborne imagery and LiDAR" style="text-align: center;margin-left: 0px;width: 420px;" />
				</p>	
				<p>
					<b style="font-weight: bolder;">3D Phototextured HR3D produced from airborne imagery and LiDAR.</b>&nbsp;
					The U.S. Army Geospatial Center’s Pipeline Software is used to process imagery and LiDAR collected by BuckEye into a
					variety of 3D model formats. Shown below is a 3DML format model in Skyline TerraExplorer.
				</p>
				<br/>
				<p>
					<img src="images/view2.png" alt="3D Phototextured HR3D contextualized using an Open Street Map vector overlay" style="text-align: center;margin-left: 0px;width: 420px;" />
				</p>	
				<p>
					<b style="font-weight: bolder;">3D Phototextured HR3D contextualized using an Open Street Map vector overlay.</b>&nbsp;
					The dataset is disseminated as an OGC Compliant i3S format SLPK through the AGE ArcGIS Enterprise Portal.
					Developed from a BuckEye airborne collection of Fort Leonard Wood in June 2020.
				</p>
				
			</div>
		</div>
	</div>

	
	<div id="sep1">
		
		<div class="slideshow" id="slideshow">
			<ol class="slides" style="background: #323232;height: 1750px;">
				<li class="current">
					<div class="description desc_custom" style="background: inherit;width:50%;bottom: 6%;left: 6%;">
						<h4>BuckEye HR3D-Enhanced Datasets</h4>
						<p>
							<span style="font-size: 15px;color: skyblue;" class="button-map-custom">MISSION</span>
							<br/>
							The US Army Geospatial Center (AGC) Buckeye Extraction Team’s (BET) purpose is to build datasets of mobility related features that affect cross country movement— including terrain environment, land cover,
							transportation networks, and obstructing features—
							and use them to provide qualitative and quantitative
							context to 3D terrain models.<br/><br/>
							BET exploits LiDAR and imagery sensor data collected
							by the AGC’s BuckEye Program for most datasets, allowing for greater fidelity in feature extraction, and the
							development of 3D visualizations of Areas of Interest.<br/><br/>
							All vector datasets are collected in and compliant with
							Ground-Warfighter Geospatial Data Model (GGDM) 3.0
							schema. The schema contains universally defined features classes, coded attributes, and quantitative properties. allowing it to be used in coordination with other
							compliant AGC, NGA, and DoD datasets
 
						</p>
					</div>
					<br/>
					<div class="description desc_custom" style="background: inherit;width:50%;left: 6%;">
						<span style="font-size: 15px;color: skyblue;" class="button-map-custom">Products</span>
						<p>
							<b style="font-weight: bolder;">BuckEye High Resolution-3D (HR3D):</b>
							Phototextured 3D model kits created in the AGC’s Pipeline Software from
							BuckEye Imagery and LiDAR sensor data. These model
							kits are made available for customers in OBJ, 3DML,
							and i3S (SLPK) formats.<br/><br/>
							<b style="font-weight: bolder;">BuckEye Extracted Vectors (BEV):</b>
							Specialized/urban scale vector product (< 1:24,000). Extracted in areas
							where BuckEye Airborne has flown, developed primarily
							from high resolution BuckEye Imagery and LiDAR to
							capture terrain, transportation networks, vertical obstructions, and other key mobility features. Distributed
							as a GGDM 3.0 format file geodatabase.<br/><br/>
							<b style="font-weight: bolder;">High Resolution 3D-Enhanced (HR3D-E):</b>
							A combined data package containing an HR3D Model kit and BEV for
							an AOI. The vector dataset enhances the model by
							identifying and providing qualitative and quantitative
							attribution for key features, transportation networks,
							land use, and other terrain information. HR3D-E is
							made available for customers in Skyline Terraexplorer
							and ESRI ArcGIS compatible formats<br/><br/>
							<b style="font-weight: bolder;">Rural Tactical Planner (RTP):</b>
							Tactical scale (1:24,000 - 1:200,000), locally focused product. Maps ground
							transportation, landcover environments, and military
							points of interest in corridors between UTP analyses
							from multispectral satellite imagery. The dataset is an
							intermediate scale product between the ERS and UTP
							datasets in regions of greater interest to the DoD. Distributed as a GGDM 3.0 format file geodatabase
 
						</p>
					</div>
					
					<div class="description desc_custom" style="width: 31%;left: 60%;bottom: 98%;margin-top: 870px;">
						<p>
							<img src="images/pack.png" alt="Conceptual Model of teh BuckEye HR3D-E Dataset Package" style="text-align: center;margin-left: 0px;width: 420px;" />
						</p>
						<p>
							<b style="font-weight: bolder;">Conceptual Model of the BuckEye HR3D-E Dataset Package.</b>&nbsp;
							A 3D Model is generated from a
							BuckEye collection using the Pipeline Software program. The BuckEye Extraction Vector dataset
							is then developed and overlaid over the model to provide qualitative and quantitative context,
							such as slope, road networks, landcover, and key buildings and points of interest.
						</p>
						<br/>
						<p>
							<img src="images/view.png" alt="3D Phototextured HR3D produced from airborne imagery and LiDAR" style="text-align: center;margin-left: 0px;width: 420px;" />
						</p>	
						<p>
							<b style="font-weight: bolder;">3D Phototextured HR3D produced from airborne imagery and LiDAR.</b>&nbsp;
							The U.S. Army Geospatial Center’s Pipeline Software is used to process imagery and LiDAR collected by BuckEye into a
							variety of 3D model formats. Shown below is a 3DML format model in Skyline TerraExplorer.
						</p>
						<br/>
						<p>
							<img src="images/view2.png" alt="3D Phototextured HR3D contextualized using an Open Street Map vector overlay" style="text-align: center;margin-left: 0px;width: 420px;" />
						</p>	
						<p>
							<b style="font-weight: bolder;">3D Phototextured HR3D contextualized using an Open Street Map vector overlay.</b>&nbsp;
							The dataset is disseminated as an OGC Compliant i3S format SLPK through the AGE ArcGIS Enterprise Portal.
							Developed from a BuckEye airborne collection of Fort Leonard Wood in June 2020.
						</p>
						
					</div>
				</li>
				<li class="current">
					<div class="description desc_custom" style="top: 65%;width:100%;">
						<p>
							<img src="images/workf.png" alt="Work Flow" style="text-align: center;margin-left: 0px;width: 1100px;" />
						</p>
					</div>
				</li>
			</ol>
		</div><!-- /slideshow -->
	</div>
	<cfinclude template="includes/footer.cfm">
	<script type="application/javascript">
		$('.scroll').hide()
	</script>