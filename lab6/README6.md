# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab6

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## Part 1

Fist i did check the version of maven using : mvn -version 
![mvn_compile](https://user-images.githubusercontent.com/58495262/126384688-33b194eb-0b2b-4dfc-897c-68ca75a9c011.png)

Then i did compile the app using : mvn compile 

![mvn_compile2](https://user-images.githubusercontent.com/58495262/126384752-d7fa92c0-9040-4fc1-ae02-1fa796683148.png)

After that i've used the to package all the jar files into one using the command : mvn package -DskipTests

![onefile](https://user-images.githubusercontent.com/58495262/126385737-7ff3ac00-28ee-422b-a446-67efeb7e7572.png)


Then i executed the app using the command : java -jar ./target/BookstoreApp-0.1.0.jar

![javaexec](https://user-images.githubusercontent.com/58495262/126385657-6b111589-3326-4bdb-92c4-35b18d95f0da.png)

When we get access to localhost:8080 on the browser, the app is showing like the following 

![appscreen](https://user-images.githubusercontent.com/58495262/126386221-604eb2da-42a1-49d0-b32a-c4c7937794ce.png)

## Test developped 

Using the command : nvm test. The build was successful 

![mvntest](https://user-images.githubusercontent.com/58495262/126407616-31cbd508-2cf5-474e-b58e-255ef0d484dd.png)

Now here is the additional test that i've added 

![addtest](https://user-images.githubusercontent.com/58495262/126416515-93cc5c7c-e1e8-4dec-9ddb-2f3c14542e59.png)

After i've runned it has build successfully 

![buildsuccess](https://user-images.githubusercontent.com/58495262/126417122-43317274-bdb1-47e0-8f56-00133fe9ddcb.png)










