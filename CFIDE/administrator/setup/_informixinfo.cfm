ΚώΊΎ  -[ 
SourceFile ,/CFIDE/administrator/setup/_informixinfo.cfm cf_informixinfo2ecfm1886255904  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ITEM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   com.macromedia.SourceModTime  h·} pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter; ! " javax/servlet/jsp/JspContext $
 % # parent Ljavax/servlet/jsp/tagext/Tag; ' (	  ) Cp1252 + setPageEncoding (Ljava/lang/String;)V - . !coldfusion/runtime/NeoPageContext 0
 1 / USERNAME 3 ITEM.USERNAME 5   7 checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V 9 :
  ; PASSWORD = ITEM.PASSWORD ? $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag C forName %(Ljava/lang/String;)Ljava/lang/Class; E F java/lang/Class H
 I G A B	  K _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; M N
  O coldfusion/tagext/io/OutputTag Q _setCurrentLineNo (I)V S T
  U 	hasEndTag (Z)V W X coldfusion/tagext/GenericTag Z
 [ Y 
doStartTag ()I ] ^
 R _ 
	<p class="sentance">
		 a write c . java/io/Writer e
 f d (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag i h B	  k "coldfusion/tagext/lang/ImportedTag m l10n o 	../cftags q admin s setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V u v
 n w &coldfusion/runtime/AttributeCollection y java/lang/Object { id } mig_informixNeedMoreInfo  ([Ljava/lang/Object;)V  
 z  setAttributecollection (Ljava/util/Map;)V    coldfusion/tagext/lang/ModuleTag 
  
  _ 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;  
   C
			ColdFusion only supports Informix version 9 data sources. 
		  doAfterBody  ^
   _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;  
   doEndTag  ^ #javax/servlet/jsp/tagext/TagSupport 
   doCatch (Ljava/lang/Throwable;)V  
   	doFinally ‘ 
  ’ 	
	</p>
 € windows ¦ SERVER ¨ java/lang/String ͺ OS ¬ NAME ? _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ° ±
  ² _String &(Ljava/lang/Object;)Ljava/lang/String; ΄ ΅ coldfusion/runtime/Cast ·
 Έ Ά 
FindNoCase '(Ljava/lang/String;Ljava/lang/String;)I Ί »
  Ό _boolean (J)Z Ύ Ώ
 Έ ΐ mig_informixNeedMoreInfoWin Β 
			For other versions of Informix, ColdFusion will register 
			the data source using the ODBC socket driver on Windows.
		 Δ 

	</p>	
 Ζ mig_informixNeedMoreInfoUnix Θ Ή
			ColdFusion will not migrate an Informix 7 data source. 
			In order to use an Informix 7 data source, 
			you must obtain a third-party JDBC driver that supports Informix 7. 
		 Κ mig_informixdbinstructions Μ 
			Please indicate the version of this Informix data source. 
			Click Don't Migrate to skip migrating this data source.
		 Ξ ω
	</p>

<input type="hidden" name="class" value="macromedia.jdbc.MacromediaDriver">
<input type="hidden" name="driver" value="Informix">
<input type="hidden" name="epassword" value="" autocomplete="off">
<input type="hidden" name="dsn" value=" Π D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ° ?
  Σ">
<input type="hidden" name="originaldsn" value="">
<table border="0" cellpadding="0" cellspacing="0" bgcolor="999999" width="100%">
<tr valign="top" class="color-border">
	<td>
		<table border="0" cellspacing="1" cellpadding="2" width="100%">
		<tr bgcolor="ddddd5" class="color-title">
			<th>
				<font class="label">&nbsp;&nbsp;<b class="form-title">
					Informix :&nbsp;  Υk </b></font>
			</th>
		</tr>
		<tr bgcolor="ddddd5" class="color-header">
			<td>
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100"  height="5"></td>
					<td></td>
					<td></td>
					<td width="50" ></td>
					<td></td>
				</tr>
				<tr>					
					<td valign="top">
						<p class="label" style="font-weight:  Χ Trim &(Ljava/lang/String;)Ljava/lang/String; Ω Ϊ
  Ϋ Len (Ljava/lang/Object;)I έ ή
  ί "normal" α "bold" γ IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ε ζ
  η /"><nobr>&nbsp; <label for="dbversion">
							 ι 	dbversion λ Informix Version νΧ
						</label></nobr></p>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td>
						<p class="label">
						<input type="Radio" name="dbversion" value="9" class="label" id="dbversion"> Informix 9<br>
						<input type="Radio" name="dbversion" value="73" class="label" id="dbversion"> Informix 73 / Other<br>
						</p>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				</table>
			</td>
		</tr>

	</table>
		</td>
	</tr>
	</table>
 ο REQUEST ρ PREVBTN σ coldfusion/runtime/CFBoolean υ t_true Lcoldfusion/runtime/CFBoolean; χ ψ	 φ ω _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V ϋ ό
  ύ 
 ? _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V
  NEXTBTN DONTMIGRATEBTN
 R  coldfusion/tagext/QueryLoop

 
 
 R ’ metaData Ljava/lang/Object;	  	Functions 
Properties getMetadata ()Ljava/lang/Object; this  Lcf_informixinfo2ecfm1886255904; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value output7  Lcoldfusion/tagext/io/OutputTag; mode7 I module2 $Lcoldfusion/tagext/lang/ImportedTag; mode2 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module3 mode3 t16 t17 t18 t19 t20 t21 module4 mode4 t24 t25 t26 t27 t28 t29 module5 mode5 t32 t33 t34 t35 t36 t37 module6 mode6 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 LineNumberTable java/lang/ThrowableX <clinit> 1            A B    h B           "     ²°                   E     *+,· **+,Ά ΅ ±                       !   
Ξ  2  j*΄  Ά &L*΄ *N*΄  ,Ά 2**΄ 468Ά <**΄ >@8Ά <*² L-Ά Pΐ R:*Ά VΆ \Ά `Y6ά+bΆ g*² lΆ Pΐ n:*Ά VprtΆ x» zY½ |Y~SYS· Ά Ά \Ά Y6 5*+Ά L+Ά gΆ ?υ¨ § :¨ Ώ:	*+Ά L©	Ά   :
¨ &¨u
°¨ § #:Ά  ¨ § :¨ Ώ:Ά £©+₯Ά g*Ά V§*©½ «Y­SY―SΆ ³Έ ΉΈ ½Έ Α Λ+bΆ g*² lΆ Pΐ n:*Ά VprtΆ x» zY½ |Y~SYΓS· Ά Ά \Ά Y6 5*+Ά L+ΕΆ gΆ ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ &¨°¨ § #:Ά  ¨ § :¨ Ώ:Ά £©+ΗΆ g§ Θ+bΆ g*² lΆ Pΐ n:*Ά VprtΆ x» zY½ |Y~SYΙS· Ά Ά \Ά Y6 5*+Ά L+ΛΆ gΆ ?υ¨ § :¨ Ώ:*+Ά L©Ά   :¨ &¨Ώ°¨ § #:Ά  ¨ § :¨ Ώ:Ά £©+ΗΆ g+bΆ g*² lΆ Pΐ n:*Ά VprtΆ x» zY½ |Y~SYΝS· Ά Ά \Ά Y6 5*+Ά L+ΟΆ gΆ ?υ¨ § : ¨  Ώ:!*+Ά L©!Ά   :"¨ &¨ϊ"°¨ § #:##Ά  ¨ § :$¨ $Ώ:%Ά £©%+ΡΆ g+**΄ ½ «Y―SΆ ΤΈ ΉΆ g+ΦΆ g+**΄ ½ «Y―SΆ ΤΈ ΉΆ g+ΨΆ g+*=Ά V**=Ά V*=Ά V**΄ ½ «Y4SΆ ΤΈ ΉΈ άΈ ΰΈ ΑβδΆ θΈ ΉΆ g+κΆ g*² lΆ Pΐ n:&*>Ά V&prtΆ x&» zY½ |Y~SYμS· Ά &Ά \&Ά Y6' 5*&'+Ά L+ξΆ g&Ά ?υ¨ § :(¨ (Ώ:)*'+Ά L©)&Ά   :*¨ &¨ Ή*°¨ § #:+&+Ά  ¨ § :,¨ ,Ώ:-&Ά £©-+πΆ g*ς½ «YτS² ϊΆ ώ*+ Ά*ς½ «YS² ϊΆ ώ*+ Ά*ς½ «YS² ϊΆ ώ*+ ΆΆ	ϋ*Ά  :.¨ #.°¨ § #://Ά¨ § :0¨ 0Ώ:1Ά©1° 8 © Δ ΗY Η Μ ΗY  κ φY π σ φY  κY π σY φY
Y²΅Y΅Ί΅YΨδYήαδYΨσYήασYδπσYσψσY_z}Y}}YT ¬Y¦©¬YT »Y¦©»Y¬Έ»Y»ΐ»Y$?BYBGBYeqYknqYeYknYq}YYeYYZ¦²Y¬―²YZ¦ΑY¬―ΑY²ΎΑYΑΖΑY L κHY πΨHYή HY¦eHYk¦HY¬<HYBEHY L κWY πΨWYή WY¦eWYk¦WY¬<WYBEWYHTWYW\WY   φ 2  j    j"#   j$   j ' (   j%&   j'(   j)*   j+(   j,-   j. 	  j/ 
  j0-   j1-   j2   j3*   j4(   j5-   j6   j7   j8-   j9-   j:   j;*   j<(   j=-   j>   j?   j@-   jA-   jB   jC*   jD(   jE-    jF !  jG "  jH- #  jI- $  jJ %  jK* &  jL( '  jM- (  jN )  jO *  jP- +  jQ- ,  jR -  jS .  jT- /  jU- 0  jV 1W   e                             %  %  %  %  )  )  +  +  -  -  $  $  $      ] " " $ $ $ $ " " } } K E E   " 
 
 Ψ  % % % % %Ά .Ά .Ά .Ά .΅ .η =η =η =η =η =η =η =η =η =η = = = = =Ϊ =Ϊ =Ϊ =Ϊ =Σ =K >K > >δ cδ cδ cδ cΨ cΨ c? d? d? d? dς dς d e e e e e e 2          #     *· 
±             Z     W     9DΈ J³ LjΈ J³ l» zY½ |YSY½ |SYSY½ |S· ³±          9             