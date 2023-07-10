trigger Account_TriggerFramework on Account (before insert) {
    
    new Account_Trigger_Handler().run();

}