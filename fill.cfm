<!--- filling dynamic form with data --->
<cfscript>
firstname = "Charlie";
lastname = "Tunoku";
products = [
	{name="Product 1", price=3},
	{name="Product 2", price=10},
	{name="Product 3", price=15}
];
</cfscript>

<cfpdfform source="forms/dynamic.pdf" action="populate" overwritedata="true"  >

	 <cfpdfsubform name="form1"> 
        <cfpdfformparam name="firstname" value="#firstname#"> 
        <cfpdfformparam name="lastname" value="#lastname#"> 

		<cfloop index="i" from="1" to="#arraylen(products)#" >
			<cfpdfsubform name="items" index="#i#">
				<cfpdfformparam name="product_name"   value="#products[i].name#"/>
				<cfpdfformparam name="product_price"  value="#products[i].price#"/>
			</cfpdfsubform>
		</cfloop>

    </cfpdfsubform> 

</cfpdfform>