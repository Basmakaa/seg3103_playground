# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab4

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## FizzBuzz

Fist i did compile using: mix compile 
and i did execute the elixir test using : mix test 
![FizzBuzzcompile_exec](https://user-images.githubusercontent.com/58495262/121588971-88e01980-ca04-11eb-8072-80b881dbbcd4.png)

I've chosen the FizzBuzz project to work on

To compile it, we run javac -encoding UTF-8 --source-path test -d dist -cp dist:lib/junit-platform-console-standalone-1.7.1.jar test/*.java. 
To execute the tests i used:  java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path dist --scan-class-path.

The goals is to create 5 tests that fail at the beginning and then try correct it or refactor it so it passes. 
The main casses that i've chosen and that should be tested are :
Test 1 : case if the number is 1 that the output should be 
Test 2: 1Case if the number can be devided by 15, then the output should return FizzBuzz 
Test3 : If the number can be devided by three that the output should be Fizz
Test4 : If the number can be devided by 5 the output should be Fuxx
Test 5: if the number is equal to 0 than the output should be also equal to 0 

I had some typo mistakes, like for example i wrote for test4 if the number is devided by 4 but should be 5. 
All the mistakes were corrected . 

![Tests](https://user-images.githubusercontent.com/58495262/121590180-03f5ff80-ca06-11eb-8d17-cb8a421e5b53.png)



