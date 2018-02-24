trigger AccountTrigger on Account (before insert, before update, after update) {
    try{
        TriggerFactory.createTriggerDispatcher(Account.sObjectType);
    }
    Catch(Exception e){
        if(e.getMessage().contains(Constants.ERROR_DUPLICATE_VALUE)) {
            for(Account accountRecord : trigger.new){
                accountRecord.addError(Label.Error_UniqueKeyDuplicateError);
            }
        }
        else {
            throw e;
        }
    }
}