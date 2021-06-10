# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab3

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## Computation 
Fist i did compile the application using : javac -encoding UTF-8 --source-path src -d dist src/*.java

and then Compiled the tests using : javac -encoding UTF-8 --source-path src -d dist -cp lib/junit-platform-console-standalone-1.7.1.jar test/*.java

and then i did run the agent: java -javaagent:lib/jacocoagent.jar -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path dist --scan-class-path

![Comput_exec](https://user-images.githubusercontent.com/58495262/120690777-a39a1780-c473-11eb-8da0-ed10d51dcac5.png)

after that i generated the jacoco report using : java -jar lib/jacococli.jar report jacoco.exec --classfiles dist --sourcefiles src --html report

![comput_runreport](https://user-images.githubusercontent.com/58495262/120691544-9af61100-c474-11eb-8f10-4fafb411bc9d.png)

and finally i did opened the report using: open ./report/index.html

Here is a screenshot of the jacoco report of Computation.java :

![Comput_jacoco](https://user-images.githubusercontent.com/58495262/120691058-fd9add00-c473-11eb-90ad-634643d88993.png)



## EXERCICE 1 : Date

I used the same commands to run the compile, execute and display the jacoco report for Date

Screenshot of the test execution:
![executing the program](https://user-images.githubusercontent.com/58495262/120691607-ad704a80-c474-11eb-9536-f2538f8dccaa.png)

here is a screenshot of the report before any refactoring or changes :

![executing the program](https://user-images.githubusercontent.com/58495262/120691607-ad704a80-c474-11eb-9536-f2538f8dccaa.png)


First i tackled the setDay(int) and achieved a full coverage by adding the 3 following tests which test for the cases where the day is greater than 31, where the day is greater than 30 for a 30-day month, and where the day is greater than 29 in February in a leap year:
@Test
void nextDate_invalid_setDay() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(1975, 6, 32)
    );
}

@Test
void nextDate_invalid_setDay2() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(2010, 4, 31)
    );
}

@Test
void nextDate_invalid_setDay3() {
    assertThrows(
      IllegalArgumentException.class,
      () -> new Date(2020, 2, 30)
    );
}

}

Then i tackled and achieved full coverage for the toString() method by adding the following test:

@Test
void nextDate_toString(){
    Date date = new Date(2021,5,27);
    assertEquals("2021/May/27",date.toString());
}

Thirdly i tackled and achieved 100% coverage for the equals(Object) method. The original test suite did not include tests where a date was compared to an object. The equals() method should return False in this case. We also had to add tests to compare dates where the year, month, and day are different between the two dates (nextDate_equals2()), where the months and days are different between the two dates (nextDate_equals3()), and where the days are different between the two days (nextDate_equals4()). 

@Test
void nextDate_equals(){
    Object obj = new Object();
    Date date = new Date(2021,5,27);
    assertFalse(date.equals(obj));
}

@Test
void nextDate_equals2(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2020,4,26);
    assertFalse(date.equals(date2));
}

@Test
void nextDate_equals3(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2021,4,26);
    assertFalse(date.equals(date2));
}

@Test
void nextDate_equals4(){
    Date date = new Date(2021,5,27);
    Date date2 = new Date(2021,5,26);
    assertFalse(date.equals(date2));
}

After that, i tried to improved the coverage for the method isEndOfMonth(). The initial test suite did not include a test where the year is not a leap year, the month is February (2), and the day is the 28th. As well, it did not include a test where the year is a leap year, the month is February (2), and the day is the 28th. However, it is not possible to obtain 100% coverage. It is impossible for the month of February to have 29 days if it is not a leap year, so the branch with this condition cannot be covered.

@Test
void nextDate_endOfMonth(){
    Date today = new Date(2021, 2, 28);
    Date expectedTomorrow = new Date(2021, 3, 1);
    assertEquals(expectedTomorrow, today.nextDate());
}

@Test
void nextDate_endOfMonth2(){
    Date today = new Date(2020, 2, 28);
    Date expectedTomorrow = new Date(2020, 2, 29);
    assertEquals(expectedTomorrow, today.nextDate());
}

Next, we achieved 100% coverage for the method isLeapYear(). The initial test suite did not include a test where the year was a century year divisible by 400. So, we added the following test case, where the year is 2000 (which is a century year divisible by 400):

@Test 
void nextDate_leapYear(){
    Date today = new Date(2000, 1, 1);
    Date expectedTomorrow = new Date(2000, 1, 2);
    assertEquals(expectedTomorrow, today.nextDate());
}

And lastly i did achieve 100% coverage for the method isThirtyDayMonth(). The initial test suite did not include a test case for the month of September (month 9), which is a thirty day month. We added the following test case:

@Test
void nextDate_month9() {
    Date today = new Date(1901, 9, 1);
    Date expectedTomorrow = new Date(1901, 9, 2);
    assertEquals(expectedTomorrow, today.nextDate());
}

After all those modification i received the following report results 

![ReportDate_after](https://user-images.githubusercontent.com/58495262/120701872-69d00d80-c481-11eb-86ee-54b998f0ee5e.png)

## Ecercice 2 : Refactoring Code 

A quick note to mention that the tests used in the first exercice were removed to test better the refactoring methods 

This the report before applying the refactoring :

![executing the program](https://user-images.githubusercontent.com/58495262/120691607-ad704a80-c474-11eb-9536-f2538f8dccaa.png)

I decided to tackle the setDay() and isThirtyDayMonth() methods 

this is the ney setDayt() method :


![setday](https://user-images.githubusercontent.com/58495262/120704319-74d86d00-c484-11eb-8525-8c97e77b552f.png)

New isThirttDayMonth():

![isthirty](https://user-images.githubusercontent.com/58495262/120704392-84f04c80-c484-11eb-8c11-71d9b80c853e.png)

After those modifications, here is the new report that i got :
![refactor_report](https://user-images.githubusercontent.com/58495262/120705442-d5b47500-c485-11eb-9d7b-c1202a527cb2.png)

Compared to the initial code coverage generated, we can see that the coverage for both refactored method improved. setDay() went from 64% instruction coverage to 80% and isThirtyDayMonth went from 87% branch coverage to 100% branch coverage.The instruction coverage for setDay improved due to having less if statement to test. Initially, this method had 5 if statements and after our refactorisation, it only has 3. This is what makes the instruction coverage change for the better.As for isThirtyDayMonth, the branch coverage improved due to having less possibilites inside the if statement. Before we made changes, the method had 4 OR statements. Now, it only has to check if the month is part of a list of month that have 30 days. This makes the code a bit cleaner and reduces the number of branches to check while testing.


