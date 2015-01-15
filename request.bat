
rem curl -i -X POST -H "Content-Type: application/json" -d "{'teamId':'101','donorName':'John Doe','donorMobile':'9876543210','requestType':'Platelets','requiredByWhen':'2015-01-09 12:01:01.123','pincodeForDonation':'400606','donationRequestId':'10483838'}" http://localhost:8080/TekathonSmsReceiver/smsRequests.json

rem curl -i -X POST -H "Content-Type: application/json" -d @req.json http://tekathonsms-ideafountain.rhcloud.com/smsRequests.json
curl -i -X POST -H "Content-Type: application/json" -d @req.json http://localhost:8080/TekathonSmsReceiver/smsRequests.json
