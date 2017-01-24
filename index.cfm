<form action="doLogin.cfm" method="post">
	<div>
		<div>Email:<input type="text" name="email"/></div>
		<div>Password:<input type="password" name="password"/></div>
		<button type="submit">Login</button>
    </div>
</form>
<cfset userDAO = createObject('component', 'UserDAO').init()>

<!--- <table>
	<tr>
	    <th>Name</th>
	    <th>Description</th> 
	    <th>Creation Date</th>
	    <th>Email</th>
	</tr>
	<cfoutput>
		<cfloop query="#userDAO.getAll()#">
			<tr>
			    <th>#name#</th>
			    <th>#description#</th> 
			    <th>#creation_date#</th>
			    <th>#email#</th>
			</tr>
		</cfloop>
	</cfoutput>
</table> --->
<a href="register.cfm">Register</a>