public with sharing class Account_Trigger_Handler extends TriggerHandler{

    public override void beforeInsert(){
        Account_UtilityFramework.updateAccount(trigger.new);
        Account_UtilityFramework.createAccount();
    }

    
}