<!--- receiving data --->
<cfif isDefined("pdf.content")>
<!--- pdf.content is the raw binary data of the submitted data --->

<!--- for saving the result --->
<!---
	<cfscript>
	stamp = createODBCDateTime(now()).getTime();
	
	filename = "feedback_#stamp#.pdf";
	
	</cfscript>
	<cffile action="write" output="#pdf.content#" file="C:\ColdFusion9\wwwroot\files\#filename#">
 --->

<!--- read the pdf and get the form data --->
	<cfpdfform 
	   action="read" 
	   source="#pdf.content#" 
	   result="feedbackData" />
 
	<cfdump var="#feedbackData#">
	
</cfif>