/**
*******************************************************************************
* Class: AccountBeforeTriggerHandler
* @author 
* @version 1.0
* ----------------------------------------------------------------------------------
* @description Purpose/Methods:
*  - Business rules for Accounts specific to before inserting new Account records
*
*/

public class AccountBeforeInsertTriggerHandler extends TriggerHandlerBase {
    /**
    * @description MainEntry point where the trigger is first executed
    * @param TriggerParmeters contains the trigger context variables
    * @return null
    */    
    public override void mainEntry(TriggerParameters tp) {
        //AccountDomain.testDXMethod(tp.newList);
    }
}