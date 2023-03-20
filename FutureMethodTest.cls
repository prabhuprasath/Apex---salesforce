public class FutureMethodTest {
    
   /*
    when to use future method - whenever you want your code to run on background use future method
	syntax - must use static void and @future annotation in the method
	Future method only accepts primitive datatypes as a parameter
    */
    
    public FutureMethodTest(){
        wakeUp();
        haveBreakFast();
        carService();
        watchMovie();
    }
    
    public static void wakeUp(){
        system.debug('wakeUp early');
    }
    
    public static void haveBreakFast(){
        system.debug('Have BreakFst');
    }
    
    @Future
    public static void carService(){
        system.debug('Take car to service center');
    }
    
    public static void watchMovie(){
        system.debug('watch any new movie');
    }
	
    
}