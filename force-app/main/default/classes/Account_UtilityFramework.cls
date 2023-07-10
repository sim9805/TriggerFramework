public with sharing class Account_UtilityFramework {
     
    private static String HANDLER_NAME = 'Account_Trigger_Handler';

    //here logic comes suppose we wants to update account name while new account insert.
    

    public static void updateAccount(List<Account> accountList){
        for(Account acc : accountList){
            acc.Rating = 'Hot';
        }
    }

    public static void createAccount(){
        
        TriggerHandler.bypass(HANDLER_NAME);

        Account a = new Account();
        a.Name = 'Cool Account';
        insert a;

        TriggerHandler.clearBypass(HANDLER_NAME);
    }
}