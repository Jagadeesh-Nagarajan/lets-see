<cfquery name="test" datasource="cfartgallery" >
	select * from
	ART
</cfquery>

<!---<cfdump var="#test#">--->



<!---<form name="myForm" action="targetPage.cfm" method="post">
<!---Enter some text here --->
<input type="text" size="50" value="Enter some text here" maxlength="150" 
	name="someText"> 
<br/>
Check if you like this guide <input type="radio" value="1" name="likeGuide" checked> 
Check if you don't <input type="radio" value="0" name="likeGuide"> <br/>
<input type="submit" value="send this form"> <br/>
</form>

Function that output to the screen: <br/>
<cffunction name="helloWorld" access="public" output="yes" returnType="void" 
	hint="Prining hello world on the screen.">
  Hello World <br/>
</cffunction>
To access above function (i.e. run it): <br/>
<cfset helloWorld()>
OR <br/>
<cfoutput>#helloWorld()#</cfoutput>--->

<cfinvoke   method="retrieveArt"
   returnvariable="rawXMLArtList"
   webservice="http://localhost:8500/customer.cfc?wsdl">

   <cfinvokeargument name="category" value="123">
</cfinvoke>

<cfset computerBooks = XmlParse(rawXMLArtList)>

<cfdump var="#computerBooks#">