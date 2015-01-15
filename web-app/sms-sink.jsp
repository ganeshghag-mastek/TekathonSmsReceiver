<%@ page import="java.util.List" %>
<%
String teamId = "";
String donorName = "";
String donorMobile = "";
String requestType = "";
String requiredByWhen = "";
String pincodeForDonation = "";
String donationRequestId = "";

String usage = "Usage: <hr>/sms-sink.jsp?teamId=101&donorName=First Last&donorMobile=9876543210&requestType=Platelets&requiredByWhen=2015-01-09 12:01:01&pincodeForDonation=400606&donationRequestId=10483838";

out.println(usage);

 teamId = request.getParameter("teamId");
 donorName = request.getParameter("donorName");
 donorMobile = request.getParameter("donorMobile");
 requestType = request.getParameter("requestType");
 requiredByWhen = request.getParameter("requiredByWhen");
 pincodeForDonation = request.getParameter("pincodeForDonation");
 donationRequestId = request.getParameter("donationRequestId");


//out.println("<br><br><br> Date.today().toString('yyyy-MM-ddTHH:mm:ssZ') <br> <br>");

%>


<!DOCTYPE html>
<html>
<body>
<h2>Platelet Donation Application: SMS Sink Page</h2>
<hr>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="date.js"></script>
<script type="text/javascript" src="myglobals.js"></script>
<script type="text/javascript" charset="utf-8">

$(document).ready(function(){
	console.log("from inside jquery init...");
	insertSmsRequest();
});

function insertSmsRequest(){
    var req = {
		"teamId":$('#teamId').val(),
"donorName":$('#donorName').val(),
"donorMobile":$('#donorMobile').val(),
"requestType":$('#requestType').val(),
"requiredByWhen":$('#requiredByWhen').val(),
"pincodeForDonation":$('#pincodeForDonation').val(),
"donationRequestId":$('#donationRequestId').val()
    }

	test_ajax("POST",webcontext+"/smsRequests.json",req);
}

function test_ajax(httpMethod, url, indata){
	
	$.ajax({
		type: httpMethod,
		url: url,
		data: JSON.stringify(indata),
		headers: { 
	        'Content-Type': 'application/json' 
	    },
		success: function(mydata){
			console.log("from inside ajax get success ret = "+JSON.stringify(mydata));
			alert("your sms submission was successful, id of inserted sms entry is "+mydata.id);
			//$("#ret_data").html(JSON.stringify(mydata));
			//$("#id").html(mydata.id);
		},
		dataType: "json",
		contentType: "applicaton/json",
		error: function (request, status, error) {
             alert(request.responseText);
        }
		
		
	});
}

</script>

<input type="hidden" id="teamId" name="teamId" value="<%=teamId%>"/>
<input type="hidden" id="donorName" name="donorName" value="<%=donorName%>"/>
<input type="hidden" id="donorMobile" name="donorMobile" value="<%=donorMobile%>"/>
<input type="hidden" id="requestType" name="requestType" value="<%=requestType%>"/>
<input type="hidden" id="requiredByWhen" name="requiredByWhen" value="<%=requiredByWhen%>"/>
<input type="hidden" id="pincodeForDonation" name="pincodeForDonation" value="<%=pincodeForDonation%>"/>
<input type="hidden" id="donationRequestId" name="donationRequestId" value="<%=donationRequestId%>"/>



<a href="http://localhost:8080/TekathonSmsReceiver/smsRequests.json?max=9999"> To Check Listing</a>
</body>



</html>
