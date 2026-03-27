trigger BookingTrigger on Booking__c (before insert) {
    for(Booking__c b : Trigger.new){
        if(b.Amount__c == null){
            b.Amount__c = 1000;
        }
    }
}