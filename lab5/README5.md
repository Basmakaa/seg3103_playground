# seg3103_playground BASMA KAANANE

## Synopsis

This subfolder contain the solution and results of the Lab4

## IMPORTANT NOTE: IF THE IMAGES AREN'T CLEAR PLEASE REFER TO THE SCREENSHOTS FOLDER, i included all the screenshots there. 

## Grades: Stubs

Fist i did compile using: mix compile 
![compile_error](https://user-images.githubusercontent.com/58495262/123737834-ad941800-d871-11eb-90db-ea58735c9eb6.png)

and then id id use the command mix dps.get 
![depsget](https://user-images.githubusercontent.com/58495262/123737859-bc7aca80-d871-11eb-9edf-dbc762b7db7c.png)

At first i had the following errors: 
![compileerror1](https://user-images.githubusercontent.com/58495262/123737980-f8ae2b00-d871-11eb-87c5-6894ff65c54e.png)

![compilerror2](https://user-images.githubusercontent.com/58495262/123738006-0368c000-d872-11eb-8e9d-cb91ee133dd0.png)

But then i did use the command npm install inside assets: 
![npminstall](https://user-images.githubusercontent.com/58495262/123738050-14b1cc80-d872-11eb-8629-99abfacdba6b.png)

after that i did enter localhost:4000 to browser and the grade class could be displayed. 

![localhost4000](https://user-images.githubusercontent.com/58495262/123738185-55a9e100-d872-11eb-9f50-43c125aa4793.png)

After i did create stubs and added the modifications to the github repository.   
The problem was solved, and the button could work perfectly. 
![buttonworks](https://user-images.githubusercontent.com/58495262/124367086-50f27d80-dc22-11eb-9027-29e564667b38.png)

observations : We can test the front end and the way of displaying the info with the use of fake data and not from using actual calculation in the back end, using stubs on this exercice worked successfully !

## Twitter : Mocks

FIrst here are the 4 test cases as asked :
![testcase1](https://user-images.githubusercontent.com/58495262/124367109-85663980-dc22-11eb-9a25-e55f4dbdc61e.png)

![testcase2](https://user-images.githubusercontent.com/58495262/124367114-8dbe7480-dc22-11eb-88c7-56d582b689ff.png)

After analyzing isMentioned() method, we can see that there is no handeling for the null value and that it doesn't check for the substring after the "@" symbole, that it should be equals to name, so i tried to modify the method to handle this problem : 

![ismentionned](https://user-images.githubusercontent.com/58495262/124367230-543a3900-dc23-11eb-8721-64507393199c.png)

PS: i couldn't runt he tests because of unknown bugs, i tried to search in piazza and did my best to find a solution but nothing. 









