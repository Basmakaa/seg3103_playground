# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab7

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## Part 1

I made sure to compile and execute de program using the commands : 
javac -d dist src/*.java
java -cp ./dist Main

![compile+exec](https://user-images.githubusercontent.com/58495262/126668391-9b386ef5-a37c-48d5-862e-c4d67a487a36.png)


And then, i did execute the tests that have run all successfully 

![testcompile](https://user-images.githubusercontent.com/58495262/126668430-5962abe2-662c-4659-8257-7c41fb97d884.png)

## SpotBugs part 

As we all know and as it's name seems to mean SpotBugs helps spot bugs in any piece code runned with Java 

So first i did execute the program using the command 

java -jar ./lib/spotbugs/lib/spotbugs.jar

![spotbugsexec](https://user-images.githubusercontent.com/58495262/126669886-4f27b0ba-b361-43cf-ade5-b36b8f56accc.png)

then i've created a new project with the following info 

![infoproject](https://user-images.githubusercontent.com/58495262/126670011-259f4ac6-ee07-4c39-8c40-6edee6f4c3c5.png)


After that, i've clicked in the "Analyze button" to actually have the following results 

![bug](https://user-images.githubusercontent.com/58495262/126670097-61cc5654-5899-4d92-aadc-f42370da1aa2.png)

As we can see in the left corner of the analysis, we have 18 bugs including 2 Bad practice, 6 Dodgy Code and 10 in Performance

Here are the specific type of error in each type of bugs :

BAD PRACTICE: 

![badpractice](https://user-images.githubusercontent.com/58495262/126673087-9b310546-5d5d-4350-befa-f66c806e12a1.png)

PERFORMANCE : 

![performance](https://user-images.githubusercontent.com/58495262/126673119-7a1ceb5e-2c64-4a5c-8b5a-eacc24be97cf.png)

DODGY: 

![dodgy](https://user-images.githubusercontent.com/58495262/126673161-3ee9f75d-d352-4d24-9e15-e29c78bb1f25.png)

## Solving Bugs 

Now let's try to solve these bugs. This is the solution that i found 

![answers1](https://user-images.githubusercontent.com/58495262/126683456-08fa4e76-869a-487c-9334-3b36044c9b14.png)

![answers2](https://user-images.githubusercontent.com/58495262/126683482-5b88fe36-d93d-4d57-877f-d7125d450642.png)

And after running the analysis again all the bugs were gonne, so we can say our solution runned successfully

![result](https://user-images.githubusercontent.com/58495262/126683581-1c408189-2411-400c-8337-78d8b9ca5558.png)









