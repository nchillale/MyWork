/**
* Class:  AccountTriggerDispatcher
* @author Original Author of Framework: Hari Krishnan, 
* @date 07/24/2017
* @description This class extends the TriggerDispatcherBase to provide the dispatching functionality for the trigger actions 
*       on the Account object. The event handlers support allowing and preventing actions for reentrant scenarios. 
*       This is controlled by the flag isBeforeXxxxx and isAfterXxxxx member variables. These variables need to be set
*       to true before invoking the handlers and set to false after the invocation of the handlers. Resetting is MUST
*       as otherwise unit tests MAY fail. The actual actions should be placed in the handlers (in a separate class).
* 
*/
public class AccountTriggerDispatcher extends TriggerDispatcherBase {
    private static Boolean isBeforeInsertProcessing = false;
    private static Boolean isBeforeUpdateProcessing = false;
    private static Boolean isAfterInsertProcessing = false;
    private static Boolean isAfterUpdateProcessing = false; 
    
    /** 
    *
    * @description Called by the trigger framework to carry out the actions before the records are inserted. If there is an
    *       existing call running on the same context, the rentrant call will utilize the handler that was created
    *       in the original call.
    * @param TriggerParameters Contains the trigger parameters which includes the records that is getting inserted.
    */
    public virtual override void beforeInsert(TriggerParameters tp) {
        if(!isBeforeInsertProcessing) {
            isBeforeInsertProcessing = true;
            execute(new AccountBeforeInsertTriggerHandler(), tp, TriggerParameters.TriggerEvent.beforeInsert);
            isBeforeInsertProcessing = false;
        }
    }
    
    
    /** 
    *
    * @description Called by the trigger framework to carry out the actions before the records are updated. If there is an
    *       existing call running on the same context, the rentrant call will utilize the handler that was created
    *       in the original call.
    * @param TriggerParameters Contains the trigger parameters which includes the records that is getting updated.
    */
    public virtual override void beforeUpdate(TriggerParameters tp) {
    }
    
    
    /** 
    *
    * @description Called by the trigger framework to carry out the actions after the records are updated. If there is an
    *       existing call running on the same context, the rentrant call will utilize the handler that was created
    *       in the original call.
    * @param TriggerParameters Contains the trigger parameters which includes the records that is getting updated.
    */
    public virtual override void afterUpdate(TriggerParameters tp) {
    }
}