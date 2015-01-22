<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%

%>


<!DOCTYPE html>
<html>
<body>
<h2>Platelet Donation Application: Delete SMS Page</h2>
<hr>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="date.js"></script>
<script type="text/javascript" src="myglobals.js"></script>
<script type="text/javascript" charset="utf-8">

$(document).ready(function(){
	console.log("from inside jquery init...");

});

function deleteSmsRequest(){
    var from_id = $('#from_id').val();
	var to_id = $('#to_id').val();

    for(i = from_id; i <= to_id ; i++)
  	   test_ajax("DELETE",webcontext+"/smsRequests/"+i,null);
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
			alert("from inside ajax delete success ret = "+JSON.stringify(mydata));
		},
		dataType: "json",
		contentType: "applicaton/json",
		error: function (request, status, error) {
             alert("error:"+request.responseText);
        }
		
		
	});
}

</script>

<input type="text" id="from_id" name="from_id" value="1"/>
<input type="text" id="to_id" name="to_id" value="1"/>

<input type="button" onclick='deleteSmsRequest();' value="Delete SMS Records">




</body>



</html>
