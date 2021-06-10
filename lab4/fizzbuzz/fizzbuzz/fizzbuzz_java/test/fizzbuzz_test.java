package fizzbuzz_java.test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class fizzbuzz_test {
    
	private String fizzBuzz(int num){
		return num.toString();
	}

	@Test
	public void test_fizzBuzz1(){
		assertEquals("1", fizzBuzz(1));
	}
	@Test
	public void test_fizzBuzz2(){
		assertEquals("2", fizzBuzz(2));
	}
	@Test void test_fizzBuzz3(){
		assertEquals("Fizz", fizzBuzz(3));
	}
    
}
