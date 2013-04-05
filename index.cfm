<cfinvoke   method="retrieveArt"
   returnvariable="rawXMLArtList"
   webservice="http://localhost:8500/customer.cfc?wsdl">

   <cfinvokeargument name="category" value="123">
</cfinvoke>

<cfset computerBooks = XmlParse(rawXMLArtList)>

<cfdump var="#computerBooks#">