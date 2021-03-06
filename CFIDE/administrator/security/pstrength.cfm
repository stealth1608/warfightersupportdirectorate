ΚώΊΎ  -` 
SourceFile +/CFIDE/administrator/security/pstrength.cfm cfpstrength2ecfm561600020  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_STRONG Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   PASSWORD_VERY_WEAK   	   PASSWORD_WEAK   	    PASSWORD_VERY_STRONG " " 	  $ PASSWORD_TOO_SHORT & & 	  ( PASSWORD_UNSAFE * * 	  , PASSWORD_MEDIUM . . 	  0 com.macromedia.SourceModTime  h·2 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A Cp1252 C setPageEncoding (Ljava/lang/String;)V E F !coldfusion/runtime/NeoPageContext H
 I G (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag M forName %(Ljava/lang/String;)Ljava/lang/Class; O P java/lang/Class R
 S Q K L	  U _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; W X
  Y "coldfusion/tagext/lang/ImportedTag [ _setCurrentLineNo (I)V ] ^
  _ l10n a 
../cftags/ c admin e setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V g h
 \ i &coldfusion/runtime/AttributeCollection k java/lang/Object m id o password_very_weak q var s ([Ljava/lang/Object;)V  u
 l v setAttributecollection (Ljava/util/Map;)V x y  coldfusion/tagext/lang/ModuleTag {
 | z 	hasEndTag (Z)V ~  coldfusion/tagext/GenericTag 
   
doStartTag ()I  
 |  	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;  
   	Very Weak  write  F java/io/Writer 
   doAfterBody  
 |  _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;  
   doEndTag   #javax/servlet/jsp/tagext/TagSupport 
   doCatch (Ljava/lang/Throwable;)V   
 | ‘ 	doFinally £ 
 | € password_weak ¦ Weak ¨ password_medium ͺ Medium ¬ password_strong ? Strong ° password_very_strong ² Very Strong ΄ password_unsafe Ά Unsafe Password Έ password_too_short Ί 	Too Short Ό'

<script type="text/javascript">
/* jQuery Password Strength Plugin (pstrength) - A jQuery plugin to provide accessibility functions
 * Author: Tane Piper (digitalspaghetti@gmail.com) 
 * Website: http://digitalspaghetti.me.uk
 * Licensed under the MIT License: http://www.opensource.org/licenses/mit-license.php
 * This code uses a modified version of Steve Moitozo's algorithm (http://www.geekwisdom.com/dyn/passwdmeter)
 */
(function($){
	$.extend($.fn, {
		pstrength : function(options) {
			var options = $.extend({
				verdects:	[" Ύ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag Α ΐ L	  Γ coldfusion/tagext/io/OutputTag Ε
 Ζ  _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Θ Ι
  Κ _String &(Ljava/lang/Object;)Ljava/lang/String; Μ Ν coldfusion/runtime/Cast Ο
 Π Ξ
 Ζ  coldfusion/tagext/QueryLoop Σ
 Τ 
 Τ ‘
 Ζ € "," ΨΉ"],
				colors: 	["#f00","#c06", "#f60","#3c0","#3f0"],
				scores: 	[10,15,30,40],
				common:		["password","sex","god","123456","123","liverpool","letmein","qwerty","monkey"],
				minchar:	8
			},options);		
			return this.each(function(){
				var infoarea = $(this).attr('id');
				$(this).after('<div class="pstrength-info" id="' + infoarea + '_text"></div>');
				$(this).after('<div class="pstrength-bar" id="' + infoarea + '_bar" style="font-size: 1px; height: 2px; width: 0px;"></div>');
				$(this).keyup(function(){				
					$.fn.runPassword($(this).val(), infoarea, options);
				});
			});
		},
		runPassword : function (password, infoarea, options){
			// Check password
			nPerc = $.fn.checkPassword(password, options);
			// Get controls
	    	var ctlBar = "#" + infoarea + "_bar"; 
	    	var ctlText = "#" + infoarea + "_text";		
			// Color and text
			if (nPerc == -200) {
				strColor = '#f00';
				strText = ' Ϊ ';
				$(ctlBar).css({width: "0%"});
			}		
			else if (nPerc < 0 && nPerc > -199) {
				strColor = '#ccc';
				strText = ' άl';
				$(ctlBar).css({width: "1%"});
			}
			else if(nPerc <= options.scores[0])
			{
		   		strColor = options.colors[0];
				strText = options.verdects[0];
				$(ctlBar).css({width: "1%"});
			}
			else if (nPerc > options.scores[0] && nPerc <= options.scores[1])
			{
		   		strColor = options.colors[1];
				strText = options.verdects[1];
				$(ctlBar).css({width: "25%"});
			}
			else if (nPerc > options.scores[1] && nPerc <= options.scores[2])
			{
			   	strColor = options.colors[2];
				strText = options.verdects[2];
				$(ctlBar).css({width: "50%"});
			}
			else if (nPerc > options.scores[2] && nPerc <= options.scores[3])
			{
			   	strColor = options.colors[3];
				strText = options.verdects[3];
				$(ctlBar).css({width: "75%"});
			}
			else
			{
			   	strColor = options.colors[4];
				strText = options.verdects[4];
				$(ctlBar).css({width: "99%"});
			}
			$(ctlBar).css({backgroundColor: strColor});
			$(ctlText).html("<span style='color: " + strColor + ";'>" + strText + "</span>");
		},
		checkPassword : function(password, options)
		{
			var intScore = 0;
			var strVerdict = options.verdects[0];	
			// PASSWORD LENGTH
			if (password.length < options.minchar)                         // Password too short
			{
				intScore = (intScore - 100)
			}
			else if (password.length >= options.minchar && password.length <= (options.minchar + 2)) // Password Short
			{
				intScore = (intScore + 6)
			}
			else if (password.length >= (options.minchar + 3) && password.length <= (options.minchar + 4))// Password Medium
			{
				intScore = (intScore + 12)
			}
			else if (password.length >= (options.minchar + 5))                    // Password Large
			{
				intScore = (intScore + 18)
			}
			if (password.match(/[a-z]/))                              // [verified] at least one lower case letter
			{
				intScore = (intScore + 1)
			}
			if (password.match(/[A-Z]/))                              // [verified] at least one upper case letter
			{
				intScore = (intScore + 5)
			}
			// NUMBERS
			if (password.match(/\d+/))                                 // [verified] at least one number
			{
				intScore = (intScore + 5)
			}
			if (password.match(/(.*[0-9].*[0-9].*[0-9])/))             // [verified] at least three numbers
			{
				intScore = (intScore + 7)
			}
			// SPECIAL CHAR
			if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~]/))            // [verified] at least one special character
			{
				intScore = (intScore + 5)
			}
			// [verified] at least two special characters
			if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/))
			{
				intScore = (intScore + 7)
			}
			// COMBOS
			if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))        // [verified] both upper and lower case
			{
				intScore = (intScore + 2)
			}
			if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) // [verified] both letters and numbers
			{
				intScore = (intScore + 3)
			}
		 	// [verified] letters, numbers, and special characters
			if (password.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/))
			{
				intScore = (intScore + 3)
			}
			for (var i=0; i < options.common.length; i++) {
				if (password.toLowerCase() == options.common[i]) {
					intScore = -200;
				}
			}
			return intScore;
		}
	});
})(jQuery);
</script> ή metaData Ljava/lang/Object; ΰ α	  β 	Functions δ 
Properties ζ getMetadata ()Ljava/lang/Object; this Lcfpstrength2ecfm561600020; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module6 mode6 t54 t55 t56 t57 t58 t59 output7  Lcoldfusion/tagext/io/OutputTag; mode7 t62 t63 t64 t65 output8 mode8 t68 t69 t70 t71 output9 mode9 t74 t75 t76 t77 output10 mode10 t80 t81 t82 t83 output11 mode11 t86 t87 t88 t89 output12 mode12 t92 t93 t94 t95 output13 mode13 t98 t99 t100 t101 LineNumberTable java/lang/Throwable] <clinit> 1     
                 "     &     *     .     K L    ΐ L    ΰ α     θ ι  ν   "     ² γ°    μ        κ λ       ν        [*+,· **+,Ά ΅ **+,Ά ΅ **+,Ά ΅ !**#+,Ά ΅ %**'+,Ά ΅ )**++,Ά ΅ -**/+,Ά ΅ 1±    μ        [ κ λ     [ ξ ο    [ π ρ   ς ι  ν    f  ²*΄ 8Ά >L*΄ BN*΄ 8DΆ J*² V-Ά Zΐ \:*Ά `bdfΆ j» lY½ nYpSYrSYtSYrS· wΆ }Ά Ά Y6 5*+Ά L+Ά Ά ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ #°¨ § #:		Ά ’¨ § :
¨ 
Ώ:Ά ₯©*² V-Ά Zΐ \:*Ά `bdfΆ j» lY½ nYpSY§SYtSY§S· wΆ }Ά Ά Y6 5*+Ά L+©Ά Ά ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ #°¨ § #:Ά ’¨ § :¨ Ώ:Ά ₯©*² V-Ά Zΐ \:*Ά `bdfΆ j» lY½ nYpSY«SYtSY«S· wΆ }Ά Ά Y6 5*+Ά L+­Ά Ά ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ #°¨ § #:Ά ’¨ § :¨ Ώ:Ά ₯©*² V-Ά Zΐ \:*Ά `bdfΆ j» lY½ nYpSY―SYtSY―S· wΆ }Ά Ά Y6 5*+Ά L+±Ά Ά ?υ¨ § :¨ Ώ:*+Ά L©Ά   : ¨ # °¨ § #:!!Ά ’¨ § :"¨ "Ώ:#Ά ₯©#*² V-Ά Zΐ \:$*Ά `$bdfΆ j$» lY½ nYpSY³SYtSY³S· wΆ }$Ά $Ά Y6% 5*$%+Ά L+΅Ά $Ά ?υ¨ § :&¨ &Ώ:'*%+Ά L©'$Ά   :(¨ #(°¨ § #:)$)Ά ’¨ § :*¨ *Ώ:+$Ά ₯©+*² V-Ά Zΐ \:,*Ά `,bdfΆ j,» lY½ nYpSY·SYtSY·S· wΆ },Ά ,Ά Y6- 5*,-+Ά L+ΉΆ ,Ά ?υ¨ § :.¨ .Ώ:/*-+Ά L©/,Ά   :0¨ #0°¨ § #:1,1Ά ’¨ § :2¨ 2Ώ:3,Ά ₯©3*² V-Ά Zΐ \:4*	Ά `4bdfΆ j4» lY½ nYpSY»SYtSY»S· wΆ }4Ά 4Ά Y65 5*45+Ά L+½Ά 4Ά ?υ¨ § :6¨ 6Ώ:7*5+Ά L©74Ά   :8¨ #8°¨ § #:949Ά ’¨ § ::¨ :Ώ:;4Ά ₯©;+ΏΆ *² Δ-Ά Zΐ Ζ:<*Ά `<Ά <Ά ΗY6= +**΄ Ά ΛΈ ΡΆ <Ά ??μ<Ά Υ  :>¨ #>°¨ § #:?<?Ά Φ¨ § :@¨ @Ώ:A<Ά Χ©A+ΩΆ *² Δ-Ά Zΐ Ζ:B*Ά `BΆ BΆ ΗY6C +**΄ !Ά ΛΈ ΡΆ BΆ ??μBΆ Υ  :D¨ #D°¨ § #:EBEΆ Φ¨ § :F¨ FΏ:GBΆ Χ©G+ΩΆ *² Δ	-Ά Zΐ Ζ:H*Ά `HΆ HΆ ΗY6I +**΄ 1Ά ΛΈ ΡΆ HΆ ??μHΆ Υ  :J¨ #J°¨ § #:KHKΆ Φ¨ § :L¨ LΏ:MHΆ Χ©M+ΩΆ *² Δ
-Ά Zΐ Ζ:N*Ά `NΆ NΆ ΗY6O +**΄ Ά ΛΈ ΡΆ NΆ ??μNΆ Υ  :P¨ #P°¨ § #:QNQΆ Φ¨ § :R¨ RΏ:SNΆ Χ©S+ΩΆ *² Δ-Ά Zΐ Ζ:T*Ά `TΆ TΆ ΗY6U +**΄ %Ά ΛΈ ΡΆ TΆ ??μTΆ Υ  :V¨ #V°¨ § #:WTWΆ Φ¨ § :X¨ XΏ:YTΆ Χ©Y+ΫΆ *² Δ-Ά Zΐ Ζ:Z*.Ά `ZΆ ZΆ ΗY6[ +**΄ -Ά ΛΈ ΡΆ ZΆ ??μZΆ Υ  :\¨ #\°¨ § #:]Z]Ά Φ¨ § :^¨ ^Ώ:_ZΆ Χ©_+έΆ *² Δ-Ά Zΐ Ζ:`*3Ά ``Ά `Ά ΗY6a +**΄ )Ά ΛΈ ΡΆ `Ά ??μ`Ά Υ  :b¨ #b°¨ § #:c`cΆ Φ¨ § :d¨ dΏ:e`Ά Χ©e+ίΆ ° b j  ^   ^ _ ¨ ΄^ ? ± ΄^ _ ¨ Γ^ ? ± Γ^ ΄ ΐ Γ^ Γ Θ Γ^(CF^FKF^fr^lor^f^lo^r~^^ζ^	^Ϋ$0^*-0^Ϋ$?^*-?^0<?^?D?^₯ΐΓ^ΓΘΓ^γο^ιμο^γώ^ιμώ^οϋώ^ώώ^d^^Y’?^¨«?^Y’½^¨«½^?Ί½^½Β½^#>A^AFA^am^gjm^a|^gj|^my|^||^γώ^^Ψ!-^'*-^Ψ!<^'*<^-9<^<A<^n¨^’₯¨^n·^’₯·^¨΄·^·Ό·^ι#^ #^ι2^ 2^#/2^272^d^^d­^­^ͺ­^­²­^ί^^ί(^(^%(^(-(^Z^^Z£^£^ £^£¨£^Υ^	^Υ^	^^#^P~^^P~^^^^  μ  ώ f  ² κ λ    ² σ τ   ² υ α   ² ? @   ² φ χ   ² ψ ω   ² ϊ ϋ   ² ό α   ² ύ α   ² ώ ϋ 	  ² ? ϋ 
  ²  α   ² χ   ² ω   ² ϋ   ² α   ² α   ² ϋ   ² ϋ   ² α   ²	 χ   ²
 ω   ² ϋ   ² α   ² α   ² ϋ   ² ϋ   ² α   ² χ   ² ω   ² ϋ   ² α   ² α    ² ϋ !  ² ϋ "  ² α #  ² χ $  ² ω %  ² ϋ &  ² α '  ² α (  ² ϋ )  ² ϋ *  ²  α +  ²! χ ,  ²" ω -  ²# ϋ .  ²$ α /  ²% α 0  ²& ϋ 1  ²' ϋ 2  ²( α 3  ²) χ 4  ²* ω 5  ²+ ϋ 6  ², α 7  ²- α 8  ². ϋ 9  ²/ ϋ :  ²0 α ;  ²12 <  ²3 ω =  ²4 α >  ²5 ϋ ?  ²6 ϋ @  ²7 α A  ²82 B  ²9 ω C  ²: α D  ²; ϋ E  ²< ϋ F  ²= α G  ²>2 H  ²? ω I  ²@ α J  ²A ϋ K  ²B ϋ L  ²C α M  ²D2 N  ²E ω O  ²F α P  ²G ϋ Q  ²H ϋ R  ²I α S  ²J2 T  ²K ω U  ²L α V  ²M ϋ W  ²N ϋ X  ²O α Y  ²P2 Z  ²Q ω [  ²R α \  ²S ϋ ]  ²T ϋ ^  ²U α _  ²V2 `  ²W ω a  ²X α b  ²Y ϋ c  ²Z ϋ d  ²[ α e\  > O   F  F  P  P        Τ Β Β Μ Μ      P @ @ J J  ? ? 	 	 Ξ Ώ 	Ώ 	Ι 	Ι 	 	z z z z y S υ υ υ υ τ Ξ p p p p o I λ λ λ λ κ Δ f f f f e ? α .α .α .α .ΰ .Ί .\ 3\ 3\ 3\ 3[ 35 3       ν   #     *· 
±    μ        κ λ   _   ν   U     7NΈ T³ VΒΈ T³ Δ» lY½ nYεSY½ nSYηSY½ nS· w³ γ±    μ       7 κ λ         2    3