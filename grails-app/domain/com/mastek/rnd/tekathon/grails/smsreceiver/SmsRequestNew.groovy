package com.mastek.rnd.tekathon.grails.smsreceiver
import grails.rest.*

@Resource(uri='/smsRequests')
class SmsRequestNew {


String entryDateTime
long teamId
String donorName
String donorMobile
String requestType
String requiredByWhen
String pincodeForDonation
String donationRequestId



    static constraints = {
    entryDateTime blank: false
    teamId blank: false
    donorName blank: false
    donorMobile blank: false
    requestType blank: false
    requiredByWhen blank: false
    pincodeForDonation blank: false
    donationRequestId blank: false
    }


}
