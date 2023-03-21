public class TestApexBatchForContacts implements Database.Batchable<Sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext Bc){
        
        return Database.getQueryLocator('select LastName from Contact');
        
    }
    
    public void execute(Database.BatchableContext bc , List<Contact> conlst){
        
        for(Contact con : conlst){
            con.lastName = 'Batch updated' + con.lastName;
        }
        update conlst;
    }
    public void finish(Database.BatchableContext Bc){
        system.debug('contact Name updated from batch process');
    }
    

}