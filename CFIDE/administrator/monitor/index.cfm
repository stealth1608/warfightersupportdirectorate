ΚώΊΎ  -ώ 
SourceFile &/CFIDE/administrator/monitor/index.cfm cfindex2ecfm1323018953  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   SERVERPROTOCOL Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   MULTIMONITORINGSERVERURL   	   
SERVERPORT   	    MONITORINGSERVERENABLED " " 	  $ FLASH_REMOTING_DISABLED & & 	  ( FEATURE_NOT_AVAILABLE_MSG * * 	  , ISSERVERMONITORINGAVAILABLE . . 	  0 AERRORMESSAGES 2 2 	  4 MONITORINGSERVERURL 6 6 	  8 MONITORINGPORT : : 	  < CONTEXTROOT > > 	  @ MONITORINGPROTOCOL B B 	  D LAUNCH_SERVER_MONITOR F F 	  H SERVERIP J J 	  L LAUNCH_MULTISERVER_MONITOR N N 	  P REQUEST R R 	  T BERRORSEXIST V V 	  X SERVERMONITORINGAPI Z Z 	  \ com.macromedia.SourceModTime  h·φ pageContext #Lcoldfusion/runtime/NeoPageContext; a b	  c getOut ()Ljavax/servlet/jsp/JspWriter; e f javax/servlet/jsp/JspContext h
 i g parent Ljavax/servlet/jsp/tagext/Tag; k l	  m Cp1252 o setPageEncoding (Ljava/lang/String;)V q r !coldfusion/runtime/NeoPageContext t
 u s _setCurrentLineNo (I)V w x
  y GetAuthUser ()Ljava/lang/String; { |
  } matches  java/lang/Object  ^\w$  _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;  
   _boolean (Ljava/lang/Object;)Z   coldfusion/runtime/Cast 
   %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag  forName %(Ljava/lang/String;)Ljava/lang/Class;   java/lang/Class 
    	   _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;  
   coldfusion/tagext/net/CookieTag  30 ‘ 
setExpires (Ljava/lang/Object;)V £ €
   ₯ cfcookie § value © CGI « java/lang/String ­ SCRIPT_NAME ― _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ± ²
  ³ _String &(Ljava/lang/Object;)Ljava/lang/String; ΅ Ά
  · _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; Ή Ί
  » setValue ½ r
   Ύ setHttpOnly (Z)V ΐ Α
   Β name Δ cfadmin_lastpage_ Ζ concat &(Ljava/lang/String;)Ljava/lang/String; Θ Ι
 ? Κ setName Μ r
   Ν 	hasEndTag Ο Α coldfusion/tagext/GenericTag Ρ
 ? Π _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z Τ Υ
  Φ $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag Ω Ψ 	  Ϋ coldfusion/tagext/io/SilentTag έ 
doStartTag ()I ί ΰ
 ή α 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; γ δ
  ε http η set ι € coldfusion/runtime/Variable λ
 μ κ SERVER_PORT_SECURE ξ https π SERVER_NAME ς EncodeForHTML τ Ι
  υ SERVER_PORT χ GetContextRoot ω |
  ϊ doAfterBody ό ΰ
 ? ύ _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; ? 
  doEndTag ΰ #javax/servlet/jsp/tagext/TagSupport
 doCatch (Ljava/lang/Throwable;)V	
 ?
 	doFinally 
 ? LOCALE REQUEST.LOCALE en checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
  
LOCALEFILE java/lang/StringBuilder resources/monitor_  r
 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;!"
# .cfm% toString' |
 ( _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V*+
 , false. 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V0
 1 ArrayNew (I)Ljava/util/List;34
 5 _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;78
 9 setArray !(Lcoldfusion/runtime/FastArray;)V;<
 μ= RUNTIME? _resolveA ²
 B isEnabledFlashRemotingD coldfusion/runtime/CFBooleanF t_true Lcoldfusion/runtime/CFBoolean;HI	GJ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTagML 	 O coldfusion/tagext/io/OutputTagQ
R α 
			T _whitespace %(Ljava/io/Writer;Ljava/lang/String;)VVW
 X (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag[Z 	 ] "coldfusion/tagext/lang/ImportedTag_ l10na 
../cftags/c admine :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V Μg
`h &coldfusion/runtime/AttributeCollectionj idl flash_remoting_disabledn varp ([Ljava/lang/Object;)V r
ks setAttributecollection (Ljava/util/Map;)Vuv  coldfusion/tagext/lang/ModuleTagx
yw
y α c
				Flash remoting should be enabled to run either of Server Monitor or Multiserver Monitor.
			| write~ r java/io/Writer

y ύ
y

y 
		
R ύ coldfusion/tagext/QueryLoop



R 
		
		 _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;
  ArrayLen (Ljava/lang/Object;)I
  _Object (D)Ljava/lang/Object;
  _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V
  'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag‘  	 £ !coldfusion/tagext/lang/IncludeTag₯ ../header.cfm§ setTemplate© r
¦ͺ 

	¬ ../include/margintop.cfm? 
	° ../include/errors.cfm² 
<h2 class="pageHeader">΄ pageHeader_clientvars1Ά Server MonitorΈ </h2>

	<br>

Ί _getΌ
 ½ IsServerMonitoringAvailableΏ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;ΑΒ
 Γ ../include/marginbottom.cfmΕ ../footer.cfmΗ %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTagΚΙ 	 Μ coldfusion/tagext/lang/AbortTagΞ 
Π 

? %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTagΥΤ 	 Χ coldfusion/tagext/lang/ParamTagΩ monitoringProtocolΫ
Ϊ Ν Stringή setTypeΰ r
Ϊα 
setDefaultγ €
Ϊδ monitoringPortζ 5500θ monitoringServerEnabledκ monitoringServerUrlμ  ξ multimonitoringServerUrlπ 	componentς cfide.adminapi.servermonitoringτ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;φχ
 ψ isMonitoringServerEnabledϊ getMonitoringServerPortό getMonitoringServerProtocolώ ://  : 0/CFIDE/administrator/monitor/launch-monitor.html ;/CFIDE/administrator/monitor/launch-multiservermonitor.html //CFIDE/administrator/monitor/launch-monitor.cfm :/CFIDE/administrator/monitor/launch-multiservermonitor.cfm
 		

	 servermonitor?
		The Server Monitor is an Adobe Flash application that provides information about ColdFusion server operation. To use the Server Monitor, you must have Adobe Flash Player 9 installed.<br>
		<br>
		Use the buttons at the top of the Server Monitor to do the following:
		&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Monitoring - Turns on all monitoring.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Profiling - Turns on monitoring of all tags, functions, and query execution times.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Start Memory Tracking - Turns on tracking of memory by different scopes. If Profiling is also on, tracks memory used by individual tags, functions, and queries.</td></tr>
		</table>
		<br>
		Memory usage information displayed in the Server Monitor is estimated and may vary from actual memory usage. Use the information as an indicator rather than an absolute measure.<br>
	 
	<br><br>


 X
		
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					 launch_server_monitor Launch Server Monitor "
					<td align="center">
						 0
						<input name="startservermonitor" title=" *" class="buttn-grey" type="button" value=" " onClick="window.open('  ')">
						" %
					</td>
				</tr>
		</table>
$ -
<hr class="line">
	<h2 class="pageHeader">& pageHeader_clientvars2( Multiserver Monitor* </h2>
	<br>
	, remotemonitor._
		The Multiserver Monitor is an Adobe Flash application that you can use to remotely monitor multiple ColdFusion instances. To use the Multiserver Monitor, you must have Adobe Flash Player 9 installed.<br>
		<br>
		Use the tabs at the top of the Multiserver Monitor to do the following:
		&nbsp;&nbsp;&nbsp;&nbsp;<table cellpadding="0" cellspacing="0">
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Quick View - Displays the status of all registered servers in an icon view format.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Detailed View - Displays the status of all registered servers in a tabular format.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Add Server - Displays the registration panel for adding new servers.</td></tr>
			<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;Errors - Displays the last connection error for each registered server.</td></tr>
		</table>
	0 launch_multiserver_monitor2 Launch Multiserver Monitor4 !
					<td align="center">
					6 0
						<input name="startremotemonitor" title="8 +" class="buttn-grey"  type="button" value=": ')">
					< &	
					</td>
				</tr>
		</table>
> 0

<hr class="line">

<h2 class="pageHeader">@ pageHeader_clientvars3B Server ManagerD servermanagerF α
		The Server Manager is an AIR application which allows management of multiple servers.
		You can download this application from the <a href="http://www.adobe.com/go/cf_downloads"> ColdFusion downloads</a> page.
		<br>
	H 	
</body>J metaData Ljava/lang/Object;LM	 N 	FunctionsP 
PropertiesR getMetadata ()Ljava/lang/Object; this Lcfindex2ecfm1323018953; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; cookie0 !Lcoldfusion/tagext/net/CookieTag; silent1  Lcoldfusion/tagext/io/SilentTag; mode1 I t7 Ljava/lang/Throwable; t8 t9 t10 t11 t12 silent2 mode2 t15 t16 t17 t18 t19 t20 output6  Lcoldfusion/tagext/io/OutputTag; mode6 module5 $Lcoldfusion/tagext/lang/ImportedTag; mode5 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 include7 #Lcoldfusion/tagext/lang/IncludeTag; output31 mode31 include8 t39 include9 t41 module10 mode10 t44 t45 t46 t47 t48 t49 output11 mode11 t52 t53 t54 t55 	include12 t57 	include13 t59 abort14 !Lcoldfusion/tagext/lang/AbortTag; t61 param15 !Lcoldfusion/tagext/lang/ParamTag; t63 param16 t65 param17 t67 param18 t69 param19 t71 module20 mode20 t74 t75 t76 t77 t78 t79 module21 mode21 t82 t83 t84 t85 t86 t87 output22 mode22 t90 t91 t92 t93 module23 mode23 t96 t97 t98 t99 t100 t101 module24 mode24 t104 t105 t106 t107 t108 t109 module25 mode25 t112 t113 t114 t115 t116 t117 output26 mode26 t120 t121 t122 t123 module27 mode27 t126 t127 t128 t129 t130 t131 module28 mode28 t134 t135 t136 t137 t138 t139 	include29 t141 	include30 t143 t144 t145 t146 t147 LineNumberTable java/lang/Throwableϋ <clinit> 1                      "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z          Ψ    L    Z         Ι    Τ    LM    TU Y   "     ²O°   X       VW      Y       ί*+,· **+,Ά ΅ **+,Ά ΅ **+,Ά ΅ !**#+,Ά ΅ %**'+,Ά ΅ )**++,Ά ΅ -**/+,Ά ΅ 1**3+,Ά ΅ 5**7+,Ά ΅ 9**;+,Ά ΅ =**?+,Ά ΅ A**C+,Ά ΅ E**G+,Ά ΅ I**K+,Ά ΅ M**O+,Ά ΅ Q**S+,Ά ΅ U**W+,Ά ΅ Y**[+,Ά ΅ ]±   X        ίVW     ίZ[    ί\]  ^U Y  % 
   *΄ dΆ jL*΄ nN*΄ dpΆ v*Ά z**Ά z*Ά ~½ YSΆ Έ  o*² -Ά ΐ  :*Ά z’Ά ¦¨ͺ*¬½ ?Y°SΆ ΄Έ ΈΈ ΌΆ ΏΆ Γ¨ΕΗ*Ά z*Ά ~Ά ΛΈ ΌΆ ΞΆ ΣΈ Χ °*² ά-Ά ΐ ή:*Ά zΆ ΣΆ βY6 *+Ά ζL*΄ θΆ ν*¬½ ?YοSΆ ΄Έ  *΄ ρΆ ν*΄ M*Ά z*¬½ ?YσSΆ ΄Έ ΈΈ φΆ ν*΄ !*¬½ ?YψSΆ ΄Ά ν*΄ A*Ά z*Ά ϋΆ νΆ ώ?¨ § :¨ Ώ:*+ΆL©Ά  :	¨ #	°¨ § #:

Ά¨ § :¨ Ώ:Ά©*² ά-Ά ΐ ή:*@Ά zΆ ΣΆ βY6 /*+Ά ζLΆ ώ?ϋ¨ § :¨ Ώ:*+ΆL©Ά  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©**΄ UΆ*S½ ?YS»Y· *S½ ?YSΆ ΄Έ ΈΆ$&Ά$Ά)Ά-**΄ Y/Ά2*΄ 5*ZΆ z*Ά6Έ:Ά>*[Ά z**S½ ?Y@SΆCE½ Ά Έ *΄ Y²KΆ ν*²P-Ά ΐR:*]Ά zΆ ΣΆSY6 ζ*+UΆY*²^Ά ΐ`:*^Ά zbdfΆi»kY½ YmSYoSYqSYoS·tΆzΆ ΣΆ{Y6 6*+Ά ζL+}ΆΆ?τ¨ § :¨ Ώ:*+ΆL©Ά  :¨ &¨ k°¨ § #:Ά¨ § :¨ Ώ:Ά©*+ΆYΆ? Ά  :¨ #°¨ § #:  Ά¨ § :!¨ !Ώ:"Ά©"*+ΆY**΄ 5½ Y*cΆ z**΄ 5ΆΈcΈS**΄ )ΆΆ*²€-Ά ΐ¦:#*fΆ z#¨Ά«#Ά Σ#Έ Χ °*²P-Ά ΐR:$*hΆ z$Ά Σ$ΆSY6%Ρ*+­ΆY*²€$Ά ΐ¦:&*jΆ z&―Ά«&Ά Σ&Έ Χ :'¨Ζ'°*+±ΆY*²€	$Ά ΐ¦:(*kΆ z(³Ά«(Ά Σ(Έ Χ :)¨)°+΅Ά*²^
$Ά ΐ`:**lΆ z*bdfΆi*»kY½ YmSY·S·tΆz*Ά Σ*Ά{Y6+ 6**++Ά ζL+ΉΆ*Ά?τ¨ § :,¨ ,Ώ:-*++ΆL©-*Ά  :.¨ &¨θ.°¨ § #:/*/Ά¨ § :0¨ 0Ώ:1*Ά©1+»Ά*pΆ z**΄ 1ΆΎΐ*½ ΈΔΈ ;*+±ΆY*²P$Ά ΐR:2*qΆ z2Ά Σ2ΆSY63 +**΄ -ΆΈ ΈΆ2Ά?μ2Ά  :4¨ &¨?4°¨ § #:525Ά¨ § :6¨ 6Ώ:72Ά©7*+±ΆY*²€$Ά ΐ¦:8*rΆ z8ΖΆ«8Ά Σ8Έ Χ :9¨ά9°*+±ΆY*²€$Ά ΐ¦::*sΆ z:ΘΆ«:Ά Σ:Έ Χ :;¨;°*+±ΆY*²Ν$Ά ΐΟ:<*tΆ z<Ά Σ<Έ Χ :=¨j=°*+ΡΆY*+ΣΆY*²Ψ$Ά ΐΪ:>*wΆ z>άΆέ>ίΆβ>θΆε>Ά Σ>Έ Χ :?¨?°*+ΡΆY*²Ψ$Ά ΐΪ:@*xΆ z@ηΆέ@ίΆβ@ιΆε@Ά Σ@Έ Χ :A¨
ΙA°*+ΡΆY*²Ψ$Ά ΐΪ:B*yΆ zBλΆέBίΆβB/ΆεBΆ ΣBΈ Χ :C¨
|C°*+ΡΆY*²Ψ$Ά ΐΪ:D*zΆ zDνΆέDίΆβDοΆεDΆ ΣDΈ Χ :E¨
/E°*+ΡΆY*²Ψ$Ά ΐΪ:F*{Ά zFρΆέFίΆβFοΆεFΆ ΣFΈ Χ :G¨	βG°*+ΡΆY*΄ ]*}Ά z*συΆωΆ ν*΄ %*~Ά z***΄ ]ΆΎϋ½ Ά Ά ν**΄ %ΆΈ  Θ*΄ =* Ά z***΄ ]ΆΎύ½ Ά Ά ν*΄ E* Ά z***΄ ]ΆΎ?½ Ά Ά ν*΄ 9**΄ EΆΈ ΈΆ Λ**΄ MΆΈ ΈΆ ΛΆ Λ**΄ =ΆΈ ΈΆ ΛΆ ΛΆ ν*΄ **΄ EΆΈ ΈΆ Λ**΄ MΆΈ ΈΆ ΛΆ Λ**΄ =ΆΈ ΈΆ ΛΆ ΛΆ ν§ *΄ 9**΄ ΆΈ ΈΆ Λ**΄ MΆΈ ΈΆ ΛΆ Λ**΄ !ΆΈ ΈΆ Λ**΄ AΆΈ ΈΆ Λ	Ά ΛΆ ν*΄ **΄ ΆΈ ΈΆ Λ**΄ MΆΈ ΈΆ ΛΆ Λ**΄ !ΆΈ ΈΆ Λ**΄ AΆΈ ΈΆ ΛΆ ΛΆ ν*+ΆY*²^$Ά ΐ`:H* Ά zHbdfΆiH»kY½ YmSYS·tΆzHΆ ΣHΆ{Y6I 6*HI+Ά ζL+ΆHΆ?τ¨ § :J¨ JΏ:K*I+ΆL©KHΆ  :L¨ &¨L°¨ § #:MHMΆ¨ § :N¨ NΏ:OHΆ©O+Ά* Ά z**S½ ?Y@SΆCE½ Ά Έ +Ά*²^$Ά ΐ`:P*  Ά zPbdfΆiP»kY½ YmSYSYqSYS·tΆzPΆ ΣPΆ{Y6Q 6*PQ+Ά ζL+ΆPΆ?τ¨ § :R¨ RΏ:S*Q+ΆL©SPΆ  :T¨ &¨T°¨ § #:UPUΆ¨ § :V¨ VΏ:WPΆ©W+Ά*²P$Ά ΐR:X* ’Ά zXΆ ΣXΆSY6Y T+Ά+**΄ IΆΈ ΈΆ+Ά+**΄ IΆΈ ΈΆ+!Ά+**΄ 9ΆΈ ΈΆ+#ΆXΆ?²XΆ  :Z¨ &¨ΣZ°¨ § #:[X[Ά¨ § :\¨ \Ώ:]XΆ©]+%Ά+'Ά*²^$Ά ΐ`:^* ͺΆ z^bdfΆi^»kY½ YmSY)S·tΆz^Ά Σ^Ά{Y6_ 6*^_+Ά ζL++Ά^Ά?τ¨ § :`¨ `Ώ:a*_+ΆL©a^Ά  :b¨ &¨b°¨ § #:c^cΆ¨ § :d¨ dΏ:e^Ά©e+-Ά*²^$Ά ΐ`:f* ¬Ά zfbdfΆif»kY½ YmSY/S·tΆzfΆ ΣfΆ{Y6g 6*fg+Ά ζL+1ΆfΆ?τ¨ § :h¨ hΏ:i*g+ΆL©ifΆ  :j¨ &¨<j°¨ § #:kfkΆ¨ § :l¨ lΏ:mfΆ©m+Ά* ΊΆ z**S½ ?Y@SΆCE½ Ά Έ +Ά*²^$Ά ΐ`:n* ΎΆ znbdfΆin»kY½ YmSY3SYqSY3S·tΆznΆ ΣnΆ{Y6o 6*no+Ά ζL+5ΆnΆ?τ¨ § :p¨ pΏ:q*o+ΆL©qnΆ  :r¨ &¨9r°¨ § #:snsΆ¨ § :t¨ tΏ:unΆ©u+7Ά*²P$Ά ΐR:v* ΐΆ zvΆ ΣvΆSY6w T+9Ά+**΄ QΆΈ ΈΆ+;Ά+**΄ QΆΈ ΈΆ+!Ά+**΄ ΆΈ ΈΆ+=ΆvΆ?²vΆ  :x¨ &¨~x°¨ § #:yvyΆ¨ § :z¨ zΏ:{vΆ©{+?Ά+AΆ*²^$Ά ΐ`:|* ΚΆ z|bdfΆi|»kY½ YmSYCS·tΆz|Ά Σ|Ά{Y6} 6*|}+Ά ζL+EΆ|Ά?τ¨ § :~¨ ~Ώ:*}+ΆL©|Ά  :¨ &¨―°¨ § #:|Ά¨ § :¨ Ώ:|Ά©+-Ά*²^$Ά ΐ`:* ΜΆ zbdfΆi»kY½ YmSYGS·tΆzΆ ΣΆ{Y6 6*+Ά ζL+IΆΆ?τ¨ § :¨ Ώ:*+ΆL©Ά  :¨ &¨ η°¨ § #:Ά¨ § :¨ Ώ:Ά©*+­ΆY*²€$Ά ΐ¦:* ηΆ zΖΆ«Ά ΣΈ Χ :¨ °*+±ΆY*²€$Ά ΐ¦:* θΆ zΘΆ«Ά ΣΈ Χ :¨ E°*+ΡΆY$Άς5$Ά  :¨ #°¨ § #:$Ά¨ § :¨ Ώ:$Ά©+KΆ° ¦ ΜQTόTYTό Αtόz}ό Αtόz}όόόΕΪέόέβέόΊύ	ό	όΊύόό	όόQmpόpupόFόόF?ό?ό«?ό?³?όαηόΫηόαδηόαφόΫφόαδφόησφόφϋφόcόόX₯±ό«?±όX₯ΐό«?ΐό±½ΐόΐΕΐόNZόTWZόNiόTWiόZfiόiniό
Ί
Φ
Ωό
Ω
ή
Ωό
―
όόό
―
όόόόό½Ωάόάαάό²?όό²?όόόόOΊΖόΐΓΖόOΊΥόΐΓΥόΖ?ΥόΥΪΥόGcfόfkfό<όό<€ό€ό‘€ό€©€ό+.ό.3.όQ]όWZ]όQlόWZlό]ilόlqlό.1ό161όT`όZ]`όToόZ]oό`loόotoό€όό€*ό*ό'*ό*/*όΈ»ό»ΐ»όήκόδηκόήωόδηωόκφωόωώωόdόόY¦²ό¬―²όY¦Αό¬―Αό²ΎΑόΑΖΑόΗvόΝvό
₯vό«NvόT±vό·ξvότ#vό)wvό}ΔvόΚvό^vόd«vό±
όvό?vόΊvόΐvόQvόWTvόZvόήvόδ¦vό¬
vόHvόNjvόpsvόΗόΝό
₯ό«NόT±ό·ξότ#ό)wό}ΔόΚό^όd«ό±
όό?όΊόΐόQόWTόZόήόδ¦ό¬
όHόNjόpsόvόό X  Κ   VW    _`    ©M    k l   ab   cd   ef   gh   iM   jM 	  kh 
  lh   mM   nd   of   ph   qM   rM   sh   th   uM   vw   xf   yz   {f   |h   }M   ~M   h   h   M   M   h    h !  M "   #  w $  f %   &  M '   (  M )  z *  f +  h ,  M -  M .  h /  h 0  M 1  w 2  f 3  M 4  h 5  h 6  M 7   8  M 9   :  M ;   ‘ <  ’M =  £€ >  ₯M ?  ¦€ @  §M A  ¨€ B  ©M C  ͺ€ D  «M E  ¬€ F  ­M G  ?z H  ―f I  °h J  ±M K  ²M L  ³h M  ΄h N  ΅M O  Άz P  ·f Q  Έh R  ΉM S  ΊM T  »h U  Όh V  ½M W  Ύw X  Ώf Y  ΐM Z  Αh [  Βh \  ΓM ]  Δz ^  Εf _  Ζh `  ΗM a  ΘM b  Ιh c  Κh d  ΛM e  Μz f  Νf g  Ξh h  ΟM i  ΠM j  Ρh k  ?h l  ΣM m  Τz n  Υf o  Φh p  ΧM q  ΨM r  Ωh s  Ϊh t  ΫM u  άw v  έf w  ήM x  ίh y  ΰh z  αM {  βz |  γf }  δh ~  εM   ζM   ηh   θh   ιM   κz   λf   μh   νM   ξM   οh   πh   ρM   ς   σM   τ   υM   φM   χh   ψh   ωM ϊ  ^Χ   #  #  /  /      Q  Q  \  \  \  \                  ;    Ϊ 
 Ϊ 
 Ϊ 
 Ϊ 
 Φ 
 Φ 
 ί  ί  ψ  ψ  ψ  ψ  τ  τ  ί          ύ  ύ # # # #   ? ? ? ? 5 5  §   @4 S4 SK UK UQ UQ UQ UQ Ug Ug UG UG UG UG U: U: Tx Yx Y Z Z Z Z Z Z~ Z~ Z [ [ [ [ [ [ΐ \ΐ \ΐ \ΐ \Ό \Ό \* ^* ^6 ^6 ^τ ^Ζ ]  c  c  c  c  c  c, c, c  c  c2 c2 c2 c2 c2 c2 c c c [T fT f= f° j° j jν kν kΥ kH lH l lή pή pή pή pή pή pή pή p) q) q) q) q( q q r r rΧ sΧ sΏ sό tή pQ wQ wY wY wa wa w9 w x x₯ x₯ x­ x­ x xκ yκ yς yς yϊ yϊ y? y7 z7 z? z? zG zG z z { { { { { {l {Δ }Δ }Η }Η }Γ }Γ }Γ }Γ }Ή }Ϋ ~Ϋ ~Ϊ ~Ϊ ~Ϊ ~Ϊ ~Π ~π π 	
 	
 		 		 		 		 ώ 	+ 	+ 	* 	* 	* 	* 	 	D 	D 	D 	D 	O 	O 	D 	D 	D 	D 	U 	U 	U 	U 	D 	D 	D 	D 	c 	c 	D 	D 	D 	D 	i 	i 	i 	i 	D 	D 	D 	D 	w 	w 	D 	D 	D 	D 	@ 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	£ 	£ 	 	 	 	 	© 	© 	© 	© 	 	 	 	 	· 	· 	 	 	 	 	 	Η 	Η 	Η 	Η 	? 	? 	Η 	Η 	Η 	Η 	Ψ 	Ψ 	Ψ 	Ψ 	Η 	Η 	Η 	Η 	ζ 	ζ 	Η 	Η 	Η 	Η 	μ 	μ 	μ 	μ 	Η 	Η 	Η 	Η 	ϊ 	ϊ 	ϊ 	ϊ 	Η 	Η 	Η 	Η 
 
 	Η 	Η 	Η 	Η 	Γ 
 
 
 
 
  
  
 
 
 
 
& 
& 
& 
& 
 
 
 
 
4 
4 
 
 
 
 
: 
: 
: 
: 
 
 
 
 
H 
H 
H 
H 
 
 
 
 
V 
V 
 
 
 
 
 π Ή |
 
 
g 6 6     ’  ’  ^  b £b £b £b £a £x £x £x £x £w £ £ £ £ £ £2 ’6 , ͺ, ͺτ ͺτ ¬τ ¬Ό ¬ Ί Ίλ Ύλ Ύχ Ύχ Ύ³ Ύ· Α· Α· Α· ΑΆ ΑΝ ΑΝ ΑΝ ΑΝ ΑΜ Αγ Αγ Αγ Αγ Αβ Α ΐ Ί Κ ΚI ΚI ΜI Μ Μσ ησ ηΪ η1 θ1 θ θj h      Y   #     *· 
±   X       VW   ύ  Y        fΈ ³ ΪΈ ³ άNΈ ³P\Έ ³^’Έ ³€ΛΈ ³ΝΦΈ ³Ψ»kY½ YQSY½ SYSSY½ S·t³O±   X       fVW         ^    _