public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String digits = "";
  double numbers = 0;
  boolean notFound = true;
  int counter = 0;
  
  while(notFound){
    for(int i = counter; i < counter + 10; i++){
      if(e.substring(i, i + 1).equals(".")){
        counter++;
      }else{
        digits = digits + e.substring(i, i+1);
      }
    }
    
    counter++;
    numbers = Double.parseDouble(digits);
    
    if(isPrime(numbers)){
      notFound = false;
      System.out.println(numbers);
    }else{
      notFound = true;
      digits = "";
      numbers = 0;
    }
  }
}  

public void draw()  
{   
	//not needed for this assignment
}  

public boolean isPrime(double dNum)  
{   
   if(num < 2)
    return false;
  
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
} 
