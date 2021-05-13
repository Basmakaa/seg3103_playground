# seg3103_playground

## Synopsis

This repository contain the code, insers and results for the first lab of the course SEG3503 during the summer term 2021.

## Java
I am running Java openjdk 14

Instruction to see the java version : 
$ java --version

Output: 
 

Instruction to compile the code on Newmath_java folder: 
javac -encoding UTF-8 --source-path src -d dist src/*.java

Instruction to execute the code: 
java -cp ./dist Main

Example of Output: 
 

##Junit
I am working with JUnit 5 (via Console standalone 1.7.1)

To run JUnit, I need to compile the application, and then compile the test code

Instruction to compile the application :
javac -encoding UTF-8 --source-path src -d dist -cp lib/junit-platform-console-standalone-1.7.1.jar test/*.java??

Instruction to run the test : 
java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path dist --scan-class-path

Output Screenshot :
 

##Elixir 

I am running Elixir 11.4 with Erlang 23

Instruction to see the version :
$ elixir --version

Output Screenshot :
 


Instruction to compile the program:
mix compile

Instruction to execute the program:
iex -S mix

Output screenshot:

 



## ExUnit

Instruction to run the test:
mix test

Output screenshot:

 


