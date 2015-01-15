package com.mastek.rnd.tekathon.grails.smsreceiver
import grails.rest.*

@Resource(uri='/smsRequests')
class SmsRequest {


long teamId
String donorName
String donorMobile
String requestType
String requiredByWhen
String pincodeForDonation
String donationRequestId


    static constraints = {
    teamId blank: false
    donorName blank: false
    donorMobile blank: false
    requestType blank: false
    requiredByWhen blank: false
    pincodeForDonation blank: false
    donationRequestId blank: false
    }


}
