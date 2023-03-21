public class TestApexBatch implements Database.Batchable<Sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext Bc){
        return Database.getQueryLocator('select id,name from Account');
        
    }
    public void execute(Database.BatchableContext bc , List<Account> lstFromStart){
        for(Account acc :lstFromStart ){
            acc.name = 'Batch updated'+ acc.Name;
        }
        update lstFromStart;
    }
    
    public void finish(Database.BatchableContext bc){
        system.debug('Account updated for batch process');
        Database.executeBatch(new TestApexBatchForContacts() , 200);
    }

}