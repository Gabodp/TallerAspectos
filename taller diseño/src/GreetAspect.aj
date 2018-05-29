 
public aspect GreetAspect {
	
	long startTime;
	
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    	before(): callGreeting() {
    		startTime = System.nanoTime();
    	}
    
    	after(): callGreeting() {
    		long estimatedTime = System.nanoTime() - startTime;
    		System.out.println("\n"+estimatedTime);
    	}

}