ΚώΊΎ  - 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 0cfaccessmanager2ecfc1290200798$funcCANACCESSPAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - PAGE / string 1 getVariable  (I)Lcoldfusion/runtime/Variable; 3 4 %coldfusion/runtime/ArgumentCollection 6
 7 5 3coldfusion/tagext/validation/CFTypeValidatorFactory 9 STRING_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; ; <	 : = _validateRequiredArg (Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; ? @
  A 
		 C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
   G *coldfusion/runtime/TransientVariableHolder I &(Lcoldfusion/runtime/NeoPageContext;)V  K
 J L 
			 N FCONTEXT P _setCurrentLineNo (I)V R S
   T GetPageContext %()Lcoldfusion/runtime/NeoPageContext; V W coldfusion/runtime/CFPage Y
 Z X getFusionContext \ java/lang/Object ^ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ` a
   b _set '(Ljava/lang/String;Ljava/lang/Object;)V d e
   f _get &(Ljava/lang/String;)Ljava/lang/Object; h i
   j 
isAdminAPI l set (Ljava/lang/Object;)V n o coldfusion/runtime/Variable q
 r p _isNull (Ljava/lang/Object;Z)Z t u
   v _Object (Z)Ljava/lang/Object; x y coldfusion/runtime/Cast {
 | z _boolean (Ljava/lang/Object;)Z ~ 
 |  isFlashRemoting  
				  setIsAdminAPI  coldfusion/runtime/CFBoolean  f_false Lcoldfusion/runtime/CFBoolean;  	   t_true  	   

			
			  SECURITY  canAccessPage  _autoscalarize  i
    unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;   coldfusion/runtime/NeoException 
   t0 [Ljava/lang/String; java/lang/String ’ ANY €   ‘	  ¦ findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I ¨ ©
  ͺ CFCATCH ¬ bind ? e
 J ― unbind ± 
 J ² 			
			
			 ΄ 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;  Ά
   · 
	 Ή metaData Ljava/lang/Object; » Ό	  ½ boolean Ώ false Α &coldfusion/runtime/AttributeCollection Γ name Ε access Η public Ι output Λ 
returntype Ν hint Ο GIndicates whether or not the current user can access the specified page Ρ 
Parameters Σ REQUIRED Υ true Χ TYPE Ω NAME Ϋ page έ ([Ljava/lang/Object;)V  ί
 Δ ΰ getMetadata ()Ljava/lang/Object; this 2Lcfaccessmanager2ecfc1290200798$funcCANACCESSPAGE; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getReturnType getParamList ()[Ljava/lang/String; runFunction (Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable2 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception
 java/lang/Throwable <clinit> 	getOutput 1         ‘    » Ό   	  β γ  η   "     ² Ύ°    ζ        δ ε    θ ι  η   !     °    ζ        δ ε    κ λ  η         ¬    ζ        δ ε    μ ι  η   !     ΐ°    ζ        δ ε    ν ξ  η   (     
½ £Y0S°    ζ       
 δ ε    ο π  η  j    +² Ά :+² ,Ά :	+Ά :
-΄ $Ά *:-΄ .:*02Ά 8² >Ά B:-DΆ H» JY-΄ $· M:-OΆ H-Q-xΆ U--xΆ U-Ά []½ _Ά cΆ g-OΆ H
-yΆ U--QΆ km½ _Ά cΆ s-OΆ H-QΆ wΈ }YΈ  W-zΆ U--QΆ k½ _Ά cΈ  3-Ά H-{Ά U--QΆ k½ _Y² SΆ cW-OΆ H§ <-QΆ w 0-Ά H-}Ά U--QΆ k½ _Y² SΆ cW-OΆ H-Ά H- Ά U--Ά k½ _Y-0Ά SΆ c:¨ n°-DΆ H¨ `§ :Ώ:Έ :² §Έ «ͺ      3           ­Ά °-OΆ HΏ-DΆ H§ Ώ¨ § E:¨ Ώ:Ά ³-΅Ά H- Ά U--QΆ k½ _Y-
Ά ΈSΆ cW-DΆ H©-ΊΆ H°  Tj~	p{~	 Tjp{ TjΠp{Π~ΝΠΠΥΠ  ζ   ΐ    δ ε     ρ ς    σ Ό    τ υ    φ χ    ψ ω    ϊ Ό    + ,     ϋ     ϋ 	    ϋ 
   / ϋ    ό ύ    ώ Ό    ?              Ό   6 M   u l x l x e x e x e x e x \ x \ x  y  y  y  y  y  y  y  y  y § z § z § z § z § z § z § z § z Β z Β z Α z Α z Α z Α z § z § z ζ { ζ { τ { τ { ε { ε { ε { ε { | | | | | |" }" }0 }0 }! }! }! }! } | § zP P ^ ^ O O O O O Ή ο ο ύ ύ ξ ξ ξ ξ  G w     η   #     *· 
±    ζ        δ ε      η   «     ½ £Y₯S³ §» ΔY½ _YΖSYSYΘSYΚSYΜSYΒSYΞSYΐSYΠSY	?SY
ΤSY½ _Y» ΔY½ _YΦSYΨSYΪSY2SYάSYήS· αSS· α³ Ύ±    ζ        δ ε    ι  η   !     Β°    ζ        δ ε        ΚώΊΎ  -$ 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 5cfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   
ISADMINAPI  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	   # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	   - 
		 / _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 1 2
   3 *coldfusion/runtime/TransientVariableHolder 5 &(Lcoldfusion/runtime/NeoPageContext;)V  7
 6 8 
			 : FCONTEXT < _setCurrentLineNo (I)V > ?
   @ GetPageContext %()Lcoldfusion/runtime/NeoPageContext; B C coldfusion/runtime/CFPage E
 F D getFusionContext H java/lang/Object J _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; L M
   N _set '(Ljava/lang/String;Ljava/lang/Object;)V P Q
   R _get &(Ljava/lang/String;)Ljava/lang/Object; T U
   V 
isAdminAPI X set (Ljava/lang/Object;)V Z [ coldfusion/runtime/Variable ]
 ^ \ _isNull (Ljava/lang/Object;Z)Z ` a
   b _Object (Z)Ljava/lang/Object; d e coldfusion/runtime/Cast g
 h f _boolean (Ljava/lang/Object;)Z j k
 h l isFlashRemoting n 
				 p setIsAdminAPI r coldfusion/runtime/CFBoolean t f_false Lcoldfusion/runtime/CFBoolean; v w	 u x t_true z w	 u { 

			 } SECURITY  isRootAdminUser  %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag  forName %(Ljava/lang/String;)Ljava/lang/Class;   java/lang/Class 
    	   _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;  
    coldfusion/tagext/lang/ThrowTag  cfthrow  message  INVALIDUSER  _autoscalarize  U
    _String &(Ljava/lang/Object;)Ljava/lang/String;  
 h   _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; ’ £
   € 
setMessage (Ljava/lang/String;)V ¦ §
  ¨ cfadminapiSecurityError ͺ setType ¬ §
  ­ 	hasEndTag (Z)V ― ° coldfusion/tagext/GenericTag ²
 ³ ± 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z ΅ Ά
   · unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; Ή Ί coldfusion/runtime/NeoException Ό
 ½ » t0 [Ljava/lang/String; java/lang/String Α ANY Γ Ώ ΐ	  Ε findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I Η Θ
 ½ Ι CFCATCH Λ bind Ν Q
 6 Ξ unbind Π 
 6 Ρ 			
			
			 Σ 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;  Υ
   Φ 
	 Ψ checkRootAdminUser Ϊ metaData Ljava/lang/Object; ά έ	  ή false ΰ &coldfusion/runtime/AttributeCollection β name δ access ζ public θ output κ hint μ MChecks whether the current user is the root admin user, else throws an error. ξ 
Parameters π ([Ljava/lang/Object;)V  ς
 γ σ getMetadata ()Ljava/lang/Object; this 7Lcfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER; LocalVariableTable Code getName ()Ljava/lang/String; 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction (Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t11 ,Lcoldfusion/runtime/TransientVariableHolder; throw5 !Lcoldfusion/tagext/lang/ThrowTag; t13 t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; t17 t18 LineNumberTable !coldfusion/runtime/AbortException java/lang/Exception java/lang/Throwable  <clinit> 	getOutput 1            Ώ ΐ    ά έ     υ φ  ϊ   "     ² ί°    ω        χ ψ    ϋ ό  ϊ   !     Ϋ°    ω        χ ψ    ύ ώ  ϊ         ¬    ω        χ ψ    ?   ϊ   #     ½ Β°    ω        χ ψ     ϊ  Α    W+² Ά :+² ,Ά :	+Ά :
-΄ $Ά *:-΄ .:-0Ά 4» 6Y-΄ $· 9:-;Ά 4-=-`Ά A--`Ά A-Ά GI½ KΆ OΆ S-;Ά 4
-aΆ A--=Ά WY½ KΆ OΆ _-;Ά 4-=Ά cΈ iYΈ m W-bΆ A--=Ά Wo½ KΆ OΈ m 3-qΆ 4-cΆ A--=Ά Ws½ KY² ySΆ OW-;Ά 4§ <-=Ά c 0-qΆ 4-eΆ A--=Ά Ws½ KY² |SΆ OW-;Ά 4-~Ά 4-hΆ A--Ά W½ KΆ OΈ m \-qΆ 4-² Ά ΐ :-iΆ A-Ά Έ ‘Έ ₯Ά ©«Ά ?Ά ΄Έ Έ :¨ v°-;Ά 4-0Ά 4¨ `§ :Ώ:Έ Ύ:² ΖΈ Κͺ      3           ΜΆ Ο-;Ά 4Ώ-0Ά 4§ Ώ¨ § D:¨ Ώ:Ά ?-ΤΆ 4-pΆ A--=Ά Ws½ KY-
Ά ΧSΆ OW-0Ά 4©-ΩΆ 4°  AΊ€·Ί AΏ€·Ώ A!€·!Ί	!!  ω   ΐ   W χ ψ    W   W έ   W   W	   W
   W έ   W + ,   W    W  	  W  
  W   W   W έ   W   W   W   W   W έ   R T   ^ Y ` Y ` R ` R ` R ` R ` I ` I ` q a z a z a y a y a y a y a q a q a  b  b  b  b  b  b  b  b ― b ― b ? b ? b ? b ? b  b  b Σ c Σ c α c α c ? c ? c ? c ? c τ d τ d τ d τ d τ d τ d e e e e e e e e τ d  b< h< h; h; h; h; h; h; hv iv iv iv i i i[ i; hυ l* p* p8 p8 p) p) p) p) p 4 _     ϊ   #     *· 
±    ω        χ ψ   "   ϊ   z     \Έ ³ ½ ΒYΔS³ Ζ» γY
½ KYεSYΫSYηSYιSYλSYαSYνSYοSYρSY	½ KS· τ³ ί±    ω       \ χ ψ   # ό  ϊ   !     α°    ω        χ ψ        ΚώΊΎ  -Ι 
SourceFile !/CFIDE/adminapi/accessmanager.cfc 2cfaccessmanager2ecfc1290200798$funcCHECKADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	   ISROOT  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   
ISADMINAPI  coldfusion/runtime/CfJspPage ! pageContext #Lcoldfusion/runtime/NeoPageContext; # $	 " % getOut ()Ljavax/servlet/jsp/JspWriter; ' ( javax/servlet/jsp/JspContext *
 + ) parent Ljavax/servlet/jsp/tagext/Tag; - .	 " / get (I)Ljava/lang/Object; 1 2 %coldfusion/runtime/ArgumentCollection 4
 5 3 REQUIREDROLES 7   9 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ; <
 5 = getVariable  (I)Lcoldfusion/runtime/Variable; ? @
 5 A CHECKALLROLES C true E boolean G 3coldfusion/tagext/validation/CFTypeValidatorFactory I BOOL_VALIDATOR .Lcoldfusion/tagext/validation/CFTypeValidator; K L	 J M _validateArgWithValidator (Ljava/lang/String;Ljava/lang/String;Lcoldfusion/runtime/Variable;Lcoldfusion/tagext/validation/CFTypeValidator;)Lcoldfusion/runtime/Variable; O P
  Q 
		
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
 " W *coldfusion/runtime/TransientVariableHolder Y &(Lcoldfusion/runtime/NeoPageContext;)V  [
 Z \ 
			 ^ FCONTEXT ` _setCurrentLineNo (I)V b c
 " d GetPageContext %()Lcoldfusion/runtime/NeoPageContext; f g coldfusion/runtime/CFPage i
 j h getFusionContext l java/lang/Object n _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; p q
 " r _set '(Ljava/lang/String;Ljava/lang/Object;)V t u
 " v _get &(Ljava/lang/String;)Ljava/lang/Object; x y
 " z 
isAdminAPI | set (Ljava/lang/Object;)V ~  coldfusion/runtime/Variable 
   _isNull (Ljava/lang/Object;Z)Z  
 "  _Object (Z)Ljava/lang/Object;   coldfusion/runtime/Cast 
   _boolean (Ljava/lang/Object;)Z  
   isFlashRemoting  
				  setIsAdminAPI  coldfusion/runtime/CFBoolean  f_false Lcoldfusion/runtime/CFBoolean;  	   t_true  	   

			
			 ‘ SECURITY £ isRootAdminUser ₯ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; § ¨
 " © arguments.requiredRoles « 	IsDefined (Ljava/lang/String;)Z ­ ?
 j ― § y
 " ± _String &(Ljava/lang/Object;)Ljava/lang/String; ³ ΄
  ΅ jrun · ListContains '(Ljava/lang/String;Ljava/lang/String;)I Ή Ί
 j »  2
  ½ _compare (Ljava/lang/Object;D)D Ώ ΐ
 " Α 
standalone Γ j2ee Ε 
enterprise Η standard Ι windows Λ unix Ν 
		
			
			 Ο isAdminUser Ρ admin Σ IsUserInRole Υ 
 j Φ coldfusion.adminapi Ψ %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag ά forName %(Ljava/lang/String;)Ljava/lang/Class; ή ί java/lang/Class α
 β ΰ Ϊ Ϋ	  δ _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; ζ η
 " θ coldfusion/tagext/lang/ThrowTag κ cfthrow μ message ξ INVALIDUSER π _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; ς σ
 " τ 
setMessage (Ljava/lang/String;)V φ χ
 λ ψ cfadminapiSecurityError ϊ setType ό χ
 λ ύ 	errorcode ? CFACCESSDENIED setErrorcode χ
 λ 	hasEndTag (Z)V coldfusion/tagext/GenericTag	

 	_emptyTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
 " 

			
			 ROLE 
				
			 , bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;
 " java/util/StringTokenizer '(Ljava/lang/String;Ljava/lang/String;)V 
 	nextToken ()Ljava/lang/String;!"
# 
					
					% Trim &(Ljava/lang/String;)Ljava/lang/String;'(
 j) 
					+ 5jrun,standalone,j2ee,enterprise,standard,windows,unix- 
						/ CFLOOP1 checkRequestTimeout3 χ
 "4 hasMoreTokens ()Z67
8 ISINROLE: 
		< unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;>? coldfusion/runtime/NeoExceptionA
B@ t0 [Ljava/lang/String; java/lang/StringF ANYHDE	 J findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)ILM
BN CFCATCHP bindR u
 ZS unbindU 
 ZV 			
			
			X 
	Z checkAdminRoles\ metaData Ljava/lang/Object;^_	 ` falseb &coldfusion/runtime/AttributeCollectiond namef accessh publicj outputl hintn ^Checks whether the current user is in the required administrative roles, else throws an error.p 
Parametersr REQUIREDt Nov DEFAULTx HINTz List of required roles.| NAME~ requiredRoles ([Ljava/lang/Object;)V 
e TYPE checkAllRoles getMetadata ()Ljava/lang/Object; this 4Lcfaccessmanager2ecfc1290200798$funcCHECKADMINROLES; LocalVariableTable Code getName 	getAccess ()I getParamList ()[Ljava/lang/String; runFunction (Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t14 ,Lcoldfusion/runtime/TransientVariableHolder; t15 throw2 !Lcoldfusion/tagext/lang/ThrowTag; t17 t18 Ljava/lang/String; t19 t20 I t21 t22 Ljava/util/StringTokenizer; throw3 t24 t25 t26 t27 t28 t29 throw4 t31 t32 #Lcoldfusion/runtime/AbortException; t33 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t35 t36 LineNumberTable !coldfusion/runtime/AbortExceptionΑ java/lang/ExceptionΓ java/lang/ThrowableΕ <clinit> 	getOutput 1       Ϊ Ϋ   DE   ^_        "     ²a°             "    "     ]°                       ¬                 -     ½GY8SYDS°                β  %  p+² Ά :+² ,Ά :	+Ά :
+ Ά :-΄ &Ά ,:-΄ 0:Ά 6¦ 8:Ά >WΆ B:Ά 6¦ DFΆ >W*DHΆ B² NΆ R:-TΆ X» ZY-΄ &· ]:-_Ά X-a-Ά e--Ά e-Ά km½ oΆ sΆ w-_Ά X- Ά e--aΆ {}½ oΆ sΆ -_Ά X-aΆ Έ YΈ  W-!Ά e--aΆ {½ oΆ sΈ  3-Ά X-"Ά e--aΆ {½ oY² SΆ sW-_Ά X§ <-aΆ  0-Ά X-$Ά e--aΆ {½ oY²  SΆ sW-_Ά X-’Ά X
-)Ά e--€Ά {¦½ oΆ sΆ -_Ά X-
Ά ͺYΈ PW-+Ά e-¬Ά °Έ YΈ 7W-,Ά e-8Ά ²Έ ΆΈΈ ΌΈ ΎΈ Β~Έ YΈ  )W--Ά e-8Ά ²Έ ΆΔΈ ΌΈ ΎΈ Β~Έ YΈ  )W-.Ά e-8Ά ²Έ ΆΖΈ ΌΈ ΎΈ Β~Έ YΈ  )W-/Ά e-8Ά ²Έ ΆΘΈ ΌΈ ΎΈ Β~Έ YΈ  )W-0Ά e-8Ά ²Έ ΆΚΈ ΌΈ ΎΈ Β~Έ YΈ  )W-1Ά e-8Ά ²Έ ΆΜΈ ΌΈ ΎΈ Β~Έ YΈ  )W-2Ά e-8Ά ²Έ ΆΞΈ ΌΈ ΎΈ Β~Έ Έ  -Ά X:¨°-_Ά X-ΠΆ X-
Ά ͺΈ Έ YΈ  TW-8Ά e--€Ά {?½ oΆ sΈ Έ YΈ  W-8Ά e-ΤΆ ΧΈ YΈ  W-8Ά e-ΩΆ ΧΈ Έ  t-Ά X-² εΆ ιΐ λ:-9Ά eνο-ρΆ ²Έ ΆΈ υΆ ωϋΆ ών -Ά ²Έ ΆΈ υΆΆΈ :¨7°-_Ά X-Ά X-:Ά w-Ά X-DΆ ²Έ a-Ά X-8Ά ²Έ Ά::6-+Ά:»Y· :§Ά$:Ά -&Ά X--AΆ e-Ά ²Έ ΆΈ*Ά w-,Ά X-
Ά ͺΈ Έ YΈ  7W-
Ά ͺYΈ  )W-CΆ e.-Ά ²Έ ΆΈ ΌΈ ΎΈ Β~Έ YΈ  W-DΆ e--Ά ²Ά ΧΈ Έ  ^-0Ά X-² εΆ ιΐ λ:-EΆ eνο-ρΆ ²Έ ΆΈ υΆ ωϋΆ ώΆΈ :¨Ϊ°-,Ά X-Ά X2Έ5`6Ά9ώε-_Ά X§>-Ά X-;² Ά w-Ά X-8Ά ²Έ Ά::6-+Ά:»Y· :§ vΆ$:Ά -,Ά X-KΆ e--KΆ e-Ά ²Έ ΆΈ*Ά Χ +-0Ά X-;²  Ά w-0Ά X§ (-,Ά X-Ά X2Έ5`6Ά9?-Ά X-;Ά ²Έ  ]-,Ά X-² εΆ ιΐ λ:-QΆ eνο-ρΆ ²Έ ΆΈ υΆ ωϋΆ ώΆΈ :¨ °-Ά X-_Ά X-=Ά X¨ `§ :  Ώ:!!ΈC:""²KΈOͺ    3           Q"ΆT-_Ά X"Ώ-=Ά X§ !Ώ¨ § F:#¨ #Ώ:$ΆW-YΆ X-YΆ e--aΆ {½ oY-Ά ͺSΆ sW-=Ά X©$-[Ά X°  ΠΒσΠΒωPΠΒV«ΠΒ±ΝΠΒ ΥΔσΥΔωPΥΔV«ΥΔ±ΝΥΔ "Ζσ"ΖωP"ΖV«"Ζ±Ν"ΖΠ"Ζ"'"Ζ   t %  p    p   p_   p   p   p   p_   p - .   p     p   	  p   
  p     p 7    p C    p‘’   p£_   p€₯   p¦_   p§¨   p©¨   pͺ«   p¬    p­?   p―₯   p°_   p±¨   p²¨   p³«   p΄    p΅?   pΆ₯   p·_   pΈΉ    pΊ» !  pΌ½ "  pΎ½ #  pΏ_ $ΐ  ^    B  B  ^  ^  €  €              Ό   Ε   Ε   Δ   Δ   Δ   Δ   Ό   Ό   ί ! ί ! ί ! ί ! ί ! ί ! ί ! ί ! ϊ ! ϊ ! ω ! ω ! ω ! ω ! ί ! ί ! " ", ", " " " " "? #? #? #? #? #? #Z $Z $h $h $Y $Y $Y $Y $? # ί ! ) ) ) ) ) ) ) ) )£ *£ *£ *£ *Έ +Έ +· +· +· +· +· +· +· +· +Π ,Π ,Π ,Π ,Ω ,Ω ,Π ,Π ,α ,α ,Π ,Π ,Π ,Π ,ύ -ύ -ύ -ύ - - -ύ -ύ - - -ύ -ύ -ύ -ύ -Π -Π -Π -Π -* .* .* .* .3 .3 .* .* .; .; .* .* .* .* .Π .Π .Π .Π .W /W /W /W /` /` /W /W /h /h /W /W /W /W /Π /Π /Π /Π / 0 0 0 0 0 0 0 0 0 0 0 0 0 0Π 0Π 0Π 0Π 0± 1± 1± 1± 1Ί 1Ί 1± 1± 1Β 1Β 1± 1± 1± 1± 1Π 1Π 1Π 1Π 1ή 2ή 2ή 2ή 2η 2η 2ή 2ή 2ο 2ο 2ή 2ή 2ή 2ή 2Π 2Π 2Π 2Π 2· ,· ,· ,· ,£ +£ + 3£ *$ 7$ 7$ 7$ 7$ 7$ 7$ 7$ 7A 8A 8@ 8@ 8@ 8@ 8@ 8@ 8@ 8@ 8g 8g 8f 8f 8f 8f 8f 8f 8f 8f 8@ 8@ 8@ 8@ 8 8 8 8 8 8 8 8 8 8 8@ 8@ 8@ 8@ 8$ 8$ 8³ 9³ 9³ 9³ 9Ε 9Ε 9Ρ 9Ρ 9Ρ 9Ρ 9 9$ 7 < < < <
 <
 < > >0 ?0 ?0 ?0 ?~ A~ A~ A~ A~ A~ A~ A~ At At A B B B B B B B B­ C­ C­ C­ CΑ CΑ CΔ CΔ CΔ CΔ CΑ CΑ CΤ CΤ CΑ CΑ CΑ CΑ C­ C­ C­ C­ C C C C Cο Dο Dξ Dξ Dξ Dξ Dξ Dξ Dξ Dξ D D D( E( E( E( E: E: E E Bx ?0 ? I I I I I I  J  J  J  Jρ Kρ Kρ Kρ Kρ Kρ Kκ Kκ K L L L L L L  Mκ KE J  JP PP PP PP PP PP P Q Q Q Q Q Qh QP P H >
 UA YA YO YO Y@ Y@ Y@ Y@ Y         #     *· 
±             Η         εέΈ γ³ ε½GYIS³K»eY
½ oYgSY]SYiSYkSYmSYcSYoSYqSYsSY	½ oY»eY½ oYuSYwSYySY:SY{SY}SYSYS·SY»eY½ oYuSYwSYSYHSYySYFSYSYS·SS·³a±          ε   Θ"    "     c°                  ΚώΊΎ  -D 
SourceFile !/CFIDE/adminapi/accessmanager.cfc cfaccessmanager2ecfc1290200798  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   CFACCESSDENIED Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REQUEST   	   SECURITY   	    FACTORY " " 	  $ com.macromedia.SourceModTime  h·Ή pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 Cp1252 7 setPageEncoding (Ljava/lang/String;)V 9 : !coldfusion/runtime/NeoPageContext <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A LOCALE E REQUEST.LOCALE G _setCurrentLineNo (I)V I J
  K java M java.util.Locale O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S 
getDefault W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] getLanguage _ checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V a b
  c  coldfusion.server.ServiceFactory e _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; g h
  i getSecurityService k 	VARIABLES m java/lang/String o 
LOCALEFILE q java/lang/StringBuilder s resources/adminapi_ u  :
 t w _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; y z
  { _String &(Ljava/lang/Object;)Ljava/lang/String; } ~ coldfusion/runtime/Cast 
   append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  
 t  .cfm  toString ()Ljava/lang/String;  
 Z  _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V  
   (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag  forName %(Ljava/lang/String;)Ljava/lang/Class;   java/lang/Class 
    	   _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag;  
   "coldfusion/tagext/lang/ImportedTag ‘ l10n £ /CFIDE/adminapi/customtags ₯ admin § setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V © ͺ
 ’ « &coldfusion/runtime/AttributeCollection ­ id ― invalidUser ± var ³ file ΅ ([Ljava/lang/Object;)V  ·
 ? Έ setAttributecollection (Ljava/util/Map;)V Ί »  coldfusion/tagext/lang/ModuleTag ½
 Ύ Ό 	hasEndTag (Z)V ΐ Α coldfusion/tagext/GenericTag Γ
 Δ Β 
doStartTag ()I Ζ Η
 Ύ Θ 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; Κ Λ
  Μ 9The current user is not authorized to invoke this method. Ξ write Π : java/io/Writer ?
 Σ Ρ doAfterBody Υ Η
 Ύ Φ _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; Ψ Ω
  Ϊ doEndTag ά Η #javax/servlet/jsp/tagext/TagSupport ή
 ί έ doCatch (Ljava/lang/Throwable;)V α β
 Ύ γ 	doFinally ε 
 Ύ ζ canAccessPage Lcoldfusion/runtime/UDFMethod; 0cfaccessmanager2ecfc1290200798$funcCANACCESSPAGE κ
 λ 	 θ ι	  ν CANACCESSPAGE ο registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V ρ ς
  σ checkAdminRoles 2cfaccessmanager2ecfc1290200798$funcCHECKADMINROLES φ
 χ 	 υ ι	  ω CHECKADMINROLES ϋ checkRootAdminUser 5cfaccessmanager2ecfc1290200798$funcCHECKROOTADMINUSER ώ
 ? 	 ύ ι	  CHECKROOTADMINUSER metaData Ljava/lang/Object;	  _implicitMethods Ljava/util/Map;	
	  name accessmanager displayname Access Manager hint kProvides functions to check  whether the current user has the access rights required for invoking functions Name 	Functions	 λ	 χ	 ? 
Properties  getMetadata ()Ljava/lang/Object; this  Lcfaccessmanager2ecfc1290200798; LocalVariableTable Code _setImplicitMethods implicitMethods varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; registerUDFs runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 LineNumberTable java/lang/Throwable? _getImplicitMethods ()Ljava/util/Map; <clinit> 1     
                 "          θ ι    υ ι    ύ ι      
	
    "# '   "     ²°   &       $%   ( » '   -     +³±   &       $%     )
     '   i     7*+,· **+,Ά ΅ **+,Ά ΅ **+,Ά ΅ !**#+,Ά ΅ %±   &        7$%     7*+    7,-  .  '   ;     *π² ξΆ τ*ό² ϊΆ τ*²Ά τ±   &       $%   /# '  [    *΄ ,Ά 2L*΄ 6N*΄ ,8Ά >*΄ Ά D**΄ FH*Ά L**Ά L**Ά L*NPΆ VX½ ZΆ ^`½ ZΆ ^Ά d*΄ %*Ά L*NfΆ VΆ D*΄ !*Ά L***΄ %Ά jl½ ZΆ ^Ά D*n½ pYrS» tYv· x*½ pYFSΆ |Έ Ά Ά Ά Ά *² -Ά  ΐ ’:*Ά L€¦¨Ά ¬» ?Y½ ZY°SY²SY΄SY²SYΆSY*n½ pYrSΆ |S· ΉΆ ΏΆ ΕΆ ΙY6 5*+Ά ΝL+ΟΆ ΤΆ Χ?υ¨ § :¨ Ώ:*+Ά ΫL©Ά ΰ  :¨ #°¨ § #:		Ά δ¨ § :
¨ 
Ώ:Ά η©° /JM@MRM@$my@svy@$m@sv@y@@ &   z   $%    01   2    3 4   34   56   78   9   :   ;8 	  <8 
  = >   ξ ;  
  
  
  
  
  
   =  =  ?  ?  <  <  5  5  .  .  .  .  d  d  f  f  c  c  c  c  Y  y  y  x  x  x  x  n      ’  ’  ’  ’  ·  ·            Y  τ  τ  ώ  ώ      Β       '   #     *· 
±   &       $%   AB '   "     ²°   &       $%   C  '   Φ 	    Έ ³ » λY· μ³ ξ» χY· ψ³ ϊ» ?Y· ³» ?Y½ ZYSYSYSYSYSYSYSYSYSY	½ ZY²SY²SY²SSY
!SY½ ZS· Ή³±   &       $%  >     q u q u w  w  } ^ } ^       &    '