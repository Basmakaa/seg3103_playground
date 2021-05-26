# seg3103_playground

## Synopsis

This repository contain the code, insers and results for the first lab of the course SEG3503 during the summer term 2021.

## Java
I am running Java openjdk 14

Instruction to see the java version : 
$ java --version

Output: 
![JavaVersion](https://user-images.githubusercontent.com/58495262/118199531-551fcd00-b421-11eb-95c3-9e281974e2a8.PNG)


Instruction to compile the code on Newmath_java folder: 
javac -encoding UTF-8 --source-path src -d dist src/*.java

Instruction to execute the code: 
java -cp ./dist Main

Example of Output: 
![run](https://user-images.githubusercontent.com/58495262/118199471-37526800-b421-11eb-806d-4f97fcf3927b.PNG)



##Junit
I am working with JUnit 5 (via Console standalone 1.7.1)

To run JUnit, I need to compile the application, and then compile the test code

Instruction to compile the application :
javac -encoding UTF-8 --source-path src -d dist -cp lib/junit-platform-console-standalone-1.7.1.jar test/*.java??

Instruction to run the test : 
java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path dist --scan-class-path

Output Screenshot :
![junit](https://user-images.githubusercontent.com/58495262/118199539-58b35400-b421-11eb-9b94-f254678910a5.PNG)
 

##Elixir 

I am running Elixir 11.4 with Erlang 23

Instruction to see the version :
$ elixir --version

Output Screenshot :
 
![elixirrun](https://user-images.githubusercontent.com/58495262/118199653-86989880-b421-11eb-8cb9-b9fc86dafc28.PNG)

Instruction to compile the program:
mix compile

Instruction to execute the program:
iex -S mix

Output screenshot:

 ![Exunit](https://user-images.githubusercontent.com/58495262/118199661-8b5d4c80-b421-11eb-928e-76e4dd7a9f35.PNG)



## ExUnit

Instruction to run the test:
mix test

Output screenshot:
![ExUnitTest](https://user-images.githubusercontent.com/58495262/118199665-8d271000-b421-11eb-9a7c-efe09e8b88d8.PNG)

 


