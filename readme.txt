https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/

add file .gitignore in base dir with sample content

*.iws
*Db.properties
*Db.script
.settings
*.log
/*DB.*
/cobertura.ser
.DS_Store
/target/

### Eclipse files
.project
.classpath
.settings

### IDEA Files
.idea/
*.iml
out/


git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/ganeshghag-mastek/PlateletRestApp.git
git remote -v
git push -u origin master








Method 1:
POST to http://tekathonsms-ideafountain.rhcloud.com/smsRequests.json
using json data as
{
"teamId":"101",
"donorName":"Ganesh Ghag",
"donorMobile":"9876543210",
"requestType":"Platelets",
"requiredByWhen":"2015-01-09 12:01:01.123",
"pincodeForDonation":"400606",
"donationRequestId":"10483838"
}

example:
curl -i -X POST -H "Content-Type: application/json" -d @req.json http://tekathonsms-ideafountain.rhcloud.com/smsRequests.json


Method 2:
Invoke http://tekathonsms-ideafountain.rhcloud.com/sms-sink.jsp with query parameters as follows:
teamId=101&
donorName=First%20Last&
donorMobile=9876543210&
requestType=Platelets&
requiredByWhen=2015-01-09%2012:01:01&
pincodeForDonation=400606&
donationRequestId=10483838

example 
http://tekathonsms-ideafountain.rhcloud.com/sms-sink.jsp?teamId=101&donorName=First%20Last&donorMobile=9876543210&requestType=Platelets&requiredByWhen=2015-01-09%2012:01:01&pincodeForDonation=400606&donationRequestId=10483838