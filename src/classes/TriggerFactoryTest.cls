/**
*******************************************************************************
* Class: TriggerFactoryTest
* @author Created by V Singh, Rainmaker Associates, LLC, 08/21/2017
* @version 1.0
* ----------------------------------------------------------------------------------
* @description Purpose/Methods:
*  - Test the TriggerFactory class
*
*
**/

@isTest
private class TriggerFactoryTest {
    /**
    * @Description sets up test users
    *
    * @return null
    */ 
    @testSetup static void setup() {
    }
    
    
    /**
    * @Description Test TriggerDispatcherBase class when called from TriggerFactory to throw error for invalid class type
    *
    * @return null
    */ 
    @isTest static void testNoTriggerDispatchRegisteredError() {
        try {
            TriggerFactory.createTriggerDispatcher(EmailTemplate.sObjectType);
        
        } catch(Exception e) {
            String message = String.format(Label.Error_TriggerInvalidObjectException, 
                                        new String[] {Constants.ST_EMAILTEMPLATE});
            System.assertEquals(message, e.getMessage());
        }
    }
}