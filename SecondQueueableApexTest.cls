public class SecondQueueableApexTest implements Queueable {
    
    public void execute(QueueableContext qc){
       Lead ls = new Lead();
        ls.LastName = 'Testlead1';
        ls.Company = 'TestCompany1';
        Lead ls2 = new Lead();
        ls2.LastName = 'Testlead2';
        ls2.Company = 'testcompany2';
        List<Lead> leads = new List<Lead>();
        leads.add(ls);
        leads.add(ls2);
        insert leads;
        
      
    }

}