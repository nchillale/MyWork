/**
* @author Hari Krishnan
* @date 07/16/2013
* @description This class has helper methods.
*/

public class UtilityClass {
    
    /**
    * @author Hari Krishnan
    * @date 07/16/2013
    * @description Gets the type name of the SObject.
    * @param SObject The SObject for which the name to be obtained.
    * @return String - The type name.
    */
    public static String getSObjectTypeName(SObject sobj) {
        return sobj.getSObjectType().getDescribe().getName();
    }
    
    
    /**
    * @author V Singh
    * @date 07/27/2017
    * @description Gets the fields metadata from fieldset of the given SObject.
    *
    * @param objectName - The SObject for which fields metadata of fieldset is retrieved.
    * @param fieldSetName - The fielset whose fields metadata is retrieved.
    *
    * @return List<Schema.FieldSetMember> - fields metadata by fieldset name of given object.
    */   
/*    public static List<Schema.FieldSetMember> readFieldSet(String objectName, String fieldSetName) {
        Map<String, Schema.SObjectType> globalDescribeByName = Schema.getGlobalDescribe(); 
        Schema.DescribeSObjectResult describeSObjectResultObj = globalDescribeByName.get(objectName).getDescribe();  
        
        //Retrieving fieldset data from object describtion
        Schema.FieldSet fieldSetObj = describeSObjectResultObj.FieldSets.getMap().get(fieldSetName);
                    
        return fieldSetObj.getFields(); 
        
    }
*/    

    /**
    * @author V Singh
    * @date 08/28/2017
    * @description Gets the record types of given SObjects
    *
    * @param objectName - The SObject for which record type needs to be retrieved.
    *
    * @return Map<String, RecordTypeInfo> - Record type metadata of given object.
    */    
    public static Map<String, RecordTypeInfo> readRecordType(String objectName) {
        Map<String, Schema.SObjectType> mapSObj = Schema.getGlobalDescribe();
        DescribeSObjectResult sObjResult = mapSObj.get(objectName).getDescribe();
        Map<String, RecordTypeInfo> sObjectRTByLabel = sObjResult.getRecordTypeInfosByName(); 
        return sObjectRTByLabel;       
    }

}