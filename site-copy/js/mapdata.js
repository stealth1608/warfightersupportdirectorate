var simplemaps_worldmap_mapdata = {

	main_settings:{
		//General settings		
        width: 'responsive',
		background_color: '#323232',	
		background_transparent: 'no',
		label_color: '#d5ddec',		
		border_color: '#0d0c0c',
		pop_ups: 'on_click', //on_click, on_hover, detect, off
	
		//Country defaults
		state_description:  'Common Map Background Lite (CMB-Lite)',
		state_color: '#88A4BC',
		state_hover_color: '#3B729F',
		state_url: 'https://www.agc.army.mil/',
		all_states_inactive: 'no',
		
		//Location defaults
		location_description:  'Location description',
		location_color: '#FF0067',
		location_opacity: 1,
		location_url: 'default',
		location_size: 15,
		location_type: 'marker', //or circle
		all_locations_inactive: 'no',
		
		//Advanced settings - safe to ignore these
		div: 'map',
		border_size: .1,
		popup_color: 'white',
		popup_opacity: .9,
		popup_shadow: 1,
		popup_corners: 5,
		popup_font: '12px/1.5 Verdana, Arial, Helvetica, sans-serif',
		popup_nocss: 'no',		
		initial_zoom: -1,  //-1 is zoomed out, 0 is for the first continent etc	
		initial_zoom_solo: 'yes',
		all_states_zoomable: 'yes',
		auto_load: 'yes',
		zoom: 'yes',
		zoom_out_incrementally: 'yes',
		url_new_tab: 'yes' 		
	},

	state_specific:{	
		    //AE: { 
				//name: 'United Arab Emirates',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/dev_index.html?coords=53.847818,23.424076&zoomLevel=7">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/United-Arab-Emirates.cfm'
			 //Note:  You must omit the comma after the last property in an object to prevent errors in internet explorer.
			//},

			AF: { 
				name: 'Afghanistan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=67.709953,33.93911&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Afghanistan.cfm'
			},
			
			AL: { 
				name: 'Albania',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=20.168331,41.153332&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Albania.cfm'
			},
			
			DZ: { 
				name: 'Algeria',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=1.6596262,28.033886&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Algeria.cfm'
			},
			
			AS: { 
				name: 'American Samoa',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-170.1322,-14.270972&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/American-Samoa.cfm'
			},
			
			AD: { 
				name: 'Andorra',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=1.6015544,42.546245&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Andorra.cfm'
			},
			
			AO: { 
				name: 'Angola',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=17.873887,-11.202692&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Angola.cfm'
			},
			
			AI: { 
				name: 'Anguilla',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-63.06861,18.220554&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Anguilla.cfm'
			},
			
			AX: { 
				name: 'Antartica',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-0.071389,-75.250973&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/Products/filelib.cfm?d=/GeoPDF/Other_GeoPDFs/Antarctica/'
			},
			
			AG: { 
				name: 'Antigua and Barbuda',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.79642,17.060816&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Antigua-Barbuda.cfm'
			},
			
			AR: { 
				name: 'Argentina',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-63.61667,-38.416097&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Argentina.cfm'
			},
			
			AM: { 
				name: 'Armenia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=45.038189,40.069099&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Armenia.cfm'
			},
			
			AW: { 
				name: 'Aruba',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-69.96833,12.52111&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Aruba.cfm'
			},
			
			AU: { 
				name: 'Australia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=133.77513,-25.274398&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Australia.cfm'
			},
			
			AT: { 
				name: 'Austria',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=14.550072,47.516231&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Austria.cfm'
			},

			AZ: { 
				name: 'Azerbaijan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=47.576927,40.143105&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Azerbaijan.cfm'
			},
			
			BS: { 
				name: 'Bahamas',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-77.39628,25.03428&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bahamas.cfm'
			},
			
			BH: { 
				name: 'Bahrain',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=50.637772,25.930414&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bahrain.cfm'
			},
			
			BX: { 
				name: 'Balkan Peninsula',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=21.001004,41.667720&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Balkans.cfm'
			},
			
			BD: { 
				name: 'Bangladesh',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=90.356331,23.684994&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bangladesh.cfm'
			},
			
			BB: { 
				name: 'Barbados',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-59.54319,13.193887&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Barbados.cfm'
			},
			
			BY: { 
				name: 'Belarus',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=27.953389,53.709807&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Belarus.cfm'
			},
			
			//BY: { 
				//name: 'Belarus',
				//description: 'default',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Belarus.cfm'
			//},

			BE: { 
				name: 'Belgium',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=4.4699365,50.503887&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Belgium.cfm'
			},
			
			BZ: { 
				name: 'Belize',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-88.49765,17.189877&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Belize.cfm'
			},
			
			BJ: { 
				name: 'Benin',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=2.3158349,9.30769&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Benin.cfm'
			},
			
			BM: { 
				name: 'Bermuda',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-64.75737,32.321384&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bermuda.cfm'
			},
			
			BT: { 
				name: 'Bhutan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=90.433601,27.514162&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bhutan.cfm'
			},
			
			BO: { 
				name: 'Bolivia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-63.58865,-16.290154&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bolivia.cfm'
			},
			
			BQBO: { 
				name: 'Bonaire',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-68.262420,12.201893&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bonaire.cfm'
			},
			
			BA: { 
				name: 'Bosnia-Herzegovina',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=17.679076,43.915886&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bosnia-Herzegovina.cfm'
			},
			
			BW: { 
				name: 'Botswana',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=24.684866,-22.328474&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Botswana.cfm'
			},
			
			VX: { 
				name: 'Bouvet Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=3.413194-,-54.423199&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bouvet-Island.cfm'
			},
			
			BR: { 
				name: 'Brazil',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-51.92528,-14.235004&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Brazil.cfm'
			},
			
			BIOT: { 
				name: 'British Indian Ocean Territory',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=71.876519,-6.343194&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/British-Indian-Ocean-Territory.cfm'
			},
			
			VG: { 
				name: 'British Virgin Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-64.63996,18.420695&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/British-Virgin-Islands.cfm'
			},
			
			BN: { 
				name: 'Brunei',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=114.72766,4.535277&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Brunei.cfm'
			},
			
			BG: { 
				name: 'Bulgaria',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=25.485834,42.733883&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Bulgaria.cfm'
			},

			BF: { 
				name: 'Burkina Faso',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-1.561593,12.238333&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Burkina-Faso.cfm'
			},
			
			MM: { 
				name: 'Burma (Myanmar)',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=95.956223,21.913965&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Myanmar.cfm" target="_blank">Myanmar (GARMIN Support)</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Burma.cfm'
			},
			
			BI: { 
				name: 'Burundi',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=29.918886,-3.373056&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Burundi.cfm'
			},
			
			KH: { 
				name: 'Cambodia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=104.99096,12.565679&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cambodia.cfm'
			},
			
			CM: { 
				name: 'Cameroon',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=12.354722,7.369722&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cameroon.cfm'
			},
			
			CA: { 
				name: 'Canada',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-106.3467,56.130366&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Canada.cfm'
			},
			
			//IC: { 
				//name: 'Canary Islands (Spain)',
				//description: 'default',
				//color: 'default',
				//hover_color: 'default',
				//url: 'default'
			//},
			
			CV: { 
				name: 'Cape Verde',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-24.01319,16.002082&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/CapeVerde.cfm'
			},
			
			TX: { 
				name: 'Caucasus',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=43.5852,45.0000&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Caucasus.cfm'
			},
			
			KY: { 
				name: 'Cayman Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-80.56695,19.513469&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cayman-Islands.cfm'
			},
			
			CF: { 
				name: 'Central African Republic',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=20.939444,6.611111&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Central-African-Republic.cfm'
			},
			
			AC: { 
				name: 'Central Asia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=68.8319,45.4507&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Central-Asia.cfm'
			},
			
			TD: { 
				name: 'Chad',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=18.732207,15.454166&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Chad.cfm'
			},
			
			CL: { 
				name: 'Chile',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-71.54296,-35.675147&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Chile.cfm'
			},
			
			CN: { 
				name: 'China',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=104.19539,35.86166&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/China.cfm'
			},
			
			CX: { 
				name: 'Christmas Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=105.69044,-10.447525&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Christmas-Island.cfm'
			},
			
			CP: { 
				name: 'Clipperton Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-109.216667,10.283333&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Clipperton-Island.cfm'
			},
			
			CCK: { 
				name: 'Cocos (Keeling) Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=96.870956,-12.164165&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cocos-Keeling-Islands.cfm'
			},
			
			CO: { 
				name: 'Colombia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-74.29733,4.570868&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Colombia.cfm'
			},

			KM: { 
				name: 'Comoros',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=43.872219,-11.875001&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Comoros.cfm'
			},
			
			COK: { 
				name: 'Cook Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-159.7776,-21.236736&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cook-Islands.cfm'
			},
			
			CR: { 
				name: 'Costa Rica',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-83.75342,9.748917&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Costa-Rica.cfm'
			},
			
			CI: { 
				name: 'Cote DIvoire (Ivory Coast)',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-5.547087,7.539989&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Ivory-Coast.cfm" target="_blank">Ivory Coast</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cote-DIvoire.cfm'
			},
			
			HR: { 
				name: 'Croatia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=15.245.1,45.1&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Croatia.cfm'
			},
			
			CU: { 
				name: 'Cuba',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-77.78116,21.521757&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cuba.cfm'
			},
			
			CW: { 
				name: 'Curacao (Netherlands Antilles)',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-68.990164,12.169563&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Netherlands-Antilles.cfm" target="_blank">Netherland Antilles</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Curacao.cfm'
			},
			
			CY: { 
				name: 'Cyprus',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=33.429859,35.126413&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Cyprus.cfm'
			},

			CZ: { 
				name: 'Czech Republic',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=15.472962,49.817492&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Czech-Republic.cfm'
			},
			
			CD: { 
				name: 'Democratic Republic of Congo (Zaire)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=21.758664,-4.038333&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Democratic-Republic-of-Congo.cfm'
			},

			DK: { 
				name: 'Denmark',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=9.5017855,56.26392&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Denmark.cfm'
			},
			
			DJ: { 
				name: 'Djibouti',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=42.590275,11.825138&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Djibouti.cfm'
			},
			
			DM: { 
				name: 'Dominica',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.37097,15.414999&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Dominica.cfm'
			},
			
			DO: { 
				name: 'Dominican Republic',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-70.16265,18.735693&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Dominican-Republic.cfm'
			},

			EC: { 
				name: 'Ecuador',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-78.18340,-1.831239&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Ecuador.cfm'
			},
			
			EG: { 
				name: 'Egypt',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=30.802498,26.820553&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Egypt.cfm'
			},
			
			SV: { 
				name: 'El Salvador',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-88.89653,13.794185&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/El-Salvador.cfm'
			},
			
			GQ: { 
				name: 'Equatorial Guinea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=10.267895,1.650801&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Equatorial-Guinea.cfm'
			},
			
			ER: { 
				name: 'Eritrea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=39.782334,15.179384&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Eritrea.cfm'
			},
			
			EE: { 
				name: 'Estonia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=25.013607,58.595272&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Estonia.cfm'
			},

			ET: { 
				name: 'Ethiopia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=40.489673,9.145&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Ethiopia.cfm'
			},
			
			FK: { 
				name: 'Falkland Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-59.52361,-51.796253&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Falkland-Islands.cfm'
			},
			
			//??: { 
				//name: 'Faroe Islands',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-6.911806,61.892635&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Faroe-Islands.cfm'
			//},
			
			FM: { 
				name: 'Federated States of Micronesia',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=150.55081,7.425554&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Nauru.cfm" target="_blank">Nauru</p><a href="https://cac.agc.army.mil/countries/Northern-Mariana-Islands-of-Micronesia.cfm" target="_blank">Northern Mariana Islands</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Federated-States-of-Micronesia.cfm'
			},
			
			FJ: { 
				name: 'Fiji',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=179.41441,-16.578193&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Fiji.cfm'
			},
			
			FI: { 
				name: 'Finland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=25.748151,61.92411&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Finland.cfm'
			},

			FR: { 
				name: 'France',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=2.2137494,46.227638&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/France.cfm'
			},
			
			GF: { 
				name: 'French Guiana',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-53.12578,3.933889&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/French_Guiana.cfm'
			},
			
			FST: { 
				name: 'French Southern and Antartic Lands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=69.348557,-49.280366&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/French-Southern-and-Antarctic-Lands.cfm'
			},
			
			//??: { 
				//name: 'French Polynesia',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-149.4068,-17.679742&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/French-Polynesia.cfm'
			//},
			
			GA: { 
				name: 'Gabon',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=11.609444,-0.803689&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Gabon.cfm'
			},
			
			GM: { 
				name: 'Gambia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-15.31013,13.443182&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Gambia.cfm'
			},
			
			GX: { 
				name: 'Gaza Strip',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=34.308825,31.354676&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Gaza-Strip.cfm'
			},
			
			GE: { 
				name: 'Georgia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=43.356892,42.315407&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Georgia.cfm'
			},
			
			DE: { 
				name: 'Germany',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=10.451526,51.165691&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Germany.cfm'
			},
			
			GH: { 
				name: 'Ghana',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-1.023194,7.946527&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Ghana.cfm'
			},
			
			GIB: { 
				name: 'Gibraltar',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-5.345374,36.137741&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Gibraltar.cfm'
			},
			
			GR: { 
				name: 'Greece',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=21.824312,39.074208&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Greece.cfm'
			},
			
			GL: { 
				name: 'Greenland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-42.60430,71.706936&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Greenland.cfm'
			},
			
			GD: { 
				name: 'Grenada',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.60417,12.262776&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Grenada.cfm'
			},
			
			GP: { 
				name: 'Guadeloupe (France)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.06764,16.995971&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guadeloupe.cfm'
			},
			
			GU: { 
				name: 'Guam',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=144.79373,13.444304&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guam.cfm'
			},	
			
			GT: { 
				name: 'Guatemala',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-90.23075,15.783471&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guatemala.cfm'
			},
			
			GG: { 
				name: 'Guernsey',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-2.585278,49.465691&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guernsey.cfm'
			},
			
			GN: { 
				name: 'Guinea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-9.696645,9.945587&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guinea.cfm'
			},
			
			GW: { 
				name: 'Guinea Bissau',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-15.18041,11.803749&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guinea-Bissau.cfm'
			},

			GY: { 
				name: 'Guyana',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-58.93018,4.860416&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Guyana.cfm'
			},
			
			HT: { 
				name: 'Haiti',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-72.28521,18.971187&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Haiti.cfm'
			},
			
			HM: { 
				name: 'Heard Islands and McDonald Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=73.504158,-53.08181&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Heard-Islands-and-McDonald-Islands.cfm'
			},
			
			HN: { 
				name: 'Honduras',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-86.24190,15.199999&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Honduras.cfm'
			},
			
			//HX: { 
				//name: 'Hong Kong',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=114.10949,22.396428&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Hong-Kong.cfm'
			//},

			HU: { 
				name: 'Hungary',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=19.503304,47.162494&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Hungary.cfm'
			},
			
			IS: { 
				name: 'Iceland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-19.02083,64.963051&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Iceland.cfm'
			},
			
			TF: { 
				name: 'Iles Eparses (Scattered Islands)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords= 61.089525,-22.327176&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Iles-Eparses-Scattered-Islands.cfm'
			},
			
			IN: { 
				name: 'India',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=78.962882,20.593684&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/India.cfm'
			},
			
			ID: { 
				name: 'Indonesia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=113.92132,-0.789275&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Indonesia.cfm'
			},
			
			IR: { 
				name: 'Iran',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=53.688046,32.427908&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Iran.cfm'
			},
			
			IQ: { 
				name: 'Iraq',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=43.679291,33.223191&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Iraq.cfm'
			},
			
			IE: { 
				name: 'Ireland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-8.243895,53.41291&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Ireland.cfm'
			},
			
			IMN: { 
				name: 'Isle of Man',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-4.548056,54.236107&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Isle-of-Man.cfm'
			},
			
			IL: { 
				name: 'Israel',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=34.851612,31.046051&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Israel.cfm'
			},

			IT: { 
				name: 'Italy',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=12.567384,41.87194&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Italy.cfm'
			},

			//??: { 
				//name: 'Ivory Coast',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-5.547087,7.539989&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Ivory-Coast.cfm'
			//},
			
			JM: { 
				name: 'Jamaica',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-77.29750,18.109581&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Jamaica.cfm'
			},
			
			SJM: { 
				name: 'Jan Mayen and Svalbard',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=23.670272,77.553604&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Svalbard.cfm" target="_blank">Svalbard</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Jan-Mayen.cfm',
			},
			
			JP: { 
				name: 'Japan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=138.25292,36.204824&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Japan.cfm'
			},
			
			JX: { 
				name: 'Jarvis Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=159.9967,0.3744&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Jarvis-Island.cfm'
			},
			
			JEY: { 
				name: 'Jersey',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-2.131254,49.214439&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Jersey.cfm'
			},
			
			JT: { 
				name: 'Johnston Atoll',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=169.5336,16.7295&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Johnston-Atoll.cfm'
			},
			
			JO: { 
				name: 'Jordan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=36.238414,30.585164&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Jordan-and-West-Bank.cfm'
			},
			
			KZ: { 
				name: 'Kazakhstan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=66.923684,48.019573&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kazakhstan.cfm'
			},
			
			KE: { 
				name: 'Kenya',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=37.906193,-0.023559&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kenya.cfm'
			},
			
			KIR: { 
				name: 'Kiribati',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-168.7340,-3.370417&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kiribati.cfm'
			},
			
			KX: { 
				name: 'Korean Peninsula',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=127.9785,37.6640&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Korean-Peninsula.cfm'
			},
			
			XK: { 
				name: 'Kosovo',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=20.902977,42.602636&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kosovo.cfm'
			},
			
			KW: { 
				name: 'Kuwait',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=47.481766,29.31166&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kuwait.cfm'
			},
			
			KG: { 
				name: 'Kyrgyzstan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=74.766098,41.20438&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Kyrgyzstan.cfm'
			},

			LA: { 
				name: 'Laos',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=102.49549,19.85627&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Lao-Peoples-Democratic-Republic.cfm'
			},
			
			LV: { 
				name: 'Latvia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=24.603189,56.879635&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Latvia.cfm'
			},
			
			LB: {
				name: 'Lebanon',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=35.862285,33.854721&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Lebanon.cfm'
			},			
			
			LS: { 
				name: 'Lesotho',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=28.233608,-29.609988&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Lesotho.cfm'
			},
			
			LR: { 
				name: 'Liberia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-9.429499,6.428055&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Liberia.cfm'
			},
			
			LY: { 
				name: 'Libya',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=17.228331,26.3351&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Libya.cfm'
			},
			
			LI: { 
				name: 'Liechtenstein',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=9.5553734,47.166&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Liechtenstein.cfm'
			},
			
			LT: { 
				name: 'Lithuania',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=23.881275,55.169438&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Lithuania.cfm'
			},

			LU: { 
				name: 'Luxembourg',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=6.1295834,49.815273&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Luxembourg.cfm'
			},
			
			MG: { 
				name: 'Madagascar',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=46.869107,-18.766947&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Madagascar.cfm'
			},
			
			MW: { 
				name: 'Malawi',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=34.301525,-13.254308&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Malawi.cfm'
			},
			
			MY: { 
				name: 'Malaysia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=101.97576,4.210484&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Malaysia.cfm'
			},
			
			MV: { 
				name: 'Maldives',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=73.220683,3.202778&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Maldives.cfm'
			},
			
			ML: { 
				name: 'Mali',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-3.996166,17.570692&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mali.cfm'
			},
			
			MT: { 
				name: 'Malta',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=14.375416,35.937496&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Malta.cfm'
			},
			
			MH: { 
				name: 'Marshall Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=171.18447,7.131474&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Marshall-Islands.cfm'
			},
			
			MQ: { 
				name: 'Martinique (France)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.02417,14.641528&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Martinique.cfm'
			},
			
			MR: { 
				name: 'Mauritania',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-10.94083,21.00789&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mauritania.cfm'
			},
			
			MU: { 
				name: 'Mauritius',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=57.552152,-20.348404&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mauritius.cfm'
			},
			
			YT: { 
				name: 'Mayotte (France)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=45.166244,-12.8275&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mayotte.cfm'
			},
			
			MX: { 
				name: 'Mexico',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-102.5527,23.634501&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mexico.cfm'
			},
			
			MER: { 
				name: 'Middle East',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=42.5510,29.2985&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Middle-East.cfm'
			},
			
			MD: { 
				name: 'Moldova',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=28.369885,47.411631&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Moldova.cfm'
			},
			
			MCO: { 
				name: 'Monaco',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=7.4128414,43.750298&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Monaco.cfm'
			},
			
			MN: { 
				name: 'Mongolia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=103.84665,46.862496&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mongolia.cfm'
			},
			
			ME: { 
				name: 'Montenegro',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=19.374394,42.708678&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Montenegro.cfm'
			},
			
			MS: { 
				name: 'Montserrat',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.18736,16.742498&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Montserrat.cfm'
			},
			
			MA: { 
				name: 'Morocco',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-7.092623,31.791702&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Morocco.cfm'
			},

			MZ: { 
				name: 'Mozambique',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=35.529562,-18.665695&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Mozambique.cfm'
			},

			NA: { 
				name: 'Namibia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=18.49041-,-22.95764&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Namibia.cfm'
			},
			
			NP: { 
				name: 'Nepal',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=84.124008,28.394857&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Nepal.cfm'
			},
			
			NL: { 
				name: 'Netherlands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=5.2912665,52.132633&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Netherlands.cfm'
			},
			
			NC: { 
				name: 'New Caledonia (French)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=165.61804,-20.904305&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/New-Caledonia.cfm'
			},
			
			NZ: { 
				name: 'New Zealand',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=174.88597,-40.900557&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/New-Zealand.cfm'
			},
			
			NI: { 
				name: 'Nicaragua',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-85.20722,12.865416&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Nicaragua.cfm'
			},
			
			NE: { 
				name: 'Niger',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=8.0816661,17.607789&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Niger.cfm'
			},

			NG: { 
				name: 'Nigeria',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=8.6752779,9.081999&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Nigeria.cfm'
			},
			
			NIU: { 
				name: 'Niue',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-169.8672,-19.054445&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Niue.cfm'
			},
			
			NFK: { 
				name: 'Norfolk Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=167.95471,-29.040835&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Norfolk-Island.cfm'
			},
			
			MK: { 
				name: 'North Macedonia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=21.745275,41.608635&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Macedonia.cfm'
			},
			
			KP: { 
				name: 'North Korea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=127.51009,40.339852&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/North-Korea.cfm'
			},
			
			NO: { 
				name: 'Norway',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=8.4689466,60.472024&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Norway.cfm'
			},

			OM: { 
				name: 'Oman',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=55.923255,21.512583&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Oman.cfm'
			},
			
			PK: { 
				name: 'Pakistan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=69.345116,30.375321&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Pakistan.cfm'
			},
			
			PW: { 
				name: 'Palau',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=134.58252,7.51498&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Palau.cfm'
			},
			
			PS: { 
				name: 'Palestininian Territories',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=35.233154,31.952162&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Palestinian-Territories.cfm'
			},
			
			PA: { 
				name: 'Panama',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-80.78212,8.537981&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Panama.cfm'
			},
			
			PG: { 
				name: 'Papua New Guinea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=143.95555,-6.314993&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Papua-New-Guinea.cfm'
			},
			
			PY: { 
				name: 'Paraguay',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-58.44383,-23.442503&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Paraguay.cfm'
			},
			
			PE: { 
				name: 'Peru',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-75.01515,-9.189967&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Peru.cfm'
			},

			PH: { 
				name: 'Philippines',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=121.77401,12.879721&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Philippines.cfm'
			},
			
			PCN: { 
				name: 'Pitcairn Group of Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-127.4393,-24.703615&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Pitcairn-Group-of-Islands.cfm'
			},

			PL: { 
				name: 'Poland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=19.145136,51.919438&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Poland.cfm'
			},
			
			PT: { 
				name: 'Portugal',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-8.224454,39.399872&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Portugal.cfm'
			},
			
			PR: { 
				name: 'Puerto Rico',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-66.59014,18.220833&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Puerto-Rico.cfm'
			},

			QA: { 
				name: 'Qatar',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=51.183884,25.354826&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Qatar.cfm'
			},
			
			CG: { 
				name: 'Republic of Congo',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=15.827659,-0.228021&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Republic-of-Congo.cfm'
			},
			
			RE: { 
				name: 'Reunion (France)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=55.536384,-21.115141&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Reunion.cfm'
			},
			
			RO: { 
				name: 'Romania',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=24.966764,45.943161&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Romania.cfm'
			},
			
			RU: { 
				name: 'Russian Federation',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=105.31875,61.52401&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Russia.cfm'
			},
			
			RW: { 
				name: 'Rwanda',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=29.873888,-1.940278&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Rwanda.cfm'
			},
			
			BL: { 
				name: 'Saint Barthelemy',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.8333,17.9000&zoomLevel=6" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/St-Barthelemy.cfm" target="_blank">Saint Barthelemy (ERS)</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Barthelemy.cfm'
			},
			
			BQSE: { 
				name: 'Saint Eustatius (Netherlands)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.9736,17.4890&zoomLevel=9" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sint-Eustatius.cfm'
			},
			
			SNH: { 
				name: 'Saint Helena',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-10.03069,-24.143474&zoomLevel=5" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Helena.cfm'
			},
			
			KN: { 
				name: 'Saint Kitts and Nevis',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.78299,17.357822&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/St-Kitts-and-Nevis.cfm'
			},
			
			KNA: { 
				name: 'Saint Kitts and Saba',
				description: '</p><a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-62.78299,17.357822&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</p><a href="https://cac.agc.army.mil/countries/Saba.cfm" target="_blank">Saba</p>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Kitts.cfm'
			},
			LC: { 
				name: 'Saint Lucia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-60.97889,13.909444&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Lucia.cfm'
			},
			
			SX: { 
				name: 'Saint Martin (Dutch)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-63.0501,18.0708&zoomLevel=9" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sint-Maarten.cfm'
			},
			
			MF: { 
				name: 'Saint Martin (France)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-63.0501,18.0708&zoomLevel=9" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Martin-France.cfm'
			},
			
			SPM: { 
				name: 'Saint Pierre and Miquelon',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-56.27111,46.941936&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saint-Pierre-and-Miquelon.cfm'
			},
			
			VC: { 
				name: 'Saint Vincent and the Grenadines',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.28722,12.984305&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/St-Vincent.cfm'
			},
			
			WS: { 
				name: 'Samoa (Western)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-172.1046,-13.759029&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Samoa.cfm'
			},

			SMR: { 
				name: 'San Marino',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=12.457777,43.94236&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/San-Marino.cfm'
			},
			
			ST: { 
				name: 'Sao Tome and Principe',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=6.6130810,0.18636&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/SaoTome.cfm'
			},
			
			SA: { 
				name: 'Saudi Arabia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=45.079162,23.885942&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Saudi-Arabia.cfm'
			},
			
			SN: { 
				name: 'Senegal',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-14.45236,14.497401&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Senegal.cfm'
			},
			
			RS: { 
				name: 'Serbia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=21.005859,44.016521&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Serbia.cfm'
			},
			
			SC: { 
				name: 'Seychelles',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=55.491977,-4.679574&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Seychelles.cfm'
			},
			
			SL: { 
				name: 'Sierra Leone',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-11.77988,8.460555&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sierra-Leone.cfm'
			},
			
			SG: { 
				name: 'Singapore',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=103.81983,1.352083&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Singapore.cfm'
			},
			
			SK: { 
				name: 'Slovakia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=19.699024,48.669026&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Slovakia.cfm'
			},
			
			SI: { 
				name: 'Slovenia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=14.995463,46.151241&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Slovenia.cfm'
			},
			
			SB: { 
				name: 'Solomon Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=160.15619,-9.64571&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Solomon-Islands.cfm'
			},
			
			SO: { 
				name: 'Somalia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=46.199616,5.152149&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Somalia.cfm'
			},
			
			ZA: { 
				name: 'South Africa',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=22.937506,-30.559482&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/South-Africa.cfm'
			},
			
			GS: { 
				name: 'South Georgia & South Sandwich Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-36.58790,-54.429579&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/South-Georgia-and-South-Sandwich.cfm'
			},
			
			KR: { 
				name: 'South Korea',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=127.76692,35.907757&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/South-Korea.cfm'
			},
			
			SS: { 
				name: 'South Sudan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=31.3070,6.8770&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/South-Sudan.cfm'
			},
			
			ES: { 
				name: 'Spain',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-3.749224,40.463667&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Spain.cfm'
			},
			
			LK: { 
				name: 'Sri Lanka',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=80.771797,7.873054&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sri-Lanka.cfm'
			},
			
			SD: { 
				name: 'Sudan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=30.217636,12.862807&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sudan.cfm'
			},
			
			SR: { 
				name: 'Suriname',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-56.02778,3.919305&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Suriname.cfm'
			},
			
			SZ: { 
				name: 'Swaziland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=31.465866,-26.522503&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Swaziland.cfm'
			},
			
			SE: { 
				name: 'Sweden',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=18.643501,60.128161&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Sweden.cfm'
			},
			
			CH: { 
				name: 'Switzerland',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=8.2275124,46.818188&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Switzerland.cfm'
			},
			
			//SVR: { 
				//name: 'Svalbard',
				//description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=23.670272,77.553604&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Svalbard.cfm'
			//},
			
			SY: { 
				name: 'Syria',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=38.996815,34.802075&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Syria.cfm'
			},
			
			TW: { 
				name: 'Taiwan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=120.96051,23.69781&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Taiwan.cfm'
			},
			
			TJ: { 
				name: 'Tajikistan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=71.276093,38.861034&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tajikistan.cfm'
			},
			
			TZ: { 
				name: 'Tanzania',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=34.888822,-6.369028&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tanzania.cfm'
			},
	
			TH: { 
				name: 'Thailand',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=100.99254,15.870032&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Thailand.cfm'
			},

			TL: { 
				name: 'Timor Leste',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=125.72753,-8.874217&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Timor-Leste.cfm'
			},
			
			TG: { 
				name: 'Togo',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=0.8247828,8.619543&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Togo.cfm'
			},
			
			TKL: { 
				name: 'Tokelau',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-171.8558,-8.967363&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tokelau.cfm'
			},
			
			TO: { 
				name: 'Tonga',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-175.1982,-21.178986&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tonga.cfm'
			},
			
			TT: { 
				name: 'Trinidad and Tobago',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-61.22250,10.691803&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Trinidad-Tobago.cfm'
			},

			TN: { 
				name: 'Tunisia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=9.5374993,33.886917&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tunisia.cfm'
			},
			
			TR: { 
				name: 'Turkey',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=35.243322,38.963745&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Turkey.cfm'
			},
			
			TM: { 
				name: 'Turkmenistan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=59.556278,38.969719&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Turkmenistan.cfm'
			},
			
			TC: { 
				name: 'Turk and Caicos Islands',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-71.79792,21.694025&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Turks-and-Caicos-Islands.cfm'
			},
			
			TV: { 
				name: 'Tuvalu',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=177.64933,-7.109535&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Tuvalu.cfm'
			},
			
			UG: { 
				name: 'Uganda',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=32.290275,1.373333&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Uganda.cfm'
			},
			
			UA: { 
				name: 'Ukraine',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=31.165584,48.379433&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Ukraine.cfm'
			},
			
			AE: { 
				name: 'United Arab Emirates',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=53.847818,23.424076&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/United-Arab-Emirates.cfm'
			},
			
			GB: { 
				name: 'United Kingdom',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-3.435973,55.378051&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/United-Kingdom.cfm'
			},
			
			US: { 
				name: 'United States',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-95.71289,37.09024&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/United-States-of-America.cfm'
			},

			UY: { 
				name: 'Uruguay',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-55.76583,-32.522779&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Uruguay.cfm'
			},

			UZ: { 
				name: 'Uzbekistan',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=64.585262,41.377491&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Uzbekistan.cfm'
			},
			
			VU: { 
				name: 'Vanuatu',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=166.95915,-15.376706&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Vanuatu.cfm'
			},
			
			VAT: { 
				name: 'Vatican City',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=12.453389,41.902916&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Vatican-City.cfm'
			},
			
			VE: { 
				name: 'Venezuela',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-66.58973,6.42375&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Venezuela.cfm'
			},
			
			VN: { 
				name: 'Vietnam',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=108.27719,14.058324&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Vietnam.cfm'
			},
			
			VI: { 
				name: 'Virgin Islands of the United States',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-64.89633,18.335765&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Virgin-Islands.cfm'
			},
			
			WX: { 
				name: 'Wake Island',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-64.89633,18.335765&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Wake-Island.cfm'
			},
			
			WLF: { 
				name: 'Wallis and Futuna',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-177.1560,-13.768752&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Wallis-and-Futuna.cfm'
			},
			
			EH: { 
				name: 'Western Sahara',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=-12.88583,24.215527&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Western-Sahara.cfm'
			},
			
			YE: { 
				name: 'Yemen',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=48.516388,15.552727&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Yemen.cfm'
			},
			
			YU: { 
				name: 'Yugoslavia (Former)',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=18.2500,43.8500&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Yugoslavia-former.cfm'
			},
			
			//ZM: { 
				//name: 'Zaire (DRC)',
				//description: 'default',
				//color: 'default',
				//hover_color: 'default',
				//url: 'https://cac.agc.army.mil/countries/Zaire.cfm'
			//},
			
			ZM: { 
				name: 'Zambia',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=27.849332,-13.133897&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Zambia.cfm'
			},

			ZW: { 
				name: 'Zimbabwe',
				description: '<a href="https://agcwfs.agc.army.mil/CMB_Lite/index.html?coords=29.154857,-19.015438&zoomLevel=7" target="_blank">Common Map Background Lite (CMB-Lite)</a>',
				color: 'default',
				hover_color: 'default',
				url: 'https://cac.agc.army.mil/countries/Zimbabwe.cfm'
			}//Note:  You must omit the comma after the last property in an object to prevent errors in internet explorer.
	},
	
	locations:{ 
		0: {
				name: "Army Geospatial Center",
				lat: 38.74257, 
				lng: -77.13975,
				description: '<a href="https://www.agc.army.mil/" target="_blank">Home</a>',
				color: 'default',
				url: '',
				size: 'default'
			},
		//1: {
				//name: 'Anchorage',
				//lat: 61.2180556,
				//lng: -149.9002778, 
				//color: 'default'
			//}

	} 

}	//end of simplemaps_worldmap_mapdata


