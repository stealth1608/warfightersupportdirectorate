ΚώΊΎ  -Ρ 
SourceFile //CFIDE/administrator/security/cfrdspassword.cfm cfcfrdspassword2ecfm1281112380  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_OLDPASSWORD_ERROR Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FORM   	   AERRORMESSAGES   	    CHECKCSRFTOKEN " " 	  $ PASSWORD_EMPTY_ERROR_RDS & & 	  ( ADMINSUBMIT * * 	  , ISRDSENABLED . . 	  0 REQUEST 2 2 	  4 ERROR_TOGGLE_SETADMINPASSWORD 6 6 	  8 ISADMINROLESAVAILABLE : : 	  < SECURITYCFC > > 	  @ CFCATCH B B 	  D BERRORSEXIST F F 	  H ISRDSPASSWORDSET J J 	  L GETCSRFTOKEN N N 	  P TOKEN R R 	  T PASSWORD_CONFIRM_ERROR V V 	  X RESULT Z Z 	  \ REQUIREPASSWORD ^ ^ 	  ` com.macromedia.SourceModTime  h·0 pageContext #Lcoldfusion/runtime/NeoPageContext; e f	  g getOut ()Ljavax/servlet/jsp/JspWriter; i j javax/servlet/jsp/JspContext l
 m k parent Ljavax/servlet/jsp/tagext/Tag; o p	  q Cp1252 s setPageEncoding (Ljava/lang/String;)V u v !coldfusion/runtime/NeoPageContext x
 y w _setCurrentLineNo (I)V { |
  } GetAuthUser ()Ljava/lang/String;  
   matches  java/lang/Object  ^\w$  _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;  
   _boolean (Ljava/lang/Object;)Z   coldfusion/runtime/Cast 
   %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag  forName %(Ljava/lang/String;)Ljava/lang/Class;   java/lang/Class 
    	   _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;   
  ‘ coldfusion/tagext/net/CookieTag £ 30 ₯ 
setExpires (Ljava/lang/Object;)V § ¨
 € © cfcookie « value ­ CGI ― java/lang/String ± SCRIPT_NAME ³ _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ΅ Ά
  · _String &(Ljava/lang/Object;)Ljava/lang/String; Ή Ί
  » _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; ½ Ύ
  Ώ setValue Α v
 € Β setHttpOnly (Z)V Δ Ε
 € Ζ name Θ cfadmin_lastpage_ Κ concat &(Ljava/lang/String;)Ljava/lang/String; Μ Ν
 ² Ξ setName Π v
 € Ρ 	hasEndTag Σ Ε coldfusion/tagext/GenericTag Υ
 Φ Τ _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z Ψ Ω
  Ϊ ­
<script src="../../../cf_scripts/scripts/ajax/jquery/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="../scripts/util.js"></script>



 ά write ή v java/io/Writer ΰ
 α ί 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag δ γ 	  ζ !coldfusion/tagext/lang/IncludeTag θ pstrength.cfm κ setTemplate μ v
 ι ν i

<script type="text/javascript">
function select(){
	$('.password').pstrength();
}
</script>


 ο SECURITY ρ _resolve σ Ά
  τ isAdminSecurityEnabled φ isAdminUserIdRequired ψ isRootAdminUser ϊ NOTROOTADMIN ό coldfusion/runtime/CFBoolean ώ t_true Lcoldfusion/runtime/CFBoolean; 	 ? _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  	cfinclude template
 GetContextRoot 
  "/CFIDE/administrator/forbidden.cfm %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag 	  coldfusion/tagext/lang/AbortTag LOCALE REQUEST.LOCALE en checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
   
LOCALEFILE" java/lang/StringBuilder$ resources/security_&  v
%( append -(Ljava/lang/String;)Ljava/lang/StringBuilder;*+
%, .cfm. toString0 
 1 false3 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V5
 6 ArrayNew (I)Ljava/util/List;89
 : _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;<=
 > setArray !(Lcoldfusion/runtime/FastArray;)V@A coldfusion/runtime/VariableC
DB (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTagGF 	 I "coldfusion/tagext/lang/ImportedTagK l10nM 
../cftags/O adminQ :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V ΠS
LT &coldfusion/runtime/AttributeCollectionV idX password_confirm_error1Z var\ password_confirm_error^ ([Ljava/lang/Object;)V `
Wa setAttributecollection (Ljava/util/Map;)Vcd  coldfusion/tagext/lang/ModuleTagf
ge 
doStartTag ()Iij
gk 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;mn
 o QPassword could not be changed as the new and confirmation passwords do not match.q doAfterBodysj
gt _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;vw
 x doEndTagzj #javax/servlet/jsp/tagext/TagSupport|
}{ doCatch (Ljava/lang/Throwable;)V
g 	doFinally 
g password_empty_error_rds Password can not be empty. !password_oldpassword_error1_short password_oldpassword_error Old password is incorrect. 	component CFIDE.adminapi.security CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
  set ¨
D isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z
  *coldfusion/runtime/TransientVariableHolder &(Lcoldfusion/runtime/NeoPageContext;)V ‘
 ’  € 	CSRFTOKEN¦ FORM.CSRFTOKEN¨  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Zͺ«
 ¬ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;?―
 ° checkCSRFToken² _autoscalarize΄―
 ΅ SECTABKEYNAME· 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;ΉΊ
 » RDSNEWPASSWORD½ FORM.RDSNEWPASSWORDΏ _Object (Z)Ljava/lang/Object;ΑΒ
 Γ RDS_NEWPASSWORDCONFIRMΕ FORM.RDS_NEWPASSWORDCONFIRMΗ 	ENABLERDSΙ FORM.ENABLERDSΛ CFRDSOLDPASSWORDΝ FORM.CFRDSOLDPASSWORDΟ TrimΡ Ν
 ? Len (Ljava/lang/Object;)IΤΥ
 Φ (I)Ljava/lang/Object;ΑΨ
 Ω _compare (Ljava/lang/Object;D)DΫά
 έ _List $(Ljava/lang/Object;)Ljava/util/List;ίΰ
 α ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zγδ
 ε checkRdsPasswordη Compare '(Ljava/lang/String;Ljava/lang/String;)Iικ
 λ setRdsPasswordν _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;οπ
 ρ RDSAUTHσ FORM.RDSAUTHυ noneχ '(Ljava/lang/Object;Ljava/lang/String;)DΫω
 ϊ setRDSSecurityEnabledό f_falseώ	 ?? username setUseSingleRdsPassword unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; coldfusion/runtime/NeoException
	 t19 [Ljava/lang/String; Any	  findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I
	 bind '(Ljava/lang/String;Ljava/lang/Object;)V
  $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag 	  coldfusion/tagext/io/OutputTag
k 
					! _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V#$
 % error_toggle_setAdminPassword' 2
						Unable to set admin password.<br/>
						) MESSAGE+ D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ΅-
 . EncodeForHTML0 Ν
 1 <br/>
						3 DETAIL5 
				7
t coldfusion/tagext/QueryLoop:
;{
;
 

				? unbindA 
 B _factor2Dπ
 E setRdsEnabledG #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTagJI 	 L coldfusion/tagext/lang/LogTagN auditP setFileR v
OS setApplicationU Ε
OV cflogX textZ User \ S has set RDS authentication type to: Separate user name and password authentication^ setText` v
Oa > has set RDS authentication type to: No authentication needed c passworde @ has set RDS authentication type to: Use a single password only g _factor1iπ
 j getUseSingleRdsPasswordl isRdsEnabledn isRdsPasswordSetp RDSpagenamer pagenamet RDS Passwordv ../header.cfmx )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag{z 	 } #coldfusion/tagext/html/form/FormTag security
 Ρ cfform action 	setAction v
 POST 	setMethod v

k ../include/margintop.cfm ../include/errors.cfm 

<h2 class="pageHeader"> pageHeader_rdspassword L

<div id="rdspassworderrorpanel" name="rdspassworderrorpanel"></div>
RDS 
</h2>

<br>

 
 	
	<p>
		<input name="enableRDS" type="CHECKBOX" class="text" value="true" onclick="showhide('rdstable');" id="enableRDS"  checked 6>

		<label for="enable">
		<label for="enableRDS">‘ disableRDSLabel£ <b>Enable RDS Service</b>₯ O</label><br>
		<div class="spacer10">
		</div>
		<font class="sentance">
		§ enableRDS_desc©
		<span class="admin-tip">
			The ColdFusion RDS service allows you to connect to this server using the RDS password you define below.
			This is intended for development use only. If this is a production machine, leave this option unchecked.
		</span>
		« u
		</font>
	</p>


<div class="spacer20bottom">
</div>





<input type="hidden" name="csrftoken" value="­ getCSRFToken― f">

<b onClick=toggleClass("RDSAuthentication")>
<label for="cfrds_password" class="subheading" >
± cfrds_password³ RDS authentication΅ P</label></b>
<div class="spacer10">
</div>
<span class="RDSAuthentication">
· rds_password_explanationΉ Α
	You should restrict access to RDS to trusted
	users. By default RDS requires authentication. However, you may disable this authentication and
	rely on your web server's security instead.
» 4
</span>
<br/>
<span class="RDSAuthentication">
½ cfrds_username_explanationΏ -
		Select the type of RDS authentication:
	Α _factor3Γπ
 Δ 
</span>
<div class="spacer10"></div>
<table class="RDSAuthentication">
<tr><td>
<input name="RDSAuth" type="RADIO" value="password"
Ζ 
	checked
Θ J
>
<b>
<label for="cfrds_singlepassword" style="margin-right: 30px;">
Κ cfrds_singlepasswordΜ $Use a single password only (default)Ξ </label>
</b>
</td>

Π IsAdminRolesAvailable? A
	<td>
	<input name="RDSAuth" type="RADIO"  value="username"
	Τ 
		checked
	Φ I
	>
	<b>
	<label for="cfrds_usernames" style="margin-right: 30px;">
	Ψ cfrds_usernamesΪ FSeparate user name and password authentication (allows multiple users)ά </label>
	</b>
	</td>
ή T
</td>
<td>
<input name="RDSAuth" type="RADIO" value="None" id="cfrds_password"
ΰ isRDSSecurityEnabledβ L
>
<b>
<label for="cfrds_securitydisabled" style="margin-right: 30px;">
δ cfrds_securitydisabledζ *No authentication needed (not recommended)θ #</label>
</b>
</td>
</table>

κ &
<table id="rdstable" width="100%">
μ <
<table id="rdstable"  style="display:none" width="100%">
ξ Ώ
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td height="20px"></td></tr>
<tr>
	<td>
		<b class="subheading" onClick=toggleClass("rdsSinglePassword")>π rds_passς RDS Single Passwordτ _factor4φπ
 χ </b>
	</td>
</tr>
</table>

<p>
<div class="rdsSinglePassword admin-tip" style="margin-top: 10px; display: inline-block;">
ω 
ϋ rds_superpassword_explanationύ Y
	To change the single RDS password, enter old password, new password and then confirm
? rds_superpassword_explanation2 K
	To change the single RDS password, enter new password and then confirm
 d
</div>
</p>


<table border="0" cellpadding="0" cellspacing="0" class="rdsSinglePassword">

 z
<tr><td height="20px" colspan="2"></td></tr>
<tr><td width="150px">
<label for="cfrdsoldpassword" class="labelbold">
 rdsN_oldpassword	 Old Password Ό</label></td><td>
<input name="cfrdsoldpassword" id="cfrdsoldpassword" type="PASSWORD" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%"></td></tr>
 l

<tr><td height="20px" colspan="2"></td></tr>
<tr><td>
<label for="rdsNewpassword" class="labelbold">
 rdsNewpassword New Password<</label></td><td>
<input name="rdsNewpassword" id="rdsNewpassword" class="password" type="PASSWORD" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%">
</td></tr>
<tr><td height="20px" colspan="2"></td></tr>
<tr><td>
<label for="rdsN_NewpasswordConfirm" class="labelbold">
 rdsN_NewpasswordConfirm Confirm Password _factor5π
  ω</label></td>
<td>
<input name="rds_NewpasswordConfirm" id="rds_NewpasswordConfirm" type="PASSWORD" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off" style="width:99%">
<tr><td height="20px"></td></tr>
<tr>
<td></td>
<td>
 cfadmin_passwordlength  (50-character limit.)" B</td></tr></table>

</td>
</tr>
<table class="submit-table">
$ ../include/buttonbar.cfm& 
</table>
</table>
( _factor6*π
 + 
	  
- ../include/marginbottom.cfm/ ../footer.cfm1
t
{

 _factor77π
 8 metaData Ljava/lang/Object;:;	 < 	Functions> 
Properties@ getMetadata ()Ljava/lang/Object; this  Lcfcfrdspassword2ecfm1281112380; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; 	include16 #Lcoldfusion/tagext/lang/IncludeTag; 	include17 module18 $Lcoldfusion/tagext/lang/ImportedTag; mode18 I t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output35  Lcoldfusion/tagext/io/OutputTag; mode35 t16 t17 t18 module33 mode33 t21 t22 t23 t24 t25 t26 	include34 t28 t29 t30 t31 t32 LineNumberTable java/lang/Throwabler cookie0 !Lcoldfusion/tagext/net/CookieTag; include1 include2 abort3 !Lcoldfusion/tagext/lang/AbortTag; module6 mode6 t14 t15 module7 mode7 t20 module8 mode8 t27 module14 mode14 t34 t35 t36 t37 t38 t39 	include15 form38 %Lcoldfusion/tagext/html/form/FormTag; mode38 t43 	include36 t45 	include37 t47 t48 t49 t50 t51 t52 t53 log11 Lcoldfusion/tagext/lang/LogTag; log12 log13 runPage module24 mode24 t6 t7 module25 mode25 module26 mode26 module27 mode27 t33 module28 mode28 module29 mode29 module30 mode30 module31 mode31 module32 mode32 t40 t41 t42 t4 ,Lcoldfusion/runtime/TransientVariableHolder; t5 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output10 mode10 module9 mode9 !coldfusion/runtime/AbortExceptionΒ java/lang/ExceptionΔ <clinit> module19 mode19 module20 mode20 module21 mode21 module22 mode22 module23 mode23 1                      "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^          γ        F           I    z    :;    BC G   "     ²=°   F       DE      G       λ*+,· **+,Ά ΅ **+,Ά ΅ **+,Ά ΅ !**#+,Ά ΅ %**'+,Ά ΅ )**++,Ά ΅ -**/+,Ά ΅ 1**3+,Ά ΅ 5**7+,Ά ΅ 9**;+,Ά ΅ =**?+,Ά ΅ A**C+,Ά ΅ E**G+,Ά ΅ I**K+,Ά ΅ M**O+,Ά ΅ Q**S+,Ά ΅ U**W+,Ά ΅ Y**[+,Ά ΅ ]**_+,Ά ΅ a±   F        λDE     λHI    λJK     G   #     *· 
±   F       DE   *π G  ~  !  Ψ*² η+Ά ’ΐ ι:* ©Ά ~Ά ξΆ ΧΈ Ϋ °*² η+Ά ’ΐ ι:* ͺΆ ~Ά ξΆ ΧΈ Ϋ °,Ά β*²J+Ά ’ΐL:* ¬Ά ~NPRΆU»WY½ YYSYS·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:	*,ΆyM©	Ά~  :
¨ #
°¨ § #:Ά¨ § :¨ Ώ:Ά©,Ά β*²#+Ά ’ΐ:* ΄Ά ~Ά ΧΆ Y6S*,·Ε¦ :¨q°*,·ψ¦ :¨]°*,·¦ :¨I°,Ά β*²J!Ά ’ΐL:*EΆ ~NPRΆU»WY½ YYSY!S·bΆhΆ ΧΆlY6 6*,ΆpM,#Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ &¨ §°¨ § #:Ά¨ § :¨ Ώ:Ά©,%Ά β*² η"Ά ’ΐ ι:*JΆ ~'Ά ξΆ ΧΈ Ϋ :¨ D°,)Ά βΆ9ώ³Ά<  :¨ #°¨ § #:Ά=¨ § :¨ Ώ: Ά>© *°   ΅ Ρ Τs Τ Ω Τs ͺ τ s ϊ ύ s ͺ τs ϊ ύs ssδ ssΩ&2s,/2sΩ&As,/As2>AsAFAsC\ΆsbpΆsvΆs&Άs,ΆsͺΆs°³ΆsC\ΕsbpΕsvΕs&Εs,ΕsͺΕs°³ΕsΆΒΕsΕΚΕs F  L !  ΨDE    ΨL p   ΨMN   Ψ ­;   ΨOP   ΨQP   ΨRS   ΨTU   ΨVW   ΨX; 	  ΨY; 
  ΨZW   Ψ[W   Ψ\;   Ψ]^   Ψ_U   Ψ`;   Ψa;   Ψb;   ΨcS   ΨdU   ΨeW   Ψf;   Ψg;   ΨhW   ΨiW   Ψj;   ΨkP   Ψl;   Ψm;   ΨnW   ΨoW   Ψp;  q   B   ©  ©   © F ͺ F ͺ . ͺ  ¬  ¬ c ¬ΙEΙEErJrJYJ' ΄ 7π G  ? 
 6  z*Ά ~**Ά ~*Ά ½ YSΆ Έ  m*² +Ά ’ΐ €:*Ά ~¦Ά ͺ¬?*°½ ²Y΄SΆ ΈΈ ΌΈ ΐΆ ΓΆ Η¬ΙΛ*Ά ~*Ά Ά ΟΈ ΐΆ ?Ά ΧΈ Ϋ °,έΆ β*² η+Ά ’ΐ ι:*
Ά ~λΆ ξΆ ΧΈ Ϋ °,πΆ β*Ά ~**3½ ²YςSΆ υχ½ Ά YΈ  #W*Ά ~**3½ ²YςSΆ υω½ Ά Έ  £*Ά ~**3½ ²YςSΆ υϋ½ Ά Έ  |*3½ ²YύS²Ά*² η+Ά ’ΐ ι:*Ά ~	*Ά ~*ΆΆ ΟΈ ΐΆ ξΆ ΧΈ Ϋ °*²+Ά ’ΐ:*Ά ~Ά ΧΈ Ϋ °**΄ 5Ά!*3½ ²Y#S»%Y'·)*3½ ²YSΆ ΈΈ ΌΆ-/Ά-Ά2Ά**΄ I4Ά7*΄ !**Ά ~*Ά;Έ?ΆE*²J+Ά ’ΐL:*,Ά ~NPRΆU»WY½ YYSY[SY]SY_S·bΆhΆ ΧΆlY6	 6*	,ΆpM,rΆ βΆu?τ¨ § :
¨ 
Ώ:*	,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©*²J+Ά ’ΐL:*-Ά ~NPRΆU»WY½ YYSYSY]SYS·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©*²J+Ά ’ΐL:*/Ά ~NPRΆU»WY½ YYSYSY]SYS·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©*΄ A*0Ά ~*ΆΆ**΄ -Ά +*+,·F¦ °**΄ IΆΆΈ  *+,·k¦ °*΄ a* Ά ~**3½ ²YςSΆ υm½ Ά Ά*΄ 1* Ά ~**3½ ²YςSΆ υo½ Ά Ά*΄ M* Ά ~**3½ ²YςSΆ υq½ Ά Ά*²J+Ά ’ΐL: * £Ά ~ NPRΆU »WY½ YYSYsSY]SYuS·bΆh Ά Χ ΆlY6! 6* !,ΆpM,wΆ β Άu?τ¨ § :"¨ "Ώ:#*!,ΆyM©# Ά~  :$¨ #$°¨ § #:% %Ά¨ § :&¨ &Ώ:' Ά©'*² η+Ά ’ΐ ι:(* €Ά ~(yΆ ξ(Ά Χ(Έ Ϋ °*²~&+Ά ’ΐ:)* ¨Ά ~)Ά)*°½ ²Y΄SΆ ΈΈ ΌΈ ΐΆ)Ά)Ά Χ)ΆY6* ΐ*)*,ΆpM*),·,¦ :+¨ ¨ Ρ+°*,.Ά&*² η$)Ά ’ΐ ι:,*OΆ ~,0Ά ξ,Ά Χ,Έ Ϋ :-¨ X¨ -°*² η%)Ά ’ΐ ι:.*PΆ ~.2Ά ξ.Ά Χ.Έ Ϋ :/¨ ¨ W/°)Ά3?j¨ § :0¨ 0Ώ:1**,ΆyM©1)Ά4  :2¨ #2°¨ § #:3)3Ά5¨ § :4¨ 4Ώ:5)Ά6©5*° 1wsslΆΒsΌΏΒslΆΡsΌΏΡsΒΞΡsΡΦΡs?[^s^c^s4~ss4~ssss#&s&+&sόFRsLORsόFasLOasR^asafas?±s±Ά±sΡέsΧΪέsΡμsΧΪμsέιμsμρμs,s€ί,sε,s),s,1,sxXs€ίXsεXsLXsRUXsxgs€ίgsεgsLgsRUgsXdgsglgs F   6  zDE    zL p   zMN   z ­;   ztu   zvP   zwP   zxy   zzS   z{U 	  zYW 
  zZ;   z[;   z\W   z|W   z};   z~S   zU   zbW   z;   z;   zeW   zfW   zg;   zS   zU   zjW   z;   zl;   zmW   znW   zo;   zS    zU !  zW "  z; #  z; $  zW %  zW &  z; '  zP (  z )  zU *  z; +  zP ,  z; -  zP .  z; /  zW 0  z; 1  z; 2  zW 3  zW 4  z; 5q   ¦             8  8  C  C  C  C  h  h  o  o  o  o  h  h  #      © 
 © 
  
 Κ  Κ  Κ  Κ  ρ  ρ  ρ  ρ  Κ  Κ       C C C C 7 7 k k k k o o k k I    Κ » #» #? %? %Ψ %Ψ %Ψ %Ψ %ξ %ξ %Ξ %Ξ %Ξ %Ξ %Α %Α $? )? ) * * * * * * * *P ,P ,\ ,\ , , - -$ -$ -β -ΰ /ΰ /μ /μ /ͺ /} 0} 0 0 0| 0| 0| 0| 0r 0r 0 3 3 3 3 3 3               3Η Η Η Η Ό Ό ο ο ο ο δ δ       k £k £w £w £4 £ € €ύ €C ¨C ¨Q ¨Q ¨Q ¨Q ¨l ¨l ¨ΕOΕO¬OώPώPεP+ ¨ οπ G  Z    φ*΄ U₯Ά**΄ §©Ά­ *΄ U*½ ²Y§SΆ ΈΆ*>Ά ~**΄ %Ά±³*½ Y**΄ UΆΆSY*3½ ²YΈSΆ ΈSΈΌW**΄ ΎΐΆ­ΈΔYΈ  W**΄ ΖΘΆ­ΈΔΈ ]**΄ ΚΜΆ­ΈΔYΈ  W**΄ ΞΠΆ­ΈΔYΈ  :W*EΆ ~*EΆ ~*½ ²YΎSΆ ΈΈ ΌΈΣΈΧΈΪΈή~ΈΔΈ  **΄ I²Ά*HΆ ~**΄ !ΆΆΈβ**΄ )ΆΆΈζW**΄ ΚΜΆ­ΈΔYΈ  W**΄ ΞΠΆ­ΈΔYΈ  8W*JΆ ~*JΆ ~*½ ²YΎSΆ ΈΈ ΌΈΣΈΧΈΪΈή~ΈΔYΈ  8W*JΆ ~***΄ AΆ±θ½ Y*½ ²YΞSΆ ΈSΆ Έ ΈΔΈ  **΄ I²Ά*MΆ ~**΄ !ΆΆΈβ**΄ ΆΆΈζW*PΆ ~*½ ²YΎSΆ ΈΈ Ό*½ ²YΖSΆ ΈΈ ΌΈμΈΪΈή~ **΄ I²Ά*UΆ ~**΄ !ΆΆΈβ**΄ YΆΆΈζW**΄ IΆΆΈ ΈΔYΈ  8W*XΆ ~*XΆ ~*½ ²YΎSΆ ΈΈ ΌΈΣΈΧΈΪΈή~ΈΔΈ  <*[Ά ~***΄ AΆ±ξ½ Y*[Ά ~*½ ²YΎSΆ ΈΈ ΌΈΣSΆ W*°   F   *   φDE    φL p   φMN   φ ­; q  "  9  9  9  9   9  :  :  :  :  :  :  :  : 
 : 
 :  <  <  <  <  < 
 : 8 > 8 > J > J > U > U > 8 > 8 > 8 > k C k C k C k C o C o C r C r C j C j C j C j C  C  C  C  C  C  C  C  C  C  C  C  C j C j C  E  E  E  E  E  E ’ E ’ E  E  E  E  E ΄ E ΄ E ΄ E ΄ E Έ E Έ E » E » E ³ E ³ E ³ E ³ E ³ E ³ E ³ E ³ E  E  E  E  E Ϊ E Ϊ E Ϊ E Ϊ E Ϊ E Ϊ E Ϊ E Ϊ E φ E φ E Ϊ E Ϊ E Ϊ E Ϊ E  E  E G G G G
 G H H H H% H% H H H H  E2 J2 J2 J2 J6 J6 J9 J9 J1 J1 J1 J1 JK JK JK JK JO JO JR JR JJ JJ JJ JJ J1 J1 J1 J1 Jo Jo Jo Jo Jo Jo Jo Jo J J Jo Jo Jo Jo J1 J1 J1 J1 J¦ J¦ J· J· J₯ J₯ J₯ J₯ J₯ J₯ J₯ J₯ J1 J1 Jέ Lέ Lέ Lέ LΩ Lι Mι Mι Mι Mτ Mτ Mι Mι Mι M1 J P P P P P P P P P P2 P2 P P P P P P PF TF TF TF TB TR UR UR UR U] U] UR UR UR U Pi Xi Xi Xi Xi Xi Xi Xi X X X X X X X X X© X© X X X X Xi Xi XΒ [Β [Ω [Ω [Ω [Ω [Ω [Ω [Α [Α [Α [i X j C iπ G  Ζ    D**΄ ΚΜΆ­ '* Ά ~***΄ AΆ±H½ Y²SΆ W§ $* Ά ~***΄ AΆ±H½ Y² SΆ W**΄ τφΆ­ΈΔYΈ  #W*½ ²YτSΆ ΈΈϋ~ΈΔΈ  j*²M+Ά ’ΐO:* Ά ~QΆTΆWY[»%Y]·)* Ά ~*Ά Ά-_Ά-Ά2Έ ΐΆbΆ ΧΈ Ϋ °§J**΄ τφΆ­ΈΔYΈ  #W*½ ²YτSΆ ΈψΈϋ~ΈΔΈ  j*²M+Ά ’ΐO:* Ά ~QΆTΆWY[»%Y]·)* Ά ~*Ά Ά-dΆ-Ά2Έ ΐΆbΆ ΧΈ Ϋ °§ ₯**΄ τφΆ­ΈΔYΈ  #W*½ ²YτSΆ ΈfΈϋ~ΈΔΈ  g*²M+Ά ’ΐO:* Ά ~QΆTΆWY[»%Y]·)* Ά ~*Ά Ά-hΆ-Ά2Έ ΐΆbΆ ΧΈ Ϋ °*°   F   H   DDE    DL p   DMN   D ­;   D   D   D q  "                            *  *          =  =  N  N  <  <  <  <  5     W  W  W  W  [  [  ^  ^  V  V  V  V  o  o      o  o  o  o  V  V  ¬  ¬  Δ  Δ  Ρ  Ρ  Ρ  Ρ  Ψ  Ψ  ΐ  ΐ    ό  ό  ό  ό        ϋ  ϋ  ϋ  ϋ   $ $      ϋ  ϋ Q Q i i v v v v } } e e 9 ‘ ‘ ‘ ‘ ₯ ₯ ¨ ¨         Ή Ή Ι Ι Ή Ή Ή Ή     φ φ       " " 
 
 ή    ϋ  V  C G   l     $*΄ hΆ nL*΄ rN*΄ htΆ z*-+·9¦ °°   F   *    $DE     $MN    $ ­;    $ o p q       φπ G  σ  $  Χ,ΗΆ β**΄ aΆΆΈ  
,ΙΆ β,ΛΆ β*²J+Ά ’ΐL:* νΆ ~NPRΆU»WY½ YYSYΝS·bΆhΆ ΧΆlY6 6*,ΆpM,ΟΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:		Ά¨ § :
¨ 
Ώ:Ά©,ΡΆ β* ρΆ ~**΄ =Ά±Σ*½ ΈΌΈ  μ,ΥΆ β**΄ aΆΆΈ  
,ΧΆ β,ΩΆ β*²J+Ά ’ΐL:* ϊΆ ~NPRΆU»WY½ YYSYΫS·bΆhΆ ΧΆlY6 6*,ΆpM,έΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©,ίΆ β,αΆ β*Ά ~**3½ ²YςSΆ υγ½ Ά Έ  
,ΙΆ β,εΆ β*²J+Ά ’ΐL:*Ά ~NPRΆU»WY½ YYSYηS·bΆhΆ ΧΆlY6 6*,ΆpM,ιΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©,λΆ β**΄ 1ΆΆΈ  ,νΆ β§ 
,οΆ β,ρΆ β*²J+Ά ’ΐL:*Ά ~NPRΆU»WY½ YYSYσS·bΆhΆ ΧΆlY6 6*,ΆpM,υΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  : ¨ # °¨ § #:!!Ά¨ § :"¨ "Ώ:#Ά©#*°   u  s   s j ΄ ΐs Ί ½ ΐs j ΄ Οs Ί ½ Οs ΐ Μ Οs Ο Τ Οs~s’ss½ΙsΓΖΙss½ΨsΓΖΨsΙΥΨsΨέΨss€suΏΛsΕΘΛsuΏΪsΕΘΪsΛΧΪsΪίΪsjss_©΅s―²΅s_©Δs―²Δs΅ΑΔsΔΙΔs F  j $  ΧDE    ΧL p   ΧMN   Χ ­;   Χ S   Χ‘U   Χ’W   Χ£;   ΧV;   ΧXW 	  ΧYW 
  ΧZ;   Χ€S   Χ₯U   Χ|W   Χ};   Χ`;   ΧaW   ΧbW   Χ;   Χ¦S   Χ§U   ΧfW   Χg;   Χh;   ΧiW   ΧjW   Χ;   Χ¨S   Χ©U   ΧnW   Χo;   Χp;    ΧͺW !  ΧW "  Χ; #q    &  η  η  η Z ν Z ν # ν ξ ρ ξ ρ ξ ρ ξ ρ τ τ τ τ τ τ τc ϊc ϊ, ϊ ξ ρώώώώώώώee.ςς
ςOO π G    ,  ,ϊΆ β**΄ MΆΆΈ  Σ*,όΆ&*²J+Ά ’ΐL:*Ά ~NPRΆU»WY½ YYSYώS·bΆhΆ ΧΆlY6 6*,ΆpM, Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:		Ά¨ § :
¨ 
Ώ:Ά©*,όΆ&§ Π*,όΆ&*²J+Ά ’ΐL:*#Ά ~NPRΆU»WY½ YYSYS·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©*,όΆ&,Ά β**΄ MΆΆΈ  Ξ,Ά β*²J+Ά ’ΐL:*1Ά ~NPRΆU»WY½ YYSY
S·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©,Ά β,Ά β*²J+Ά ’ΐL:*8Ά ~NPRΆU»WY½ YYSYS·bΆhΆ ΧΆlY6 6*,ΆpM,Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  : ¨ # °¨ § #:!!Ά¨ § :"¨ "Ώ:#Ά©#,Ά β*²J +Ά ’ΐL:$*>Ά ~$NPRΆU$»WY½ YYSYS·bΆh$Ά Χ$ΆlY6% 6*$%,ΆpM,Ά β$Άu?τ¨ § :&¨ &Ώ:'*%,ΆyM©'$Ά~  :(¨ #(°¨ § #:)$)Ά¨ § :*¨ *Ώ:+$Ά©+*° ( o  s   s d ? Ίs ΄ · Ίs d ? Ιs ΄ · Ιs Ί Ζ Ιs Ι Ξ Ιs?[^s^c^s4~ss4~ssss <?s?D?s_ksehks_zsehzskwzszzsλ
s

sΰ*6s036sΰ*Es03Es6BEsEJEs―ΛΞsΞΣΞs€ξϊsτχϊs€ξ	sτχ	sϊ	s		s F  Ί ,  DE    L p   MN    ­;   «S   ¬U   ’W   £;   V;   XW 	  YW 
  Z;   ­S   ?U   |W   };   `;   aW   bW   ;   ―S   °U   fW   g;   h;   iW   jW   ;   ±S   ²U   nW   o;   p;    ͺW !  W "  ; #  ³S $  ΄U %  W &  ; '  ΅; (  ΆW )  ·W *  ; +q   Z    T T $#$# ν# ε" Ή-Ή-11Ξ1Ή-Π8Π88>>]> Dπ G  1    w» Y*΄ h·£:*+,·ς¦ :¨R°**΄ IΆΆΈ !**΄ τφΆ­ΈΔYΈ  #W*½ ²YτSΆ ΈψΈϋ~ΈΔΈ  3*cΆ ~**3½ ²YςSΆ υύ½ Y² SΆ W§ **eΆ ~**3½ ²YςSΆ υύ½ Y²SΆ W**΄ τφΆ­ΈΔYΈ  #W*½ ²YτSΆ ΈΈϋ~ΈΔΈ  3*jΆ ~**3½ ²YςSΆ υ½ Y² SΆ W§ **nΆ ~**3½ ²YςSΆ υ½ Y²SΆ W¨§$:Ώ:Έ
:²Έͺ   ρ           CΆ*΄ I²Ά*²
+Ά ’ΐ:	*vΆ ~	Ά Χ	Ά Y6
=*,"Ά&*²J		Ά ’ΐL:*wΆ ~NPRΆU»WY½ YYSY(SY]SY(S·bΆhΆ ΧΆlY6 *,ΆpM,*Ά β,*yΆ ~**΄ E½ ²Y,SΆ/Έ ΌΈ2Ά β,4Ά β,*zΆ ~**΄ E½ ²Y6SΆ/Έ ΌΈ2Ά β*,"Ά&Άu?‘¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ )¨ q¨ Ή°¨ § #:Ά¨ § :¨ Ώ:Ά©*,8Ά&	Ά9ώΙ	Ά<  :¨ &¨ n°¨ § #:	Ά=¨ § :¨ Ώ:	Ά>©*,@Ά&*΄ ]*~Ά ~**΄ !ΆΆΈβ**΄ 9ΆΆΈζΈΔΆ§ Ώ¨ § :¨ Ώ:ΆC©*° ss³ΏsΉΌΏs³ΞsΉΌΞsΏΛΞsΞΣΞsͺ³
sΉώ
s
sͺ³sΉώss
ss  TΓ  QTΓ  YΕ  QYΕ  ds  QdsT³dsΉώdsadsdids F   ό   wDE    wL p   wMN   w ­;   wΈΉ   wΊ;   w’»   w£Ό   w½W   wΎ^ 	  wΏU 
  wΐS   wΑU   w\W   w|;   w};   w`W   waW   wb;   w;   wW   weW   wf;   wgW   wh; q  Φ u   _   _   _   _   _   _ 1 a 1 a 1 a 1 a 5 a 5 a 8 a 8 a 0 a 0 a 0 a 0 a I a I a Y a Y a I a I a I a I a 0 a 0 a  c  c t c t c t c · e · e  e  e  e 0 a ΐ h ΐ h ΐ h ΐ h Δ h Δ h Η h Η h Ώ h Ώ h Ώ h Ώ h Ψ h Ψ h θ h θ h Ψ h Ψ h Ψ h Ψ h Ώ h Ώ h j j j j jF nF n- n- n- n Ώ h   _  6 u u u u u uτ wτ w  w  w3 y3 y3 y3 y3 y3 y3 y3 y, y\ z\ z\ z\ z\ z\ z\ z\ zU z½ w v< ~< ~< ~< ~G ~G ~< ~< ~< ~< ~2 ~2 ~   5 Ζ  G        sΈ ³ εΈ ³ ηΈ ³HΈ ³J½ ²YS³Έ ³KΈ ³M|Έ ³~»WY½ Y?SY½ SYASY½ S·b³=±   F       sDE   Γπ G  ­  ,  -,Ά β**΄ 1ΆΆΈ  
, Ά β,’Ά β*²J+Ά ’ΐL:* ΊΆ ~NPRΆU»WY½ YYSY€S·bΆhΆ ΧΆlY6 6*,ΆpM,¦Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:		Ά¨ § :
¨ 
Ώ:Ά©,¨Ά β*²J+Ά ’ΐL:* ΎΆ ~NPRΆU»WY½ YYSYͺS·bΆhΆ ΧΆlY6 6*,ΆpM,¬Ά βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©,?Ά β,* ΟΆ ~**΄ QΆ±°*½ Y*3½ ²YΈSΆ ΈSΈΌΈ ΌΆ β,²Ά β*²J+Ά ’ΐL:* ΣΆ ~NPRΆU»WY½ YYSY΄S·bΆhΆ ΧΆlY6 6*,ΆpM,ΆΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  :¨ #°¨ § #:Ά¨ § :¨ Ώ:Ά©,ΈΆ β*²J+Ά ’ΐL:* ΧΆ ~NPRΆU»WY½ YYSYΊS·bΆhΆ ΧΆlY6 6*,ΆpM,ΌΆ βΆu?τ¨ § :¨ Ώ:*,ΆyM©Ά~  : ¨ # °¨ § #:!!Ά¨ § :"¨ "Ώ:#Ά©#,ΎΆ β*²J+Ά ’ΐL:$* ίΆ ~$NPRΆU$»WY½ YYSYΐS·bΆh$Ά Χ$ΆlY6% 6*$%,ΆpM,ΒΆ β$Άu?τ¨ § :&¨ &Ώ:'*%,ΆyM©'$Ά~  :(¨ #(°¨ § #:)$)Ά¨ § :*¨ *Ώ:+$Ά©+*° ( u  s   s j ΄ ΐs Ί ½ ΐs j ΄ Οs Ί ½ Οs ΐ Μ Οs Ο Τ Οs9UXsX]Xs.xs~s.xs~sss8TWsW\Ws-ws}s-ws}sssόs sρ;GsADGsρ;VsADVsGSVsV[Vsΐάίsίδίs΅?ss΅?ssss F  Ί ,  -DE    -L p   -MN   - ­;   -ΗS   -ΘU   -’W   -£;   -V;   -XW 	  -YW 
  -Z;   -ΙS   -ΚU   -|W   -};   -`;   -aW   -bW   -;   -ΛS   -ΜU   -fW   -g;   -h;   -iW   -jW   -;   -ΝS   -ΞU   -nW   -o;   -p;    -ͺW !  -W "  -; #  -ΟS $  -ΠU %  -W &  -; '  -΅; (  -ΆW )  -·W *  -; +q   n   ·  ·  · Z Ί Z Ί # Ί Ύ Ύ η Ύ³ Ο³ ΟΕ ΟΕ Ο³ Ο³ Ο³ Ο³ Ο« Ο Σ Σζ Σα Χα Χͺ Χ₯ ί₯ ίn ί       b    c