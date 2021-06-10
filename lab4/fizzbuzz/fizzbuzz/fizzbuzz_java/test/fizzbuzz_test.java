package fizzbuzz_java.test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class fizzbuzz_test {
    
	private String fizzBuzz(int num){
		if (num%15 == 0) {
			return "FizzBuzz";
		}
		else if (num % 3 == 0){
			return "Fizz";
		}
		 else if (num % 5 == 0){
			return "Buzz";
		}
		else if( num == 0){
			return "0";

		}
		else {
		return Integer.toString(num);
		}
	}

	@Test
	public void test_fizzBuzz1(){
		assertEquals("1", fizzBuzz(1));
	}
	@Test
	public void test_fizzBuzz2(){
		assertEquals("FizzBuzz", fizzBuzz(15));
	}
	@Test void test_fizzBuzz3(){
		assertEquals("Fizz", fizzBuzz(3));
	}
	@Test
	public void test_fizzBuzz4(){
		assertEquals("Buzz", fizzBuzz(5));
	}
	@Test
	public void test_fizzBuzz5(){
		assertEquals("0", fizzBuzz(0));
	}

	
    
}
