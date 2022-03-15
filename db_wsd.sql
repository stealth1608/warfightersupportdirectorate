-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by macbookpro2rmcqueen at 17-02-2022 20:17.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE dbo.login_users
IF OBJECT_ID('dbo.login_users', 'U') IS NOT NULL
DROP TABLE dbo.login_users;
GO

CREATE TABLE dbo.login_users (
	id int NOT NULL IDENTITY(1,1),
	firstName nvarchar(50) NULL,
	lastName nvarchar(50) NULL,
	email nvarchar(50) NULL,
	password nvarchar(50) NULL,
	username nvarchar(50) NULL
);
GO

ALTER TABLE dbo.login_users ADD CONSTRAINT PK_login_users PRIMARY KEY (id);
GO

-- Inserting 4 rows into dbo.login_users
-- Insert batch #1
INSERT INTO dbo.login_users (id, firstName, lastName, email, password, username) VALUES
(2, 'Ronald', 'McQueen', 'ronald.mcqueen@optimalgeo.com', 'Welcome1!', 'mcqueenr'),
(3, 'Samuel', 'Pacheco', 'samuel.pacheco-cherena@usace.army.mil', '123', 'sam'),
(4, 'Chelsea', 'Hines', 'chelseahines66@yahoo.com', 'Stauggie12', 'chelseahines66'),
(5, 'Samuel', 'Pacheco', 'sammycbr@gmail.com', '123', 'sam');

-- END TABLE dbo.login_users

-- BEGIN TABLE dbo.ProductSample
IF OBJECT_ID('dbo.ProductSample', 'U') IS NOT NULL
DROP TABLE dbo.ProductSample;
GO

CREATE TABLE dbo.ProductSample (
	ID nvarchar(50) NOT NULL,
	Title nvarchar(100) NOT NULL,
	Description nvarchar(1350) NOT NULL,
	GoogleProductCategory int NOT NULL,
	ProductType nvarchar(100) NOT NULL,
	Link nvarchar(100) NOT NULL,
	ImageLink nvarchar(100) NOT NULL,
	[Condition] nvarchar(50) NOT NULL,
	Brand nvarchar(50) NOT NULL,
	MPN nvarchar(50) NOT NULL,
	Price float(8) NOT NULL,
	Availability nvarchar(50) NOT NULL,
	Currency nvarchar(50) NOT NULL,
	PartNumber nvarchar(50) NOT NULL,
	BrandID nvarchar(50) NOT NULL,
	SKU nvarchar(50) NOT NULL,
	UPC float(8) NOT NULL,
	PrimaryID int NOT NULL
);
GO

-- Inserting 20 rows into dbo.ProductSample
-- Insert batch #1
INSERT INTO dbo.ProductSample (ID, Title, Description, GoogleProductCategory, ProductType, Link, ImageLink, [Condition], Brand, MPN, Price, Availability, Currency, PartNumber, BrandID, SKU, UPC, PrimaryID) VALUES
('OEAW01331738250', 'Neutral Safety Switch Original Equipment W0133-1738250', 'Tokai Rika. . Original Equipment is a brand of parts collected from suppliers all over world selling their OE and OE quality parts in effort to save money on quality parts. . This product fits:  1999-2003 Toyota Solara, 1998-2003 Toyota Sienna, 1996-2000 Toyota RAV4, 1995-2005 Toyota Avalon, 1994-2001 Lexus ES300, 1994-2001 Toyota Camry. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2768, 'Electrical Lighting and Body > Switches > Neutral Safety Switch', 'http://www.autopartsway.com/Part.cfm?W0133-1738250/OEA&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/OEA/W01331738250OEA.JPG', 'New', 'Original Equipment', 'W0133-1738250', 174.92, 'in stock', 'USD', 'W0133-1738250', 'OEA', 'OEA1738250', 191000000000, 265881),
('OME2885', 'Coil Spring OLD MAN EMU 2885', 'Omega Environmental Technologies. Omega Environmental Technologies is a global distributor of mobile A/C systems, parts and supplies. Omega manufactures and supplies Domestic and European A/C components to vehicle manufacturers and OE suppliers including; Sanden, Seltec, Visteon, Delphi, Parker-Dayco and Goodyear. 50mm; Fits 03 And Up Toyota Prado; Sold As A Pair;w/0 - 2 in. Lift; . . Omega, part of Plews and Edelmann, is known for their expertise and quality in power steering systems, high-pressure hoses, and power steering end-fittings. . This product fits:  2010-2013 Toyota FJ Cruiser, 2005-2013 Toyota Tacoma, 2003-2013 Toyota 4Runner. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Suspension > Suspension Springs and Related Components > Coil Spring', 'http://www.autopartsway.com/Part.cfm?2885/OME&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/OME/41bx8yUUPSL.jpg', 'New', 'OLD MAN EMU', '2885', 196.52, 'in stock', 'USD', '2885', 'OME', 'OME2885', 9320000000000, 265883),
('MTRW01332203414', 'Drum Brake Shoe Motorcraft W0133-2203414', 'Motorcraft. Motorcraft parts are designed specifically for Ford, Lincoln and Mercury vehicles.  Motorcraft is the official auto parts manufacturer for Ford Motor Company. There are no better parts for Ford, Lincoln and Mercury vehicles. . This product fits:  2005-2007 Mercury Mariner, 2001-2007 Ford Escape, 2001-2006 Mazda Tribute. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2997, 'Brake > Disc Pads and Brake Shoes > Drum Brake Shoe', 'http://www.autopartsway.com/Part.cfm?W0133-2203414/MTR&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/MTR/W01332203414MTR.JPG', 'New', 'Motorcraft', 'W0133-2203414', 39.57, 'in stock', 'USD', 'W0133-2203414', 'MTR', 'MTR2203414', 191000000000, 265886),
('M92GM9.5488', 'Differential Ring and Pinion MOTIVE GEAR GM9.5-488', '4.88 Ratio;. 9.5 in. (14 Bolt). .  Differential Ring and Pinion. .  Ring And Pinion. RngPnn. ModDate: 2014-09-25. SKU: BHHDGM9.5-488. . . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Driveline and Axles > Differential > Differential Ring and Pinion', 'http://www.autopartsway.com/Part.cfm?GM9.5-488/M92&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/M92/51lQBxhDDL.jpg', 'New', 'MOTIVE GEAR', 'GM9.5-488', 237.47, 'in stock', 'USD', 'GM9.5-488', 'M92', 'M92GM95488', 698000000000, 265887),
('OEAW01331738328', 'Parking Brake Cable Original Equipment W0133-1738328', 'Original Equipment is a brand of parts collected from suppliers all over world selling their OE and OE quality parts in effort to save money on quality parts. . This product fits:  1999-2003 Toyota Solara, 1997-2001 Lexus ES300, 1997-2001 Toyota Camry. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2997, 'Brake > Control Cables > Parking Brake Cable', 'http://www.autopartsway.com/Part.cfm?W0133-1738328/OEA&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/OEA/W01331738328OEA.JPG', 'New', 'Original Equipment', 'W0133-1738328', 29.06, 'in stock', 'USD', 'W0133-1738328', 'OEA', 'OEA1738328', 191000000000, 265891),
('OME2886', 'Coil Spring OLD MAN EMU 2886', 'Omega Environmental Technologies. Omega Environmental Technologies is a global distributor of mobile A/C systems, parts and supplies. Omega manufactures and supplies Domestic and European A/C components to vehicle manufacturers and OE suppliers including; Sanden, Seltec, Visteon, Delphi, Parker-Dayco and Goodyear. Heavy Load; Sold As A Pair;w/2 in. Lift; . . Omega, part of Plews and Edelmann, is known for their expertise and quality in power steering systems, high-pressure hoses, and power steering end-fittings. . This product fits:  2006-2013 Toyota Tacoma. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Suspension > Suspension Springs and Related Components > Coil Spring', 'http://www.autopartsway.com/Part.cfm?2886/OME&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/OME/41bx8yUUPSL.jpg', 'New', 'OLD MAN EMU', '2886', 196.52, 'in stock', 'USD', '2886', 'OME', 'OME2886', 9320000000000, 265895),
('M92GM9.5BI', 'Differential Rebuild Kit MOTIVE GEAR GM9.5BI', 'Incl. Side And Pinion Gears/Washers/Pinion Shaft And Lock Bolt Or Roll Pin;. 9.5 in. (14 Bolt). .  Differential Rebuild Kit. .  Open Differential Internal Kit. DiffrlPartsKit. ModDate: 2014-09-25. SKU: BHHDGM9.5BI. . . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 888, 'Driveline and Axles > Service Kits > Differential Rebuild Kit', 'http://www.autopartsway.com/Part.cfm?GM9.5BI/M92&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/M92/412JKPm23TL.jpg', 'New', 'MOTIVE GEAR', 'GM9.5BI', 135.79, 'in stock', 'USD', 'GM9.5BI', 'M92', 'M92GM95BI', 698000000000, 265896),
('MTRW01332203425', 'Cruise Control Cutout Switch Motorcraft W0133-2203425', 'Motorcraft. Motorcraft parts are designed specifically for Ford, Lincoln and Mercury vehicles.  Motorcraft is the official auto parts manufacturer for Ford Motor Company. There are no better parts for Ford, Lincoln and Mercury vehicles. . This product fits:  2004-2006 Lincoln Town Car, 2003-2004 Ford Expedition, 2003-2004 Lincoln Navigator, 2003-2003 Lincoln Aviator, 2002-2005 Ford Thunderbird, 2001-2005 Ford Explorer Sport Trac, 2001-2003 Ford Escape, 2001-2003 Ford Explorer, 2001-2003 Mercury Mountaineer, 2000-2002 Lincoln LS. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 8235, 'Electrical Lighting and Body > Cruise Control System > Cruise Control Cutout Switch', 'http://www.autopartsway.com/Part.cfm?W0133-2203425/MTR&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/MTR/W01332203425MTR.JPG', 'New', 'Motorcraft', 'W0133-2203425', 9.99, 'in stock', 'USD', 'W0133-2203425', 'MTR', 'MTR2203425', 191000000000, 265899),
('OEAW01331738387', 'HVAC Blower Motor Resistor Original Equipment W0133-1738387', 'Original Equipment is a brand of parts collected from suppliers all over world selling their OE and OE quality parts in effort to save money on quality parts. . This product fits:  1998-1999 Toyota Avalon, 1997-2001 Lexus ES300. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'HVAC > Motors > HVAC Blower Motor Resistor', 'http://www.autopartsway.com/Part.cfm?W0133-1738387/OEA&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/OEA/W01331738387OEA.JPG', 'New', 'Original Equipment', 'W0133-1738387', 31.98, 'in stock', 'USD', 'W0133-1738387', 'OEA', 'OEA1738387', 191000000000, 265900),
('BOGW01331632359', 'Shock Mount Boge W0133-1632359', 'BOGE. BOGE is a global manufacturer of suspension products that are installed as Original Equipment on many European vehicles.  BOGE, part of the ZF group, produce shock absorber that guarantee safety and comfort in cars and commercial vehicles. . This product fits:  2000-2006 Audi TT, 1999-2002 Volkswagen Golf, 1999-2000 Volkswagen Jetta, 1998-2005 Volkswagen Beetle. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Suspension > Shocks and Struts > Shock Mount', 'http://www.autopartsway.com/Part.cfm?W0133-1632359/BOG&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/BOG/W01331632359BOG.JPG', 'New', 'Boge', 'W0133-1632359', 18.03, 'in stock', 'USD', 'W0133-1632359', 'BOG', 'BOG1632359', 884000000000, 215183),
('OME2887', 'Coil Spring OLD MAN EMU 2887', 'Omega Environmental Technologies. Omega Environmental Technologies is a global distributor of mobile A/C systems, parts and supplies. Omega manufactures and supplies Domestic and European A/C components to vehicle manufacturers and OE suppliers including; Sanden, Seltec, Visteon, Delphi, Parker-Dayco and Goodyear.  Omega, part of Plews and Edelmann, is known for their expertise and quality in power steering systems, high-pressure hoses, and power steering end-fittings. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Suspension > Suspension Springs and Related Components > Coil Spring', 'http://www.autopartsway.com/Part.cfm?2887/OME&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/OME/41bx8yUUPSL.jpg', 'New', 'OLD MAN EMU', '2887', 196.52, 'in stock', 'USD', '2887', 'OME', 'OME2887', 9320000000000, 265906),
('LEMW01331960997', 'Suspension Ball Joint Lemfoerder W0133-1960997', 'Lemfoerder. LEMFORDER a division of ZF Worldwide is a leading original equipment manufacturer and supplier of high quality automotive steering and suspension components.  LEMFORDER offers high quality precision steering and suspension components for passenger cars and commercial vehicles with technical and commercial support. . This product fits:  2009-2013 Volkswagen CC, 2009-2010 Volkswagen Passat CC, 2006-2010 Volkswagen Passat. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2935, 'Suspension > Suspension Springs and Related Components > Suspension Ball Joint', 'http://www.autopartsway.com/Part.cfm?W0133-1960997/LEM&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/LEM/W01331960997LEM.JPG', 'New', 'Lemfoerder', 'W0133-1960997', 51.98, 'in stock', 'USD', 'W0133-1960997', 'LEM', 'LEM1960997', 191000000000, 215169),
('BOGW01331628683', 'Suspension Control Arm Bushing Boge W0133-1628683', 'BOGE. BOGE is a global manufacturer of suspension products that are installed as Original Equipment on many European vehicles.  BOGE, part of the ZF group, produce shock absorber that guarantee safety and comfort in cars and commercial vehicles. . This product fits:  1994-1997 BMW 840Ci, 1994-1995 BMW 850CSi, 1993-1997 BMW 850Ci, 1993-1994 BMW 740i, 1993-1994 BMW 740iL, 1991-1992 BMW 850i, 1988-1994 BMW 750iL. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2935, 'Suspension > Suspension Springs and Related Components > Suspension Control Arm Bushing', 'http://www.autopartsway.com/Part.cfm?W0133-1628683/BOG&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/BOG/W01331628683BOG.JPG', 'New', 'Boge', 'W0133-1628683', 30.32, 'in stock', 'USD', 'W0133-1628683', 'BOG', 'BOG1628683', 884000000000, 215170),
('A83FCM2256', 'Fuel Hose Fitting Aeroquip FCM2256', 'Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2727, 'Air and Fuel Delivery > Fuel Storage > Fuel Hose Fitting', 'http://www.autopartsway.com/Part.cfm?FCM2256/A83&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/A83/41ZTrqEWtmL.jpg', 'New', 'Aeroquip', 'FCM2256', 20.08, 'in stock', 'USD', 'FCM2256', 'A83', 'A83FCM2256', 678000000000, 215185),
('BOSW01331925462', 'Windshield Wiper Blade Bosch W0133-1925462', 'Bosch. Bosch is one of the largest global suppliers of automotive products, developing, manufacturing and supplying precision OE components and systems to  vehicle manufacturers and the automotive aftermarket. 21. .  Icon Wiper Blade Blade Length: 21. . As one of the largest North American automotive suppliers, Bosch develops, manufactures and supplies precision auto parts components and systems. . This product fits:  2014-2014 Chevrolet Impala Limited, 2011-2013 Chevrolet Impala, 2010-2014 Chevrolet Camaro, 2007-2014 Jeep Patriot. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Wiper and Washer > Windshield Wiper Arm Blade and Related Components > Windshield Wiper Blade', 'http://www.autopartsway.com/Part.cfm?W0133-1925462/BOS&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/BOS/W01331925462BOS.JPG', 'New', 'Bosch', 'W0133-1925462', 16.68, 'in stock', 'USD', 'W0133-1925462', 'BOS', 'BOS1925462', 191000000000, 9364),
('ASCASCSN09003', 'Manual Trans Shift Knob American Shifter Company ASCSN09003', 'The AISIN Group. The AISIN Group is a global supplier of OE quality automotive components, such as brakes, transmissions, drive train, chassis, body, information-related systems and components, as well as engine-related parts for vehicle manufacturers and the aftermarket.   Clear Spider Custom Shift Knob Translucent with Metal Flake. .  These creepy crawly Custom Shift Knobs are sure to be a hit while you are cruisin . Choose from a variety of colors, all 2 1/4 inches in diameter. Includes an installed threaded shift adapter and detailed instructions.' + CHAR(13) + CHAR(10) + '' + CHAR(13) + CHAR(10) + 'Knob includes a pre-installed 16mm threaded steel insert for rock-solid mounting.  Depending on your make and model this knob may require an adapter.  The American Shifter Company stocks a complete line of Custom Shift Knob adapters and is sure to have the correct one for your vehicle.' + CHAR(13) + CHAR(10) + '' + CHAR(13) + CHAR(10) + 'All Bug  Series Custom Shift Knobs can be custom etched to include your shift pattern, logo, or design of your choice. Please talk to an American Shifter sales rep for more details, or go to http://www.americanshifter.com . WARNING: Cancer and Reproductive Harm. www.P65Warnings.ca.gov. . AISIN was founded in 1965 as an Original Equipment auto parts manufacturer, mostly for Toyota. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 8142, 'Transmission and Transaxle - Manual > Manual Transmission Components > Manual Trans Shift Knob', 'http://www.autopartsway.com/Part.cfm?ASCSN09003/ASC&g=1', 'http://www.thehoffmangroup.com/assets/product-images/237345/1500.jpg', 'New', 'American Shifter Company', 'ASCSN09003', 38.59, 'in stock', 'USD', 'ASCSN09003', 'ASC', 'ASCASCSN09003', 802000000000, 215173),
('MPRW01331837785', 'Air Filter Mopar W0133-1837785', 'MOPAR Air Filter. . The Mopar Air Filter is a direct fit OEM replacement that guarantees the same performance and quality provided by the vehicle manufacturer.  Original Equipment Supplier  Easy installation with a factory quality fit   High airflow rate improves performance and fuel economy.  Superior dust-holding capacity will increase filter life.  Prevents particulate matter from entering the engine.Warranty Information: 12 month - 12,000 mile limited warranty against defects in material and workmanship. . .  MOPAR is the original equipment and aftermarket auto parts division of Chrysler Group LLC. . This product fits:  2008-2010 Dodge Challenger, 2006-2010 Dodge Charger, 2005-2010 Chrysler 300, 2005-2008 Dodge Magnum. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Air and Fuel Delivery > Filters > Air Filter', 'http://www.autopartsway.com/Part.cfm?W0133-1837785/MPR&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/MPR/W01331837785MPR.JPG', 'New', 'Mopar', 'W0133-1837785', 28.1, 'in stock', 'USD', 'W0133-1837785', 'MPR', 'MPR1837785', 191000000000, 215176),
('LEMW01331969308', 'Suspension Control Arm Lemfoerder W0133-1969308', 'Lemfoerder. LEMFORDER a division of ZF Worldwide is a leading original equipment manufacturer and supplier of high quality automotive steering and suspension components. / Tension Strut. .  Referred to as a Tension Strut by BMW : Includes Hydraulic Bushing. . LEMFORDER offers high quality precision steering and suspension components for passenger cars and commercial vehicles with technical and commercial support. . This product fits:  2014-2014 BMW 428i xDrive, 2014-2014 BMW 435i xDrive, 2013-2014 BMW 328i xDrive, 2013-2013 BMW 320i xDrive, 2013-2013 BMW 335i xDrive. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 2935, 'Suspension > Suspension Springs and Related Components > Suspension Control Arm', 'http://www.autopartsway.com/Part.cfm?W0133-1969308/LEM&g=1', 'https://s3.amazonaws.com/autopartsway/images/WP/LEM/W01331969308LEM.JPG', 'New', 'Lemfoerder', 'W0133-1969308', 103.46, 'in stock', 'USD', 'W0133-1969308', 'LEM', 'LEM1969308', 191000000000, 215177),
('A152190049', 'Air Filter AFE 21-90049', 'Air Filter. .  MagnumFLOW Crank Case Ventilation PRO DRY S Air Filter. .  PRO DRY S filters are oil-free for quick and easy service, creating the perfect balance of performance, protection and convenience. Pro DRY S provides dramatic airflow increases for improved horsepower and torque performance with 99.2% filtration efficiency. . Advanced FLOW Engineering, Inc. (aFe) is a manufacturer of high performance after-market parts for the automotive industry. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 5613, 'Air and Fuel Delivery > Filters > Air Filter', 'http://www.autopartsway.com/Part.cfm?21-90049/A15&g=1', 'https://s3.amazonaws.com/autopartsway/images/Amazonimages/A15/116VZXJXZ7L.jpg', 'New', 'AFE', '21-90049', 74, 'in stock', 'USD', '21-90049', 'A15', 'A152190049', 803000000000, 215179),
('ASCASCSN09004', 'Manual Trans Shift Knob American Shifter Company ASCSN09004', 'The AISIN Group. The AISIN Group is a global supplier of OE quality automotive components, such as brakes, transmissions, drive train, chassis, body, information-related systems and components, as well as engine-related parts for vehicle manufacturers and the aftermarket.   Red Spider Custom Shift Knob Translucent with Metal Flake. .  These creepy crawly Custom Shift Knobs are sure to be a hit while you are cruisin . Choose from a variety of colors, all 2 1/4 inches in diameter. Includes an installed threaded shift adapter and detailed instructions.' + CHAR(13) + CHAR(10) + '' + CHAR(13) + CHAR(10) + 'Knob includes a pre-installed 16mm threaded steel insert for rock-solid mounting.  Depending on your make and model this knob may require an adapter.  The American Shifter Company stocks a complete line of Custom Shift Knob adapters and is sure to have the correct one for your vehicle.' + CHAR(13) + CHAR(10) + '' + CHAR(13) + CHAR(10) + 'All Bug  Series Custom Shift Knobs can be custom etched to include your shift pattern, logo, or design of your choice. Please talk to an American Shifter sales rep for more details, or go to http://www.americanshifter.com . WARNING: Cancer and Reproductive Harm. www.P65Warnings.ca.gov. . AISIN was founded in 1965 as an Original Equipment auto parts manufacturer, mostly for Toyota. . Free shipping on orders over $100 when purchased from AutoPartsWAY.com.', 8142, 'Transmission and Transaxle - Manual > Manual Transmission Components > Manual Trans Shift Knob', 'http://www.autopartsway.com/Part.cfm?ASCSN09004/ASC&g=1', 'http://www.thehoffmangroup.com/assets/product-images/237350/1500.jpg', 'New', 'American Shifter Company', 'ASCSN09004', 38.59, 'in stock', 'USD', 'ASCSN09004', 'ASC', 'ASCASCSN09004', 802000000000, 215184);

-- END TABLE dbo.ProductSample

-- BEGIN TABLE dbo.tbl_ace_nav
IF OBJECT_ID('dbo.tbl_ace_nav', 'U') IS NOT NULL
DROP TABLE dbo.tbl_ace_nav;
GO

CREATE TABLE dbo.tbl_ace_nav (
	recordID int NOT NULL IDENTITY(1,1),
	menuName nvarchar(250) NULL,
	menuHref nvarchar(250) NULL,
	menuParent int NULL
);
GO

ALTER TABLE dbo.tbl_ace_nav ADD CONSTRAINT PK_tbl_ace_nav PRIMARY KEY (recordID);
GO

-- Inserting 46 rows into dbo.tbl_ace_nav
-- Insert batch #1
INSERT INTO dbo.tbl_ace_nav (recordID, menuName, menuHref, menuParent) VALUES
(1, 'BUCKEYE', '', 0),
(2, '<p>Advanced Imagery Platform (AIP) - <span style="color: #e03e2d;">(DREN)</span></p>', 'javascript:void(0);', 1),
(3, '<p>BuckEye Extracted Vectors (BEV) - (Pending)</p>', 'bev.cfm', 1),
(4, '<p>Geospatial Repository and Data Management System (GRID) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://grid.nga.mil/grid/', 1),
(5, 'High Resolution 3D (HR3D)', 'https://cac.agc.army.mil/Products/BuckEye/index.cfm', 1),
(6, 'High Resolution 3D-Enhanced (HR3D-E)', 'hr3de.cfm', 1),
(7, 'Light Detection and Ranging (LIDAR)', 'https://cac.agc.army.mil/Products/LIDAR/index.cfm', 1),
(8, 'FOUNDATION DATA', '', 0),
(9, '<p>AGC Water Resources Repository (AWR2)</p>', 'https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e', 8),
(10, 'Common Map Background (CMB)', 'https://agcwfs.agc.army.mil/CMB_Online/default.html', 8),
(11, 'Enterprise Geospatial Data Management Service (EGDM)', 'https://arcportal-ucop.usace.army.mil/egdmapp/', 8),
(14, 'GEOSERVICES', '', 0),
(15, '<p>Army Geospatial Enterprise (AGE) - <span style="color: #e03e2d;">(DREN)</span></p>', 'javascript:void(0);', 14),
(16, 'AGC Water Resources Repository (AWR2)', 'https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e', 14),
(17, 'Common Map Background (CMB)', 'https://agcwfs.agc.army.mil/CMB_Online/default.html', 14),
(18, '<p>Common Map Background Lite (CMB-L)</p>', 'https://agcwfs.agc.army.mil/CMB_Lite/index.html', 14),
(19, 'Enterprise Geospatial Data Management Service (EGDM)', 'https://arcportal-ucop.usace.army.mil/egdmapp/', 14),
(20, 'GEOGLOBE', 'https://cac.agc.army.mil/Products/geoglobe/index.cfm', 14),
(21, '<p>Geospatial Repository and Data Management System (GRID) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://grid.nga.mil/grid/', 14),
(22, '<p>Joint Engineer Common Operating Picture (JECOP) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://uroc-redi.usace.army.mil/sitepages/redi_jecop.aspx', 14),
(23, '<p>Map of the World - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://map.nga.mil/', 14),
(24, '<p>Open Enclave Viewer (OEV) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://uroc-redi.usace.army.mil/sites/oev/redi/index.html?map=oev', 14),
(25, '<p>Reachback Engineer Data Integration (REDi) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://uroc-redi.usace.army.mil/SitePages/REDi_DMZ.html', 14),
(26, '<p>The Globe - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://globe.nga.mil/', 14),
(28, '<p>USACE Common Operating Picture (uCOP) - <span style="color: #2dc26b;">(EXTERNAL)</span></p>', 'https://arcportal-ucop.usace.army.mil/portal/home/', 14),
(29, 'MISSION AREAS', '', 0),
(30, '<p>3-D Geovisualization (3DGEOV) - (Pending)</p>', 'landing-page-04.cfm', 29),
(31, '3-D Plastic Relief Maps (3DPRM) - (Pending)', '3dprm.cfm', 29),
(32, '<p>Advanced Imagery Platform (AIP) - <span style="color: rgb(255, 0, 0);">(DREN)</span></p>', 'javascript:void(0);', 29),
(33, 'AGC Imagery Office (AIO)', 'aio.cfm', 29),
(34, 'AGC Water Resources (AWR2)', 'https://arcportal-ucop.usace.army.mil/portal/apps/View/index.html?appid=7ae7516e366b4052a74dae2c53c7fb5e', 29),
(35, '<p>ARMY Geospatial Enterprise Portal (AGE) - <span style="color: rgb(255, 0, 0);">(DREN)</span></p>', 'javascript:void(0);', 29),
(36, 'BuckEye Enhance Team (BET)', 'http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/hr3de.cfm', 29),
(38, '<p>Digital Map Repository (DMR) - (GEOPDF)</p>', 'https://cac.agc.army.mil/Products/MapArchive/index.cfm', 29),
(39, 'Engineering Route Studies (ERS)', 'https://cac.agc.army.mil/Products/EngineeringRouteStudies/index.cfm', 29),
(40, '<p>Geospatial-Engineering Support Team (GST) - <span style="color: rgb(255, 0, 0);">(DREN)</span></p>', 'javascript:void(0);', 29),
(41, 'High Resolution 3D (HR3D)', 'https://cac.agc.army.mil/Products/BuckEye/index.cfm', 29),
(42, 'Historical Photographic Analysis (HPA)', 'https://cac.agc.army.mil/Products/HPA/index.cfm', 29),
(43, 'Military Support Team (MST)', 'http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/mst.cfm', 29),
(46, '<p>Urban Tactical Planner (UTP)</p>', 'http://www.ronaldmcqueen.net/warfightersupportdirectorate/site-copy/utp.cfm', 29),
(47, 'SUPPORT', '', 0),
(48, '<p>Common Map Background (CMB)</p>', 'https://cac.agc.army.mil/Products/CommonMapBackground/index.cfm', 29),
(50, '<p>Topographic Data Management (TDM) - <span style="color: #e03e2d;">(DREN)</span></p>', 'javascript:void(0);', 14),
(51, '<p>Topographic Data Management (TDM) - <span style="color: #e03e2d;">(DREN)</span></p>', 'javascript:void(0);', 8),
(52, '<p>Topographic Data Management (TDM) - <span style="color: #e03e2d;">(DREN)</span></p>', 'javascript:void(0);', 29),
(53, '<p>Buckeye 2</p>', 'landing-page-01.cfm', 1);

-- END TABLE dbo.tbl_ace_nav

-- BEGIN TABLE dbo.tbl_announcements
IF OBJECT_ID('dbo.tbl_announcements', 'U') IS NOT NULL
DROP TABLE dbo.tbl_announcements;
GO

CREATE TABLE dbo.tbl_announcements (
	announcementID int NOT NULL IDENTITY(1,1),
	announcementText varchar(max) NULL,
	announceLastDay date NULL,
	announcementTitle varchar(100) NULL
);
GO

ALTER TABLE dbo.tbl_announcements ADD CONSTRAINT SQLPROPK_dbo.tbl_announcements PRIMARY KEY (announcementID);
GO

-- Inserting 7 rows into dbo.tbl_announcements
-- Insert batch #1
INSERT INTO dbo.tbl_announcements (announcementID, announcementText, announceLastDay, announcementTitle) VALUES
(10, 'Webpage under review and feedback until 09/03/2021!!!', '2021-09-03 00:00:00', 'Working Group'),
(11, 'Wednesday, August 25, 2021 - 1130-1230', '2021-08-25 00:00:00', 'Working Group S.2'),
(12, 'Today - 1130 - 1200', '2021-08-26 00:00:00', 'Working Group S2'),
(13, 'Final Working Group session scheduled - 09/01/21 (1000 - 1030)', '2021-09-01 00:00:00', 'Working Group S3'),
(14, 'Session 3 Today (1000-1030)!!!', '2021-09-02 00:00:00', 'Final Working Group Session'),
(15, 'Thanks for all the feedback!!!', '2021-09-02 00:00:00', 'Thank You'),
(16, 'Due to USACE Enterprise IT Policies geospatial services/applications/hosted data in Army Geospatial Enterprise (AGE) Portal under the domain of the Portal Defense Research and Engineering Network (DREN) are not currently accessible from this page. We are working to align the policy to serve previously mentioned services. For additional information please contact AGE Portal Support at: https://agewebportal.erdc.dren.mil', '2022-10-05 00:00:00', 'DREN Services and Applications Restriction');

-- END TABLE dbo.tbl_announcements

-- BEGIN TABLE dbo.tbl_branch
IF OBJECT_ID('dbo.tbl_branch', 'U') IS NOT NULL
DROP TABLE dbo.tbl_branch;
GO

CREATE TABLE dbo.tbl_branch (
	branch_id int NOT NULL,
	branch_name varchar(100) NULL,
	branch_sort_order varchar(100) NULL
);
GO

ALTER TABLE dbo.tbl_branch ADD CONSTRAINT tbl_branch_PK PRIMARY KEY (branch_id);
GO

-- Inserting 6 rows into dbo.tbl_branch
-- Insert batch #1
INSERT INTO dbo.tbl_branch (branch_id, branch_name, branch_sort_order) VALUES
(1, 'Data Generation Branch', '1'),
(2, 'Engagements Branch', '2'),
(3, 'Dissemination Branch', '3'),
(4, 'Collections Branch', '4'),
(5, 'Military Support', '5'),
(6, 'Directorate Branch', '6');

-- END TABLE dbo.tbl_branch

-- BEGIN TABLE dbo.tbl_designation
IF OBJECT_ID('dbo.tbl_designation', 'U') IS NOT NULL
DROP TABLE dbo.tbl_designation;
GO

CREATE TABLE dbo.tbl_designation (
	id int NOT NULL IDENTITY(1,1),
	designation_name nvarchar(250) NOT NULL,
	sort_order int NOT NULL,
	branch_id int NULL,
	tab_id int NULL
);
GO

ALTER TABLE dbo.tbl_designation ADD CONSTRAINT PK_tbl_designation PRIMARY KEY (id);
GO

-- Inserting 11 rows into dbo.tbl_designation
-- Insert batch #1
INSERT INTO dbo.tbl_designation (id, designation_name, sort_order, branch_id, tab_id) VALUES
(1, 'Directorate Chief', 1, NULL, 1),
(2, 'Admin Officer', 4, NULL, 4),
(4, 'Branch Chief', 2, NULL, 1),
(5, 'Team Lead', 3, NULL, 3),
(6, 'Contractor', 6, NULL, 4),
(7, 'Civilian', 7, NULL, 4),
(9, 'Data Generation Branch', 8, 1, 2),
(10, 'Engagements Branch', 10, 2, 2),
(11, 'Dissemination Branch', 9, 3, 2),
(12, 'Collections Branch', 5, 4, 2),
(13, 'Military Support', 11, 5, 5);

-- END TABLE dbo.tbl_designation

-- BEGIN TABLE dbo.tbl_divisions
IF OBJECT_ID('dbo.tbl_divisions', 'U') IS NOT NULL
DROP TABLE dbo.tbl_divisions;
GO

CREATE TABLE dbo.tbl_divisions (
	divID int NOT NULL IDENTITY(1,1),
	divName text NOT NULL,
	divIMG text NOT NULL,
	divURL text NOT NULL
);
GO

ALTER TABLE dbo.tbl_divisions ADD CONSTRAINT PK__tbl_divi__3414D9B23D616D99 PRIMARY KEY (divID);
GO

-- Inserting 29 rows into dbo.tbl_divisions
-- Insert batch #1
INSERT INTO dbo.tbl_divisions (divID, divName, divIMG, divURL) VALUES
(2, '1AD GEOINT Tm', '1ad-geoint-tm.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=56992c0e7cae4dae809bf3ed1dc63607#overview'),
(3, '1st Cavalry Division GEOINT', '1st-calvary-division-geoint.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=74d34751187d4458a4f1725d7cc7eadf#overview'),
(4, '2nd SFAB', '2nd-sfab.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=4f097dc18bdd42208b202f535e9d4005#overview'),
(5, '4-25th ABCT', '4-25th-abct.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=e2dc9fec3188475481e2d9affc6d7dcf#overview'),
(6, '5th GPC', '5th-gpc.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=b80c1131a13b43ecbc4d133e0cabd1a6#overview'),
(7, '60th ENG DET', '60th-eng-det.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=a5715cf326344a08969070efaa826a4d#overview'),
(8, '101st GEOINT Team', '101st-geoint-team.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=7be2a8e2b6874601bc1623dd0375b395#overview'),
(9, '132nd GPC', '132nd-gpc.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=23840902feb549998da073446aa34f47#overview'),
(10, '230th Sustainment Brigade', '230th-sustainment-brigade.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=106f5e49781b48c58cbaa2285cf3aab6#overview'),
(11, '517th GPC USARAF', '517th-gpc-usaraf.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=dfd5dbc6e7084ee7a2fc796a77af5ec5#overview'),
(12, '543rd GPC ARNORTH/NORTHCOM', '543rd-gpc-arnorth.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=ff53da2625f54baebe57e2f75d1e6e0d#overview'),
(13, '555th EN BDE', '555th-en-bde.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=e3d74b872e5c49cfb8f8ecdbca7e67bb#overview'),
(14, 'AGE COVID-19 Geo Task Force', 'agc-covid19-geo-task-force.png', 'https://agewebportal.erdc.dren.mil/portal/apps/sites/#/covid19'),
(15, 'Army GEOINT Battalion', 'army-geoint-battalion.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=fa1a02dcf50146b2823216c83a9211d7#overview'),
(16, 'Buckeye', 'buckeye.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=5b5465430f9942dd90228fc58aab85f0#overview'),
(17, 'Enfire', 'enfire.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=b98b2ff8a5b44d5c8409457a64cec494#overview'),
(18, 'FEMA Region VII', 'fema-region-vii.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=a52db3984be34cb2ae3b9992b66928d7#overview'),
(19, 'FORSCOM', 'forscom.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=f196bc4171874f489855737e788dff2c#overview'),
(20, 'Fort Carson/Pinon Canyon Military Community', 'fort-carson-pinon-canyon-mc.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=148d59e527c64bdaa56f130e67766b2b#overview'),
(21, 'HHS/AGE Collaboration', 'hhs-age-collaboration.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=f01d561df0c048e98e7599836981c8d6#overview'),
(22, 'I Corps GEOINT Team', 'i-corps-geoint-team.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=308b949d4e624032bec426018e338a02#overview'),
(23, 'NGA IC Collaboration', 'nga-ic-collaboration.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=9027a096438740428ad4c5461d09e4d4#overview'),
(24, 'NORAD Collaboration', 'norad-collaboration.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=32bec13d2f324cc9aec60e776c062572#overview'),
(25, 'TPO-G', 'tpo-g.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=9e1d45f90e56476f8af6488480bca4b5#overview'),
(26, 'TRADOC G2 OE Enterprise', 'tradoc-g2-oe-enterprise.png', 'https://agewebportal.erdc.dren.mil/portal/apps/sites/#/home'),
(27, 'TRADOC G2', 'tradoc-g2.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=c6550a94c3874b85964febce1f62a835#overview'),
(28, 'UCOP Collaboration', 'ucop-collaboration.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=41b7721be9364a9588af9fe48becf575#overview'),
(29, 'UCOP REDI/AGE Collaboration', 'ucop-redi-age-collaboration.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=231d5cc5517c46e0b007fcd79a482b3f#overview'),
(30, 'Urban Tactical Planner', 'urban-tactical-planner.png', 'https://agewebportal.erdc.dren.mil/portal/home/group.html?id=b4ea9b625d754a3987f7f28d7c7be5b5#overview');

-- END TABLE dbo.tbl_divisions

-- BEGIN TABLE dbo.tbl_landing_pages
IF OBJECT_ID('dbo.tbl_landing_pages', 'U') IS NOT NULL
DROP TABLE dbo.tbl_landing_pages;
GO

CREATE TABLE dbo.tbl_landing_pages (
	id int NOT NULL IDENTITY(1,1),
	page_name nvarchar(3000) NULL,
	col_md_12_title nvarchar(3000) NULL,
	col_md_9 nvarchar(3000) NULL,
	col_md_3 nvarchar(3000) NULL,
	col_md_12_description nvarchar(3000) NULL
);
GO

ALTER TABLE dbo.tbl_landing_pages ADD CONSTRAINT PK_tbl_landing_pages PRIMARY KEY (id);
GO

-- Inserting 20 rows into dbo.tbl_landing_pages
-- Insert batch #1
INSERT INTO dbo.tbl_landing_pages (id, page_name, col_md_12_title, col_md_9, col_md_3, col_md_12_description) VALUES
(6, 'landing-page-01.cfm', '<p>landing text</p>', '<ol start="1" type="1" style="margin-bottom: 0in; color: rgb(0, 0, 0); font-size: medium; margin-top: 0in;"><li class="MsoListParagraph" style="margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;">FLY-THRUS, GEOBLOBE, GEOSPATIAL TECHNICAL SUPPORT, REACHBACK SUPPORT – need to open new window.<o:p></o:p></li></ol>', '<p>even more&nbsp;</p><ol start="1" type="1" style="margin-bottom: 0in; color: rgb(0, 0, 0); font-size: medium; margin-top: 0in;"><li class="MsoListParagraph" style="margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;">FLY-THRUS, GEOBLOBE, GEOSPATIAL TECHNICAL SUPPORT, REACHBACK SUPPORT – need to open new window.<o:p></o:p></li></ol>', '<p>final text&nbsp;</p><ol start="1" type="1" style="margin-bottom: 0in; color: rgb(0, 0, 0); font-size: medium; margin-top: 0in;"><li class="MsoListParagraph" style="margin: 0in; font-size: 11pt; font-family: Calibri, sans-serif;">FLY-THRUS, GEOBLOBE, GEOSPATIAL TECHNICAL SUPPORT, REACHBACK SUPPORT – need to open new window.<o:p></o:p></li></ol>'),
(8, 'landing-page-02.cfm', '<p>testing testing testing</p>', '<p>test 123</p>', '<p>test 1234</p>', '<p>test12345</p>'),
(9, 'landing-page-03.cfm', '<p><span style="color: rgb(32, 33, 34); font-family: serif;">Lorem ipsum dolor sit amet, consectetur adipisci tempor incidunt ut labore et dolore magna aliqua veniam, quis nostrud exercitation ullamcorpor s commodo consequat. Duis autem vel eum irrure esse molestiae consequat, vel illum dolore eu fugi et iusto odio dignissim qui blandit praesent luptat exceptur sint occaecat cupiditat non provident, deserunt mollit anim id est laborum et dolor fuga distinct. Nam liber tempor cum soluta nobis elige quod maxim placeat facer possim omnis volupt</span><br></p>', '<p><span style="color: rgb(32, 33, 34); font-family: serif;">Lorem ipsum dolor sit amet, consectetur adipisci tempor incidunt ut labore et dolore magna aliqua veniam, quis nostrud exercitation ullamcorpor s commodo consequat. Duis autem vel eum irrure esse molestiae consequat, vel illum dolore eu fugi et iusto odio dignissim qui blandit praesent luptat exceptur sint occaecat cupiditat non provident, deserunt mollit anim id est laborum et dolor fuga distinct. Nam liber tempor cum soluta nobis elige quod maxim placeat facer possim omnis volupt</span><br></p>', '<p><span style="color: rgb(32, 33, 34); font-family: serif;">Lorem ipsum dolor sit amet, consectetur adipisci tempor incidunt ut labore et dolore magna aliqua veniam, quis nostrud exercitation ullamcorpor s commodo consequat. Duis autem vel eum irrure esse molestiae consequat, vel illum dolore eu fugi et iusto odio dignissim qui blandit praesent luptat exceptur sint occaecat cupiditat non provident, deserunt mollit anim id est laborum et dolor fuga distinct. Nam liber tempor cum soluta nobis elige quod maxim placeat facer possim omnis volupt</span><br></p>', '<p><span style="color: rgb(32, 33, 34); font-family: serif;">Lorem ipsum dolor sit amet, consectetur adipisci tempor incidunt ut labore et dolore magna aliqua veniam, quis nostrud exercitation ullamcorpor s commodo consequat. Duis autem vel eum irrure esse molestiae consequat, vel illum dolore eu fugi et iusto odio dignissim qui blandit praesent luptat exceptur sint occaecat cupiditat non provident, deserunt mollit anim id est laborum et dolor fuga distinct. Nam liber tempor cum soluta nobis elige quod maxim placeat facer possim omnis volupt</span><br></p>'),
(13, 'landing-page-04.cfm', '<p>Landing Page 4</p>', '<p><font color="#000000" face="PT Mono"><span style="font-size: 16px;">11</span></font></p>', '<p><font color="#000000" face="PT Mono"><span style="font-size: 16px;">22</span></font></p>', '<p><font color="#000000" face="PT Mono"><span style="font-size: 16px;">33</span></font></p>'),
(14, 'landing-page-05.cfm', '', '', '', ''),
(15, 'landing-page-06.cfm', '', '', '', ''),
(16, 'landing-page-07.cfm', '', '', '', ''),
(17, 'landing-page-08.cfm', '', '', '', ''),
(18, 'landing-page-09.cfm', '', '', '', ''),
(19, 'landing-page-10.cfm', '', '', '', ''),
(20, 'landing-page-12.cfm', '', '', '', ''),
(21, 'landing-page-11.cfm', '', '', '', ''),
(22, 'landing-page-13.cfm', '', '', '', ''),
(23, 'landing-page-14.cfm', '', '', '', ''),
(24, 'landing-page-15.cfm', '', '', '', ''),
(25, 'landing-page-16.cfm', '', '', '', ''),
(26, 'landing-page-17.cfm', '', '', '', ''),
(27, 'landing-page-18.cfm', '', '', '', ''),
(28, 'landing-page-19.cfm', '', '', '', ''),
(29, 'landing-page-20.cfm', '', '', '', '');

-- END TABLE dbo.tbl_landing_pages

-- BEGIN TABLE dbo.tbl_tabsGroup
IF OBJECT_ID('dbo.tbl_tabsGroup', 'U') IS NOT NULL
DROP TABLE dbo.tbl_tabsGroup;
GO

CREATE TABLE dbo.tbl_tabsGroup (
	id int NOT NULL IDENTITY(1,1),
	tab_name varchar(250) NULL,
	sort_order int NULL
);
GO

ALTER TABLE dbo.tbl_tabsGroup ADD CONSTRAINT PK_tbl_tabsGroup PRIMARY KEY (id);
GO

-- Inserting 5 rows into dbo.tbl_tabsGroup
-- Insert batch #1
INSERT INTO dbo.tbl_tabsGroup (id, tab_name, sort_order) VALUES
(1, 'Chiefs', 1),
(2, 'Branches', 2),
(3, 'Team Lead', 3),
(4, 'Additional Staff', 4),
(5, 'Military Support', 5);

-- END TABLE dbo.tbl_tabsGroup

-- BEGIN TABLE dbo.user_story
IF OBJECT_ID('dbo.user_story', 'U') IS NOT NULL
DROP TABLE dbo.user_story;
GO

CREATE TABLE dbo.user_story (
	id int NOT NULL IDENTITY(1,1),
	count1 numeric(18,0) NULL,
	count2 numeric(18,0) NULL,
	count3 numeric(18,0) NULL,
	count4 numeric(18,0) NULL,
	label1 varchar(250) NULL,
	label2 varchar(250) NULL,
	label3 varchar(250) NULL,
	label4 varchar(250) NULL,
	speed1 numeric(18,0) NULL,
	speed2 numeric(18,0) NULL,
	speed3 numeric(18,0) NULL,
	speed4 numeric(18,0) NULL
);
GO

ALTER TABLE dbo.user_story ADD CONSTRAINT PK_user_story PRIMARY KEY (id);
GO

-- Inserting 1 row into dbo.user_story
-- Insert batch #1
INSERT INTO dbo.user_story (id, count1, count2, count3, count4, label1, label2, label3, label4, speed1, speed2, speed3, speed4) VALUES
(1, 999, 16, 150, 289, 'USERS', 'PROGRAMS', 'DATASETS', 'REQUESTS', 1, 1, 1, 1);

-- END TABLE dbo.user_story

-- BEGIN TABLE dbo.users
IF OBJECT_ID('dbo.users', 'U') IS NOT NULL
DROP TABLE dbo.users;
GO

CREATE TABLE dbo.users (
	id int NOT NULL IDENTITY(1,1),
	colRank text NULL,
	firstName varchar(250) NULL,
	lastName varchar(250) NULL,
	designation int NULL,
	branch int NULL,
	parent int NULL,
	[image] varchar(250) NULL,
	phnArea varchar(250) NULL,
	phnExchange varchar(250) NULL,
	phnLastFour varchar(250) NULL,
	colAddr varchar(250) NULL,
	colAddrL2 varchar(250) NULL,
	colCity varchar(250) NULL,
	colState varchar(250) NULL,
	colZip varchar(250) NULL,
	colEmail varchar(250) NULL,
	show_on_gts bit NULL
);
GO

ALTER TABLE dbo.users ADD CONSTRAINT PK_users PRIMARY KEY (id);
GO

-- Inserting 85 rows into dbo.users
-- Insert batch #1
INSERT INTO dbo.users (id, colRank, firstName, lastName, designation, branch, parent, [image], phnArea, phnExchange, phnLastFour, colAddr, colAddrL2, colCity, colState, colZip, colEmail, show_on_gts) VALUES
(3, NULL, 'Thomas', 'Spillman', 4, 1, 0, 'Thomas_Spillman.jpg', '703', '428', '7869', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'thomas.r.spillman@usace.mil', NULL),
(4, NULL, 'Shane', 'Douglas', 7, 1, 0, 'Shane_Douglas.jpg', '703', '428', '6154', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(5, NULL, 'Vacant', 'Vacant', 5, 1, 0, 'Vacant_Vacant.jpg', '703', '428', '6894', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(6, '', 'Jonathan', 'Bluett', 7, 1, 0, 'Johnathan_Bluett.jpg', '703', '428', '7442', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(7, NULL, 'Mark', 'Burnell', 7, 1, 0, 'Mark_Burnell.jpg', '703', '428', '6880', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(8, NULL, 'Casey', 'Christo', 6, 1, 0, 'Casey_Christo.jpg', '703', '428', '188', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(9, NULL, 'Chris', 'D''Errico', 7, 1, 0, 'Chris_D''Errico.jpg', '703', '428', '7421', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(10, NULL, 'Brandon', 'Hogsten', 6, 1, 0, 'Brandon_Hogsten.jpg', '703', '428', '3768', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(11, NULL, 'Alana', 'Hubbard', 7, 1, 0, 'Alana_Hubbard.jpg', '703', '428', '7206', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(13, '', 'John', 'Berglin', 6, 1, 0, 'Vacant_Hurst.jpg', '703', '428', '6651', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(14, '', 'Samuel', 'Pacheco-Cherena', 7, 3, 0, 'Samuel_Pachecho-Cherna.jpg', '703', '428', '3740', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(15, NULL, 'John', 'Jens', 7, 1, 0, 'John_Jens.jpg', '703', '428', '6948', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(16, NULL, 'Michael', 'Caldwell', 6, 1, 0, 'Michael_Caldwell.jpg', '703', '428', '3624', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(17, '', 'Eric', 'Schoppmann', 7, 1, 0, 'Eric_Schoppmann.jpg', '703', '428', '6968', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(18, NULL, 'Angela', 'Straub', 7, 1, 0, 'Angela_Straub.jpg', '703', '428', '6888', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(19, NULL, 'Shiloh', 'Dorgan', 5, 1, 0, 'Shiloh_Dorgan.jpg', '703', '428', '3626', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(20, NULL, 'Kevin', 'Gonzalez', 7, 1, 0, 'Kevin_Gonzalez.jpg', '703', '428', '7418', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(22, NULL, 'David', 'Brierly', 5, 1, 0, 'David_Brierly.jpg', '703', '428', '7420', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(23, NULL, 'Jonathan', 'Baldwin', 7, 1, 0, 'Jonathan_Baldwin.jpg', '703', '428', '3773', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(24, '', 'Natlee', 'Hernandez-Guevara', 7, 1, 0, 'Natlee_Hernandez-Guevera.jpg', '703', '428', '3658', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(25, NULL, 'Jason', 'Murray', 7, 1, 0, 'Jason_Murray.jpg', '703', '428', '6195', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(26, NULL, 'Paul', 'Hamilton', 7, 1, 0, 'Paul_Hamilton.jpg', '703', '428', '6627', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(27, NULL, 'Matt', 'Rifkin', 7, 1, 0, 'Matt_Rifkin.jpg', '703', '428', '6839', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(28, NULL, 'Angel', 'Martinez', 4, 2, 0, 'Angel_Martinez.jpg', '703', '428', '6624', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'angel.martinez@usace.army.mil', 1),
(29, '', 'Jorge', 'Morales', 5, 2, 0, 'Jorge_Morales.jpg', '703', '428', '3913', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', 1),
(30, '', 'Amanda', 'Po', 7, 2, 0, 'Amanda_Po.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(31, '', 'Larry', 'Gray', 7, 2, 0, 'Larry_Gray.jpg', '703', '428', '6763', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(32, NULL, 'Ronnie', 'Buzzard', 5, 2, 0, 'Ronnie_Buzzard.jpg', '703', '428', '7767', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(33, NULL, 'Norberto', 'Quinonez', 7, 2, 0, 'Norberto_Quinonez.jpg', '703', '428', '3612', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(34, NULL, 'Chris', 'Harvey', 6, 2, 0, 'Chris_Harvey.jpg', '703', '428', '6053', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(35, NULL, 'Jason', 'Warne', 5, 2, 0, 'Jason_Warne.jpg', '703', '428', '3635', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(36, NULL, 'Chris', 'Kennedy', 7, 2, 0, 'Chris_Kennedy.jpg', '703', '428', '6769', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(37, NULL, 'Chris', 'Knight', 7, 2, 0, 'Chris_Knight.jpg', '703', '428', '3706', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(38, NULL, 'Ruben', 'Hernandez', 7, 2, 0, 'Ruben_Hernandez.jpg', '703', '428', '7050', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(39, NULL, 'Joseph', 'Filkins', 6, 2, 0, 'Joseph_Filkins.jpg', '703', '428', '3619', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(40, NULL, 'Seth', 'Harter', 6, 2, 0, 'Seth_Harter.jpg', '703', '428', '3583', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(41, NULL, 'Andrew', 'Kray', 6, 2, 0, 'Andrew_Kray.jpg', '703', '428', '1038', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(42, NULL, 'Emanuel', 'Lewis', 6, 2, 0, 'Emanuel_Lewis.jpg', '703', '428', '6269', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(43, NULL, 'Chris', 'Michael', 6, 2, 0, 'Chris_Michael.jpg', '703', '428', '8364', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(44, NULL, 'Joel', 'Weber', 6, 2, 0, 'Joel_Weber.jpg', '703', '428', '8187', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(45, NULL, 'Bonney', 'Austin', 6, 2, 0, 'Bonney_Austin.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(46, NULL, 'Wilson', 'Engel', 6, 2, 0, 'Wilson_Engel.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(57, '', 'Mary', 'Hane', 4, 3, 0, 'Mary_Hane.jpg', '703', '428', '6903', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'mary-pat.g.santoro@usace.army.mil', NULL),
(58, NULL, 'Alexis', 'Jones', 7, 3, 0, 'Alexis_Jones.jpg', '703', '428', '3630', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(59, '', 'Teresa', 'Rasmussen', 5, 3, 0, 'Teresa_Rasmussen.jpg', '703', '428', '7889', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', 1),
(60, NULL, 'Melody', 'Campbell', 7, 3, 0, 'Melody_Campbell.jpg', '703', '428', '6912', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(61, NULL, 'Raymond', 'Caputo', 7, 3, 0, 'Raymond_Caputo.jpg', '703', '428', '6784', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(62, NULL, 'Matt', 'Jones', 7, 3, 0, 'Matt_Jones.jpg', '703', '428', '181', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(63, NULL, 'Morgan', 'Campbell', 6, 3, 0, 'Morgan_Campbell.jpg', '703', '428', '7425', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(64, '', 'Pauline', 'Quiah', 6, 3, 0, 'Pauline_Quiah.jpg', '703', '428', '6908', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(65, NULL, 'Alex', 'Henriquez', 6, 3, 0, 'Alex_Henriquez.jpg', '703', '428', '6267', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(66, NULL, 'Todd', 'Blyler', 5, 3, 0, 'Todd_Blyler.jpg', '703', '428', '6962', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(67, '', 'Michael', 'Cioffi', 5, 1, 0, 'Michael_Cioffi.jpg', '703', '428', '6932', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'testing@test.com', 1),
(68, '', 'Robert', 'Molnar', 7, 3, 0, 'Robert_Molnar.jpg', '703', '428', '6703', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(69, '', 'George', 'Newbury IV', 7, 3, 0, 'George_NewburyIV.jpg', '703', '428', '6260', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(70, NULL, 'Richard', 'Lafleur', 6, 3, 0, 'Richard_Lafleur.jpg', '703', '428', '3616', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(71, NULL, 'Andrew', 'McHugh', 4, 4, 0, 'Andrew_McHugh.jpg', '703', '428', '6897', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'andrew.r.mchugh@usace.army.mil', 1),
(72, NULL, 'Jenny', 'Durrall', 7, 4, 0, 'Jenny_Durrall.jpg', '703', '428', '1510', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(73, NULL, 'Mary', 'Brenke', 7, 4, 0, 'Mary_Brenke.jpg', '703', '428', '6909', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(74, NULL, 'Evan', 'Allseitz', 7, 4, 0, 'Evan_Allseitz.jpg', '703', '223', '4312', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(76, NULL, 'Justin', 'Bowles', 7, 4, 0, 'Justin_Bowles.jpg', '703', '428', '6721', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(77, NULL, 'Chad', 'Epley', 7, 4, 0, 'Chad_Epley.jpg', '703', '428', '3698', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(78, NULL, 'Bruce', 'Fulkerson', 7, 4, 0, 'Bruce_Fulkerson.jpg', '703', '428', '6811', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(79, NULL, 'Sabiha', 'Qureshi', 7, 4, 0, 'Sabiha_Qureshi.jpg', '703', '428', '3775', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(80, NULL, 'Shawn', 'Avery', 6, 4, 0, 'Shawn_Avery.jpg', '703', '428', '6823', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(81, NULL, 'Robert', 'Flint', 6, 4, 0, 'Robert_Flint.jpg', '703', '428', '6127', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(82, NULL, 'Steve', 'Sarigianis', 6, 4, 0, 'Steve_Sarigianis.jpg', '703', '428', '7853', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', 1),
(83, NULL, 'Kevin', 'Hill', 7, 4, 0, 'Kevin_Hill.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(84, NULL, 'Marty', 'Downing', 5, 4, 0, 'Marty_Downing.jpg', '703', '428', '3613', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(85, NULL, 'Dwayne', 'Russler', 7, 4, 0, 'Dwayne_Russler.jpg', '703', '428', '6657', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(86, NULL, 'Jeremy', 'Atkinson', 7, 4, 0, 'Jeremy_Atkinson.jpg', '703', '428', '9029', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(87, NULL, 'Pedro', 'Roman', 7, 4, 0, 'Pedro_Roman.jpg', '703', '428', '6756', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(95, NULL, 'David', 'Adelman', 7, 4, 0, 'David_Adelman.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(96, '', 'Alkier', 'Camonayan', 7, 4, 0, 'NoName_Camonayan.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(97, NULL, 'Mario', 'Gomez', 7, 4, 0, 'Mario_Gomez.jpg', '703', '428', '0000', '7701 Telegraph Rd', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'Virginia', '22315-3864', 'test@test.com', NULL),
(98, NULL, 'George', 'Ohanian', 1, 6, 0, 'George_Ohanian.jpg', '703', '428', '0000', '7701 Telegraph Road', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandra', 'VA', '22315', 'George.H.Ohanian@usace.army.mil', NULL),
(102, 'CW5', 'Joseph', 'Stephen', 4, 5, 0, 'CW5_Joseph_Stephen.jpg', '703', '428', '3623', '7701 Telegraph Road', 'Bldg. 2592 ATTN: CEAGC-WS', 'Alexandria', 'VA', '22315-3864', 'Stephen.E.Joseph@usace.army.mil', NULL),
(103, 'SFC', 'Jennifer', 'Whitty-Cornett', 5, 5, 0, 'SFC_Jennifer_Whitty-Cornett.jpg', '703', '428', '6642', '7701 Telegraph Road', 'Bldg. 2592, ATTN:CEAGC-WS', 'Alexandria', 'VA', '22315-3864', 'Jennifer.Whittycornett@usace.army.mil', NULL),
(104, '', 'Carol J', 'Bryant', 2, 6, 0, 'CarolJ_Bryant.jpg', '703', '428', '6935', '7701 Telegraph Road', 'Bldg. 2592, ATTN:CEAGC-WS', 'Alexandria', 'VA', '22315-3864', 'Carol.J.Bryant@usace.army.mil', NULL),
(105, NULL, 'Samantha', 'Komrowski', 2, 6, 0, 'Samantha_Komrowski.jpg', '703', '428', '6957', '7701 Telegraph Road', 'Bldg. 2592, ATTN:CEAGC-WS', 'Alexandria', 'VA', '22315-3864', 'Samantha.Wiscount@usace.army.mil', NULL),
(106, NULL, 'Adam', 'Burstein', 2, 6, 0, 'Adam_Burstein.jpg', '123', '456', '7890', 'Pentagon', 'OCE', 'Pentagon', 'DC', '12345', 'adam.c.burstein.civ@mail.mil', NULL),
(107, 'SSG', 'Alisa M.', 'Matthews', 13, 5, 0, 'SSG_AlisaM._Matthews.jpg', '703', '428', '6759', '7701 Telegraph Road', 'BLDG. 2592', 'Alexandria', 'VA', '22315', 'Alisa.M.Matthews@usace.army.mil', NULL),
(108, 'SSG', 'Michael J.', 'Gibbons', 13, 5, 0, 'SSG_MichaelJ._Gibbons.jpg', '703', '428', '7400', '7701 Telegraph Road', 'BLDG. 2592', 'Alexandria', 'VA', '22315', 'Michael.J.Gibbons@usace.army.mil', NULL),
(109, 'SGT', 'Joseph F.', 'DeMarco', 13, 5, 0, 'SGT_JosephF._DeMarco.jpg', '703', '428', '3705', '7701 Telegraph Road', 'BLDG. 2592', 'Alexandria', 'VA', '22315', 'joseph.f.demarco@usace.army.mil', NULL),
(111, 'MST', 'MST', 'DLL', 13, 5, 0, 'MST_MST_DLL.png', '703', '428', '6759', '7701 Telegraph Road', 'Bldg. 2592 ATTN: CEAGC-MST', 'Alexandria', 'VA', '22315', 'AGC.MST@usace.army.mil', 1);

-- END TABLE dbo.users

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.udf_StripHTML') AND type in (N'FN', N'IF',N'TF', N'FS', N'FT'))
	DROP FUNCTION dbo.udf_StripHTML
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[udf_StripHTML] (@HTMLText VARCHAR(MAX))
RETURNS VARCHAR(MAX) AS
BEGIN
    DECLARE @Start INT
    DECLARE @End INT
    DECLARE @Length INT
    SET @Start = CHARINDEX('<',@HTMLText)
    SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
    SET @Length = (@End - @Start) + 1
    WHILE @Start > 0 AND @End > 0 AND @Length > 0
    BEGIN
        SET @HTMLText = STUFF(@HTMLText,@Start,@Length,'')
        SET @Start = CHARINDEX('<',@HTMLText)
        SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
        SET @Length = (@End - @Start) + 1
    END
    RETURN LTRIM(RTRIM(@HTMLText))
END
GO

