<cfcomponent displayname="UserDAO" output="true">
	<cfset datasource = "twitterDataSource">

	<cffunction name="init" returntype="any">
		<cfreturn this>
	</cffunction>

	<cffunction name="getAll" returntype="query">
		<cfset returnQuery = queryNew("user_id, name, profile_img_url, description, creation_date, email")>
		
		<cfquery name="returnQuery" datasource="#datasource#">
			SELECT user_id,
					name, 
					profile_img_url,
					description,
					creation_date,
					email
			FROM Users
		</cfquery>

		<cfreturn returnQuery>
	</cffunction>

</cfcomponent>
