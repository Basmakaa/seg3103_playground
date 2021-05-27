# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab2

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## EXERCICE 1: Register Tests
Fist i did execute the command : java -jar user-registration-app-0.1.0.jar
and then had access to the link put on the lab : http://localhost:8080/.
The register page looks like this 

![localhost](https://user-images.githubusercontent.com/58495262/119888683-ad67cc00-bf03-11eb-8b5b-dca882dac1ec.png)

After executing and compiling the tests here is the table of the expected vs the actual results. We can see that only one test failed and thats because inputs were written in wrong format.  

![tables](https://user-images.githubusercontent.com/58495262/119891613-2fa5bf80-bf07-11eb-85f1-abf557ca5f1d.png)


## EXERCICE2 : Date tests

First step i did compile the app using the command :javac -encoding UTF-8 --source-path src -d dist src/*.java

Second step i did develop all my test cases, you can find the code the files DateTest.java, DateNextDateOkTest.java and DateNextDateExceptionTest.java. 

Third Step i did compile the test using the command: javac -encoding UTF-8 --source-path src -d dist -cp lib/junit-platform-console-standalone-1.7.1.jar test/*.java

Fourth and last step did run the tests using the following command:java -jar lib/junit-platform-console-standalone-1.7.1.jar --class-path dist --scan-class-path

Screenshot results:

![test1](https://user-images.githubusercontent.com/58495262/119890259-9cb85580-bf05-11eb-92f0-15393558ec3f.png)

![test2](https://user-images.githubusercontent.com/58495262/119890290-a5a92700-bf05-11eb-8727-3b117b9acc9d.png)

![TestZoomed](https://user-images.githubusercontent.com/58495262/119892075-b3f84280-bf07-11eb-9c77-b594ba9edc33.PNG)

All of the tests successfully passed !


