//QueueableApex - Async process
public class QueableApexTest implements Queueable{
    
    public void execute(QueueableContext qc){
        
        List<Account> acclst = [select Name from Account where CreatedDate = Today];
        delete acclst;
        
        system.enqueueJob(new SecondQueueableApexTest());
    }

}
