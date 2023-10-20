import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.After;

import main.PetStore;

public aspect AdviceQuerety {

	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	
	before():verifyAssurance(){
		
		String petName = PetStore.readConsole("Name of your Pet:");
		System.out.println(String.format("Welcome %s",petName));
		System.out.println("You are able to use this service");
			
	}	

	after():verifyAssurance(){
		System.out.println("Request was executed successfully");
		System.out.println("Prueba completa");
		
	}	 
	
	

}
