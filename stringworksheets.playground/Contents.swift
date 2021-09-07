import UIKit

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"



if clothes.hasPrefix("Socks") {
    print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}

//to split a string, we use a split method. You have to provide the delimiter using separator.
shoppingList.split(separator: " ")

print(shoppingList.split(separator: ":"))

foodItems.split(separator: ",")




if clothes.contains(",") {
    print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}
//
//
print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])
//
//
shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]
print(shoppingList)
//
//
print(clothes.remove(at: clothes.firstIndex(of: "T")!))
print(clothes)
//
//
clothes.remove(at: clothes.firstIndex(of: "-")!)
print(shoppingList)
print(clothes)
//
//
print("\(shoppingList) # \(clothes)")
//
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)
print(clothes)
//
print(shoppingList)
var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
//  print(shoppingList[shoppingList],firstIndexOfR)
print(shoppingList[firstIndexOfR...firstIndexOfR])
print(shoppingList[shoppingList.index(shoppingList.startIndex,offsetBy: 10)])
//
print(shoppingList[...firstIndexOfR])
//
//


var course = "44643-Mobile Computing-iOS"
//Course Number
var courseArray = course.split(separator: "-")
//courseArray[0]
//course[Index]
print(courseArray[0])
var title = courseArray[1]
print(title[title.startIndex...title.index(before:title.firstIndex(of:" ")!)])

//  Comparing the strings
let password = "Demo@123"
let confirmPassword = "Demo@123"

if password == confirmPassword {
    print("Password matches")
}else{
    print("Passwords doesn't matches")
}

let currentYear = "2021"
var enteredYear = "2020"

if currentYear.elementsEqual(enteredYear) == true
{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}

var vehiclePoweredBy = "Diesel"

if vehiclePoweredBy != "Electricity" {
    print("Vehicle is not eco-friendly")
}else{
    print("Vehicle is eco-friendly")
}
//
//
let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"

if nameGiven.lowercased() == enteredName.lowercased(){
    print("Entered name and given name matches with each other")
}else{
    print("Entered name does not matches with the given name")
}

var a = 4

//
//
