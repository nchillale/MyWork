/**
* @author 
* @date 
* @description This class maintains mapping of sobject type to trigger dispatch name.
    Support use case when length of sobjecttype.name + 'TriggerDispatcher' is greater than 40
*
*
/*
 * Maintains mapping of sobject type to trigger dispatch name.
 *
 * Support use case when length of sobjecttype.name + 'TriggerDispatcher' is greater than 40
 *
 *
 *  Examples:
 *    String dipatcherName = TriggerDispatcherRegistry.get('pse__Resource_Request__c');
 */
public class TriggerDispatcherRegistry {
    /*
     * Support use case when length of sobjecttype.name + 'TriggerDispatcher' is greater than 40
     *
     *      Key     for map should be schema.sobjectType for the dispatcher
     *      Value   for map should be name of the apex class which implements ITrggerDispatcher
     *
     *  Example:
     *    new Map<String, String>{
     *      ffct__ConsultantToolConfigurationSetting__c.sObjectType.getDescribe().getName() => 'ConsultantToolConfigTriggerDispatcher'
     *    };
     */
    public static final Map<Schema.sObjectType, String> registeredDispatchers = new Map<Schema.sObjectType, String> {
        // sobject name => apex class name for trigger dispatcher

        // -- PSA related trigger dispatcher mappings
        /*pse__Budget__c.sObjectType                   => 'PsaBudgetTriggerDispatcher',
        Case_Assignment_Request__c.sObjectType       => 'PsaCaseAssignReqTriggerDispatcher',
        pse__Est_Vs_Actuals__c.sObjectType           => 'PsaEstVsActualsTriggerDispatcher',
        pse__Expense_Report__c.sObjectType           => 'PsaExpenseReportTriggerDispatcher',
        pse__Resource_Request__c.sObjectType         => 'PsaResourceRequestTriggerDispatcher',
        pse__Timecard_Header__c.sObjectType          => 'PsaTimecardHeaderTriggerDispatcher',
        pse__Project_Location__c.sObjectType         => 'PsaProjLocationTriggerDispatcher',
        pse__Project_Methodology__c.sObjectType      => 'PsaProjMethodTriggerDispatcher',
        pse__Assignment__c.sObjectType               => 'PsaAssignmentTriggerDispatcher',
        pse__Expense__c.sObjectType                  => 'PsaExpenseTriggerDispatcher',
        */

    };


    /* returns true when the underlying registered dispatcher map contains the
     * specific input key, otherwise returns false

     */
    public static Boolean containsKey (Schema.sObjectType input) {
        return registeredDispatchers != null ? registeredDispatchers.containsKey(input) : false;
    }

    /* returns the string value of the registered dispatcher or null if not exists
     */
    public static String get (Schema.sObjectType input) {
        return registeredDispatchers != null ? registeredDispatchers.get(input) : null;
    }

}