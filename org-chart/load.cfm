<cfquery name="GetOrgUsers" datasource="warfightersupport">
	select id as memberId, parent as parentId , firstName, lastName, position as otherInfo, image from users
</cfquery>

<cfset full_path = '../admin/uploads/'/>

<cfset OrgUsersArr   = [] >
<cfset sr=0>
<cfloop query="GetOrgUsers">
	<cfset sr++>
	<cfset OrgUsersArr[sr]['memberId']   =  memberId />
	<cfset OrgUsersArr[sr]['parentId']   =  parentId />
	<cfset OrgUsersArr[sr]['firstName']   =  firstName />
	<cfset OrgUsersArr[sr]['lastName']   =  lastName />
	<cfset OrgUsersArr[sr]['otherInfo']   =  otherInfo />
	<cfset OrgUsersArr[sr]['image_path']   =  image />
</cfloop>

<cfoutput>
	#serializeJSON(OrgUsersArr)#
</cfoutput>