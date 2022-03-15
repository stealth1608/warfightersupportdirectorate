<cfif structkeyExists(form,'LOGINFORM')>
	
	<cfquery datasource="db_wsd_datasource" name="grabuser">
		select * From login_users
		where username = <cfqueryparam value="#form.username#" cfsqltype="cf_sql_varchar"> 
		and password   = <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar">
	</cfquery>
	
	<cfif grabuser.recordcount gt 0>
		<cfset session.logged_in = true />
		<cfset session.logged_id = grabuser.id />
		<cfset session.username = grabuser.username />
		<cfset session.email = grabuser.email />
		
		<cflocation url="index.cfm" addtoken="no">
		
	<cfelse>
	    <cflocation url="login.cfm?login=1&badpass=1" addtoken="no">
	</cfif>
	
</cfif>

<cfset message = ''>

<cfif structkeyExists(form,'SIGNUPFORM')>
	
	<cfquery datasource="db_wsd_datasource" name="saveuser">
		INSERT INTO login_users(firstName,
								lastName,
								email,
								password,
								username)
						VALUES(<cfqueryparam value="#form.firstName#" cfsqltype="cf_sql_varchar">,
							   <cfqueryparam value="#form.lastName#" cfsqltype="cf_sql_varchar">,
							   <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar">,
							   <cfqueryparam value="#form.password#" cfsqltype="cf_sql_varchar">,
							   <cfqueryparam value="#form.username#" cfsqltype="cf_sql_varchar">)
	</cfquery>
	<cfset message = 'User Registration Successful !'>
</cfif>

<link href="assets/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="assets/js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="USACE Geospatial Center">
	<meta name="description" content="USACE AGC Warfighter Support Directorate educate, collect, manage, disseminate and deliver authoritative inter-operable geospatial data to enable terrain dominance across all operational phases and environments.">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/all.css">
    	<style>
    		/* sign in FORM */
#logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
#logreg-forms form {
    width: 100%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="email"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

#logreg-forms .social-login{
    width:390px;
    margin:0 auto;
    margin-bottom: 14px;
}
#logreg-forms .social-btn{
    font-weight: 100;
    color:white;
    width:190px;
    font-size: 0.9rem;
}

#logreg-forms a{
    display: block;
    padding-top:10px;
    color:lightseagreen;
}

#logreg-form .lines{
    width:200px;
    border:1px solid red;
}


#logreg-forms button[type="submit"]{ margin-top:10px; }

#logreg-forms .facebook-btn{  background-color:#3C589C; }

#logreg-forms .google-btn{ background-color: #DF4B3B; }

#logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }

#logreg-forms .form-signup .social-btn{ width:210px; }

#logreg-forms .form-signup input { margin-bottom: 2px;}

.form-signup .social-login{
    width:210px !important;
    margin: 0 auto;
}

/* Mobile */

@media screen and (max-width:500px){
    #logreg-forms{
        width:300px;
    }
    
    #logreg-forms  .social-login{
        width:200px;
        margin:0 auto;
        margin-bottom: 10px;
    }
    #logreg-forms  .social-btn{
        font-size: 1.3rem;
        font-weight: 100;
        color:white;
        width:200px;
        height: 56px;
        
    }
    #logreg-forms .social-btn:nth-child(1){
        margin-bottom: 5px;
    }
    #logreg-forms .social-btn span{
        display: none;
    }
    #logreg-forms  .facebook-btn:after{
        content:'Facebook';
    }
  
    #logreg-forms  .google-btn:after{
        content:'Google+';
    }
    
}
    	</style>
    <title>Warfighter Login Form</title>
</head>
<body>
    <div id="logreg-forms">
    	
    	<cfif message NEQ ''>
	    	<div class="alert alert-success" role="alert">
			  <cfoutput>
			  	#message#
			  </cfoutput>
			</div>
		</cfif>
    	
        <form class="form-signin" action="login.cfm" method="post">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
           <!---<div class="social-login">
                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
            </div>
            <p style="text-align:center"> OR  </p>--->
            <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="username" required="" autofocus="" autocomplete="off" >
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required="" autocomplete="off">
            
            <button class="btn btn-success btn-block" type="submit" name="loginform">
            	<i class="fas fa-sign-in-alt"></i> Sign in
            </button>
           <!--- <a href="#" id="forgot_pswd">Forgot password?</a>--->
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <!---<form action="/reset/password/" class="form-reset">
                <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form>--->
            
            <form action="login.cfm" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign Up</h1>

                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="First Name" required="" autofocus="">
                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Last Name" required autofocus="">
                <input type="email" id="email" name="email" class="form-control" placeholder="Email" required autofocus="">
                <input type="text" id="username" name="username" class="form-control" placeholder="User Name" required autofocus="">
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required autofocus="">
                
                <button class="btn btn-primary btn-block" type="submit" name="signupform"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>
            
    </div>
    <p style="text-align:center">
        <a href="http://bit.ly/2RjWFM" target="_blank" style="color:black"></a>
    </p>
    <script src="js/jquery.min.js"></script>
    <script type="application/javascript">
    	function toggleResetPswd(e){
		    e.preventDefault();
		    $('#logreg-forms .form-signin').toggle() // display:block or none
		    $('#logreg-forms .form-reset').toggle() // display:block or none
		}
		
		function toggleSignUp(e){
		    e.preventDefault();
		    $('#logreg-forms .form-signin').toggle(); // display:block or none
		    $('#logreg-forms .form-signup').toggle(); // display:block or none
		}
		
		$(()=>{
		    // Login Register Form
		    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
		    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
		    $('#logreg-forms #btn-signup').click(toggleSignUp);
		    $('#logreg-forms #cancel_signup').click(toggleSignUp);
		});
        console.clear();
    </script>
</body>
</html>