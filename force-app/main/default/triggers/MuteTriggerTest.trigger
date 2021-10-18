trigger MuteTriggerTest on Account (before Insert) {

Mute__c mc = Mute__c.getOrgDefaults();
if(mc.MuteTrigger__c==false)
{
    for(Account acc : Trigger.New) {
      acc.tobeUpdated__c=true;
    }
}

}