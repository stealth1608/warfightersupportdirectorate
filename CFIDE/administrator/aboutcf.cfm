ΚώΊΎ  -΅ 
SourceFile  /CFIDE/administrator/aboutcf.cfm cfaboutcf2ecfm99082409  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PAGENAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   THISURL   	   PROTOCOL   	    com.macromedia.SourceModTime  h·α pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	  1 UTF8 3 setPageEncoding (Ljava/lang/String;)V 5 6 !coldfusion/runtime/NeoPageContext 8
 9 7 $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag = forName %(Ljava/lang/String;)Ljava/lang/Class; ? @ java/lang/Class B
 C A ; <	  E _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; G H
  I coldfusion/tagext/io/SilentTag K _setCurrentLineNo (I)V M N
  O 	hasEndTag (Z)V Q R coldfusion/tagext/GenericTag T
 U S 
doStartTag ()I W X
 L Y 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; [ \
  ]   _ checkSimpleParameter 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V a b
  c CGI e java/lang/String g SERVER_PORT_SECURE i _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; k l
  m 	IsBoolean (Ljava/lang/Object;)Z o p
  q _Object (Z)Ljava/lang/Object; s t coldfusion/runtime/Cast v
 w u _boolean y p
 w z https:// | set (Ljava/lang/Object;)V ~  coldfusion/runtime/Variable 
   http://  doAfterBody  X
 U  _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;  
   doEndTag  X #javax/servlet/jsp/tagext/TagSupport 
   doCatch (Ljava/lang/Throwable;)V  
 U  	doFinally  
 U  $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag   <	   coldfusion/tagext/io/OutputTag 
  Y 

 ‘ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V £ €
  ₯ (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag ¨ § <	  ͺ "coldfusion/tagext/lang/ImportedTag ¬ l10n ? cftags/ ° admin ² setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V ΄ ΅
 ­ Ά &coldfusion/runtime/AttributeCollection Έ java/lang/Object Ί id Ό cfadmin_about Ύ var ΐ pagename Β ([Ljava/lang/Object;)V  Δ
 Ή Ε setAttributecollection (Ljava/util/Map;)V Η Θ  coldfusion/tagext/lang/ModuleTag Κ
 Λ Ι
 Λ Y About ColdFusion Administrator Ξ write Π 6 java/io/Writer ?
 Σ Ρ
 Λ 
 Λ 
 Λ  5

<html>
<head>
	<LINK REL="SHORTCUT ICON" href=" Ψ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Ϊ Ϋ
  ά _String &(Ljava/lang/Object;)Ljava/lang/String; ή ί
 w ΰ SERVER_NAME β EncodeForHTMLAttribute &(Ljava/lang/String;)Ljava/lang/String; δ ε
  ζ : θ SERVER_PORT κ GetContextRoot ()Ljava/lang/String; μ ν
  ξ ,/CFIDE/administrator/cf_icon.ico">
	<title> π </title>
	 ς 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag υ τ <	  χ !coldfusion/tagext/lang/IncludeTag ω 
styles.cfm ϋ setTemplate ύ 6
 ϊ ώ _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z 
  /
	<meta name="Author" content="Copyright 1995- Now "()Lcoldfusion/runtime/OleDateTime;
  Year (Ljava/util/Date;)I

  (I)Ljava/lang/String; ή
 wδ Adobe Macromedia Software LLC. All rights reserved.">

	<style type="text/css">
	.panel {
		position:relative; top:0px;
		/*Filter:blendTrans(duration=2);*/
		Filter:revealTrans(duration=0.5,transition=5);
		height:180px;
		width:500px;
	}
	dd{
		color: black;
	}
	#contributing-members{
		color: white;
	}
	</style>
</head>
<body
	text="#003366" link="#003399" vlink="#997799" alink="#339900"
	topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
>

 coldfusionmx Scorpio o

<table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" style="background-image:url(' REQUEST Εimages/aboutbackground.png'); background-repeat:no-repeat">
<tr>
	<td>
		
		<table border="0" cellpadding="0" cellspacing="0" style="margin-left:100px">
			<tr>
				<td colspan="3"><img src=" images/spacer.gif" alt="" width="1" height="105"></td>
			</tr>
			<tr valign="top">
				<td colspan="3" align="left" style="padding-left:20;">
					 version6 Version:! 	 <strong># SERVER% 
COLDFUSION' PRODUCTVERSION) </strong><br />
					+ 
ssnumabout- Serial number:/ LICENSE1 
LICENSEKEY3 M</strong><br />
				</td>
			</tr>
			<tr>
				<td colspan="3"><img src="5 Φimages/spacer.gif" alt="" width="1" height="20"></td>
			</tr>
			<tr>
				<td colspan="3">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td style="vertical-align:middle;"><img src="7 ;images/spacer.gif" alt="" width="10" height="1"/><img src="9  images/adobelogo.gif" alt="" width="29" height="32"/></td>
						<td style="width:400px;"><p style="margin:10px 20px 20px 20px; ma" class="loginCopyrightText">; copyright_cont=²
Copyright 1995 - 2018 Adobe. All Rights Reserved.<BR>

Portions utilize Microsoft Windows Media Technologies. Copyright 1999-2004 Microsoft Corporation. All Rights Reserved. 

This Product includes code licensed from RSA Data Security 

Notices, terms and conditions pertaining to third party software are located at http://www.adobe.com/go/thirdparty/ and incorporated by reference herein.


                              ? ξ</p> </td> </tr>

				</table>
				</td>
			</tr>
			<tr>
				<td align="center" class="cell2BlueSidesAndBlueBkgd" style="background-color:#406C89">
					<h1 style="color:#FFFFFF"><label for="admin_login" id="contributing-members">A ContributingMembersC Contributing MembersE =</label></h1>
				</td>
			</tr>
		<tr>
			<td><img src="G θimages/spacer.gif" alt="" width="1" height="170"></td>
		</tr>
		<tr>
			<td align="right" class="cell2BlueSidesAndBlueBkgd" style="background-color:#406C89">&nbsp;</td>
		</tr>
		</table>
		
		<br>
	</td>
</tr>
</table>
I
   coldfusion/tagext/QueryLoopL
M 
M 
  ί
<br><br><br><br><br>
<div id="parentCredits" style="position:absolute;top:285px;left:100px;height:200px;overflow:hidden;">
                <div id="management" class="panel" style="top:30px;">
                <h1>Engineering Management </h1>
	                <dd>Suresh Jayaraman, Senior Engineering Manager </dd>
                    <dd>Awdhesh Kumar, Engineering Manager</dd>
                    <dd>Vamseekrishna Manneboina, Senior Quality Engineering Manager</dd>
                </div>
                <div id="engineering" class="panel" style="top:30px;">
                    <h1>Engineering Team </h1>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td valign="top">
								<dd>Amit Shukla </dd>
                                <dd>Ashudeep Sharma </dd>
                                <dd>Aswin Mahendran </dd>
								<dd>Chandrashekar B </dd>
								<dd>Deepraj Jha </dd>
                            </td>
                            <td valign="top">
								<dd>Edwin Samuel Jonathan </dd>
								<dd>Himavanth Rachamsetty</dd>
								<dd>Ketki Joshi </dd>
				                <dd>Krishna Reddy P </dd>
								<dd>Mayur Jain </dd>                                     
                            </td>
                            <td valign="top">                                                              
								<dd>Nikhil Dubey </dd>   
								<dd>Nikhil Siddhartha </dd>    
                                <dd>Rohit Boggarapu  </dd>  
						        <dd>S V Pavankumar </dd>
                                <dd>Uday Ogra </dd>
                                <dd>Vijay Mohan </dd>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="qa" class="panel" style="top:30px;">
                <h1>Quality Assurance Team </h1>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
							<dd>Dattanand M Bhat </dd>
							<dd>Hari Krishna Kallae </dd> 
							<dd>Immanuel Noel </dd>
							<dd>Kailash Bihani  </dd>
						</td>
                        <td valign="top">
                            <dd>Manas Mahapatra </dd>
                            <dd>Mukesh Kumar  </dd>
                            <dd>Nimit Sharma </dd>
							<dd>Nitin Kumar </dd>
						</td>
						 <td valign="top">
                            <dd>Piyush Kumar Nayak </dd>
                            <dd>Poonam Jain </dd>
                            <dd>S Preethi </dd>
                            <dd>Suchika Singh</dd>                                    
                        </td>
                    </tr>
                </table>
                </div>
                <div id="re" class="panel" style="top: 30px">
                <h1>Release Engineering Team</h1>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                    	<td valign="top">
							<dd>Charles Antao, Engineering Manager </dd>
							<dd>Naga Samrat Chowdary Narla </dd>
							<dd>Harsh Agarwal </dd>
						</td>
					</tr>
				</table>
				</div>

                <div id="biz" class="panel" style="top:30px;width:400px;height:200px">
               <h1>Product Management, Program Management, Marketing, and Business Team</h1>   
		       <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top" style="overflow-y:auto;">
                            <dd>Tridib Roy Chowdhury, Senior Director of Products </dd>
					        <dd>Ashish Garg, Director, Engineering </dd>
                            <dd>Rakshith Naresh, Sr. Product Manager </dd>
                            <dd>Soumalya Sengupta, Sr Program Manager </dd>
                            <dd>Priyank Shrivastava, Director of Marketing </dd>
							<dd>Kishore Balakrishnan, Sr. Product Marketing Manager </dd>
                            <dd>Elishia Dvorak, Technical Marketing Manager </dd>
                            <dd>Jennifer Diaz, Product Operations Manager </dd>
							<dd>Timothy Pontier,  Product Sales Manager </dd>
                        </td>
                    </tr>
                </table>
                </div>

                <div id="doc" class="panel" style="top:30px;">
                    <h1>Documentation Team</h1>
                    <dd>Sujatha P J, Group Manager </dd>
                    <dd>Saurav Ghosh </dd>
                </div>
                <div id="loc" class="panel" style="top:30px;">
                <h1>Localization Team </h1>
                    <dd>Nandan Jha, Sr Quality Engineering Manager </dd>
                    <dd>Karan Khera, International Quality Engineering Manager </dd>
                    <dd>Rahul Singh, Sr. Program Manager </dd>
                    <dd>Anand Menon, International Engineering Manager </dd>
                    <dd>Sunil Kumar Shah </dd>
                    <dd>Samiksha Agarwal </dd>
                    <dd>Anand Srivastava </dd>

                </div>
                <div id="legal" class="panel" style="top:30px;">
	            <h1>Legal </h1>
					<dd>Deepika Khosla  </dd>
    				<dd>Vijay Nath</dd>
                    <dd>Gopal J. Jha </dd>              
                </div>
                <div id="eet" class="panel" style="top:30px;">
                <h1>Engineering Escalation and Support Team</h1>
				<table border="0" cellpadding="0" cellspacing="0">
                    <tr>
						<td valign="top">
                            <dd>Anit Kumar Panda, Manager, Technical Support </dd>
							<dd>Abhishek Jha </dd>
							<dd>Priyank Shrivastava </dd>
                            <dd>Rahul Upadhyay </dd>
                            <dd>Sandip Halder </dd>
                            <dd>Vikram Kumar </dd>
                        </td>
					</tr>
				</table>
                           
                                
                </div>

                <div id="prodops" class="panel" style="top:30px;">
                <h1>Product Operations, Digital Delivery & Commerce</h1>
               <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                            <dd>Jennifer Diaz </dd>
                            <dd>Stefan Catalin Parvu</dd>
                            <dd>Tricia Macadaeg </dd>
                            <dd>Becky McPherson </dd>
                            <dd>Raluca Gheorghisan </dd>
                            <dd>Kirana K </dd>
                        </td>
                        <td valign="top">
                            <dd>Ranjani Banavar Surashastry </dd>
                            <dd>Suma K </dd>
                            <dd>Rajani L Patil </dd>
                            <dd>Syed Abdul Jaleel  </dd>
                            <dd>Christopher Moehrke </dd>
                        </td>
                    </tr>
                </table>
                </div>

                <div id="webproducers" class="panel" style="top:30px;">
                <h1>Web Producers</h1>
               <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                            <dd>Mayank Krishan </dd>
                            <dd>Astha Kumawat </dd>
                        </td>
                    </tr>
                </table>
                </div>

                <div id="others" class="panel" style="top:30px;">
                <h1>Special Thanks</h1>
               <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top">
                            <dd>All Prerelease participants</dd>
                        </td>
                    </tr>
                </table>
                </div>
</div>


<scriptQβ>
	panels = document.getElementById("parentCredits").getElementsByTagName("div");
	function transitionPanels(index) {
		if(!index || index >= panels.length) {
			index = 0;
		}

		for (i=0;i<panels.length;i++) {
			panels[i].style.display='none';
		}
//		if (typeof(panels[index].filters) == 'object') panels[index].filters.revealTrans.Apply();
		panels[index].style.display='block';
//		if (typeof(panels[index].filters) == 'object') panels[index].filters.revealTrans.Play();

		setTimeout('transitionPanels('+(index+1)+')', 5000);
	}
	transitionPanels();
	/*for testing an individual panel */
	/*for (i=0;i<panels.length;i++) {
			panels[i].style.display='none';
		}
	panels[6].style.display='block';*/
</script>
S metaData Ljava/lang/Object;UV	 W 	FunctionsY 
Properties[ getMetadata ()Ljava/lang/Object; this Lcfaboutcf2ecfm99082409; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value silent1  Lcoldfusion/tagext/io/SilentTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 output9  Lcoldfusion/tagext/io/OutputTag; mode9 module2 $Lcoldfusion/tagext/lang/ImportedTag; mode2 t16 t17 t18 t19 t20 t21 include3 #Lcoldfusion/tagext/lang/IncludeTag; t23 module4 mode4 t26 t27 t28 t29 t30 t31 module5 mode5 t34 t35 t36 t37 t38 t39 module6 mode6 t42 t43 t44 t45 t46 t47 module7 mode7 t50 t51 t52 t53 t54 t55 module8 mode8 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 LineNumberTable java/lang/Throwable² <clinit> 1                      ; <     <    § <    τ <   UV    ]^ b   "     ²X°   a       _`      b   ]     +*+,· **+,Ά ΅ **+,Ά ΅ **+,Ά ΅ !±   a        +_`     +cd    +ef  g^ b  <  D  ΰ*΄ (Ά .L*΄ 2N*΄ (4Ά :*² F-Ά Jΐ L:*Ά PΆ VΆ ZY6 *+Ά ^L**΄ `Ά d*Ά P*f½ hYjSΆ nΈ rΈ xYΈ { W*f½ hYjSΆ nΈ { *΄ !}Ά § *΄ !Ά Ά ?€¨ § :¨ Ώ:*+Ά L©Ά   :¨ #°¨ § #:		Ά ¨ § :
¨ 
Ώ:Ά ©*² 	-Ά Jΐ :*Ά PΆ VΆ  Y6*+’Ά ¦*² «Ά Jΐ ­:*Ά P―±³Ά ·» ΉY½ »Y½SYΏSYΑSYΓS· ΖΆ ΜΆ VΆ ΝY6 5*+Ά ^L+ΟΆ ΤΆ Υ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ &¨°¨ § #:Ά Φ¨ § :¨ Ώ:Ά Χ©+ΩΆ Τ+**΄ !Ά έΈ αΆ Τ+*Ά P*f½ hYγSΆ nΈ αΈ ηΆ Τ+ιΆ Τ+*f½ hYλSΆ nΈ αΆ Τ+*Ά P*Ά οΆ Τ+ρΆ Τ+**΄ Ά έΈ αΆ Τ+σΆ Τ*² ψΆ Jΐ ϊ:*Ά PόΆ ?Ά VΈ :¨<°+Ά Τ+*Ά P**Ά P*Ά	ΆΈΆ Τ+Ά Τ*² «Ά Jΐ ­:*.Ά P―±³Ά ·» ΉY½ »Y½SYSYΑSYS· ΖΆ ΜΆ VΆ ΝY6 6*+Ά ^L+Ά ΤΆ Υ?τ¨ § :¨ Ώ:*+Ά L©Ά   :¨ &¨s°¨ § #:Ά Φ¨ § :¨ Ώ:Ά Χ©+Ά Τ+*½ hYSΆ nΈ αΆ Τ+Ά Τ+*½ hYSΆ nΈ αΆ Τ+Ά Τ*² «Ά Jΐ ­: *:Ά P ―±³Ά · » ΉY½ »Y½SY S· ΖΆ Μ Ά V Ά ΝY6! 6* !+Ά ^L+"Ά Τ Ά Υ?τ¨ § :"¨ "Ώ:#*!+Ά L©# Ά   :$¨ &¨u$°¨ § #:% %Ά Φ¨ § :&¨ &Ώ:' Ά Χ©'+$Ά Τ+*&½ hY(SY*SΆ nΈ αΆ Τ+,Ά Τ*² «Ά Jΐ ­:(*;Ά P(―±³Ά ·(» ΉY½ »Y½SY.S· ΖΆ Μ(Ά V(Ά ΝY6) 6*()+Ά ^L+0Ά Τ(Ά Υ?τ¨ § :*¨ *Ώ:+*)+Ά L©+(Ά   :,¨ &¨,°¨ § #:-(-Ά Φ¨ § :.¨ .Ώ:/(Ά Χ©/+$Ά Τ+*½ hY2SY4SΆ nΈ αΆ Τ+6Ά Τ+*½ hYSΆ nΈ αΆ Τ+8Ά Τ+*½ hYSΆ nΈ αΆ Τ+:Ά Τ+*½ hYSΆ nΈ αΆ Τ+<Ά Τ*² «Ά Jΐ ­:0*FΆ P0―±³Ά ·0» ΉY½ »Y½SY>S· ΖΆ Μ0Ά V0Ά ΝY61 6*01+Ά ^L+@Ά Τ0Ά Υ?τ¨ § :2¨ 2Ώ:3*1+Ά L©30Ά   :4¨ &¨K4°¨ § #:505Ά Φ¨ § :6¨ 6Ώ:70Ά Χ©7+BΆ Τ*² «Ά Jΐ ­:8*WΆ P8―±³Ά ·8» ΉY½ »Y½SYDS· ΖΆ Μ8Ά V8Ά ΝY69 6*89+Ά ^L+FΆ Τ8Ά Υ?τ¨ § ::¨ :Ώ:;*9+Ά L©;8Ά   :<¨ &¨ <°¨ § #:=8=Ά Φ¨ § :>¨ >Ώ:?8Ά Χ©?+HΆ Τ+*½ hYSΆ nΈ αΆ Τ+JΆ ΤΆKωΆN  :@¨ #@°¨ § #:AAΆO¨ § :B¨ BΏ:CΆP©C+RΆ Τ+TΆ Τ° L : ¦ ©³ © ? ©³ / Ι Υ³ Ο ? Υ³ / Ι δ³ Ο ? δ³ Υ α δ³ δ ι δ³x³³mΉΕ³ΏΒΕ³mΉΤ³ΏΒΤ³ΕΡΤ³ΤΩΤ³.1³161³T`³Z]`³To³Z]o³`lo³oto³,/³/4/³R^³X[^³Rm³X[m³^jm³mrm³ψ³³ν:F³@CF³ν:U³@CU³FRU³UZU³:VY³Y^Y³/|³³/|³³³³ύ³!³ς?K³EHK³ς?Z³EHZ³KWZ³Z_Z³Ή°³Ώ°³T°³ZR°³X:°³@|°³?°³E€°³ͺ­°³ΉΏ³ΏΏ³TΏ³ZRΏ³X:Ώ³@|Ώ³?Ώ³E€Ώ³ͺ­Ώ³°ΌΏ³ΏΔΏ³ a  ͺ D  ΰ_`    ΰhi   ΰjV   ΰ / 0   ΰkl   ΰmn   ΰop   ΰqV   ΰrV   ΰsp 	  ΰtp 
  ΰuV   ΰvw   ΰxn   ΰyz   ΰ{n   ΰ|p   ΰ}V   ΰ~V   ΰp   ΰp   ΰV   ΰ   ΰV   ΰz   ΰn   ΰp   ΰV   ΰV   ΰp   ΰp   ΰV   ΰz    ΰn !  ΰp "  ΰV #  ΰV $  ΰp %  ΰp &  ΰV '  ΰz (  ΰn )  ΰp *  ΰV +  ΰV ,  ΰp -  ΰp .  ΰV /  ΰz 0  ΰn 1  ΰp 2  ΰ V 3  ΰ‘V 4  ΰ’p 5  ΰ£p 6  ΰ€V 7  ΰ₯z 8  ΰ¦n 9  ΰ§p :  ΰ¨V ;  ΰ©V <  ΰͺp =  ΰ«p >  ΰ¬V ?  ΰ­V @  ΰ?p A  ΰ―p B  ΰ°V C±  :  D  E  E  E  E  I  I  D  D  D  T  T  T  T  T  T  q  q  q  q  T  T               	  	  	  	  	  	   T   T T ^ ^ " μ μ μ μ λ         ϊ          < < < < 5 J J J J I u u ^ ¦ ¦ ¦ ¦      μ .μ .χ .χ .Ί . 0 0 0 0 0¦ 6¦ 6¦ 6¦ 6₯ 6υ :υ :Γ : : : : : :έ ;έ ;ͺ ;n ;n ;n ;n ;m ; ? ? ? ? ?± E± E± E± E° EΟ EΟ EΟ EΟ EΞ E F Fμ Fβ Wβ W― Ws [s [s [s [r [ υ       b   #     *· 
±   a       _`   ΄  b   g     I>Έ D³ FΈ D³ ©Έ D³ «φΈ D³ ψ» ΉY½ »YZSY½ »SY\SY½ »S· Ζ³X±   a       I_`         "    #