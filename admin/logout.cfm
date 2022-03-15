<cfset logged_in 	= structdelete(session, 'logged_in', true)/> 
<cfset logged_id 	= structdelete(session, 'logged_id', true)/> 
<cfset username 	= structdelete(session, 'username', true)/> 
<cfset email 		= structdelete(session, 'email', true)/> 

<cflocation url="index.cfm" addtoken="no">
<cfabort >