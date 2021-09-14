import UIKit

var str = "Hello, playground"

func greetUser(str: String)->String{
    return "Welcome User" + str
}

print(greetUser(str: " Ajay"))

func sayHello()->String{
    let name="Swift"
    return "Hello "+name+"!"
}
print(sayHello())

func addNumbers(number1:Int, number2:Int)->Int{
    return number1+number2
}
print("The sum of given numbers is \(addNumbers(number1: 10, number2: 20))")

func calcAmountAfterDiscount(amount:Double)->Double{
    return amount-(amount*90/100)
}

print(calcAmountAfterDiscount(amount: 100))

func manipulateNumber(iny:Int, mode:Bool)->String{
    var counter = iny
    if(mode){
        counter += 2
    }else{
        counter -= 1
    }
    return "The \(mode ? "incremented" : "decremented" ) value is \(counter)"
}
var val=19
print(manipulateNumber(iny:val,mode: false))


func login(sid username:String, pass password:String)->Bool{
    if(username=="swift5.5" && password=="uikit") {
        return true
    }
    return false;
    }
var loggedIn:Bool = login(sid: "swift5.5", pass: "uiki")
    if loggedIn {
    print("User login success")
    }else{
    print("Username or Password is incorrect")
    }

func fullName(_ firstName:String,_ lastName:String)->String{
    return lastName+","+firstName
    }
    print(fullName("Susan","Connar"))


func sumAndAvg(_ numbers:Double...)->(sum:Double,avg:Double,duplicate:Double){
       var total:Double=0
       var avg:Double
    var duplicate: Double
   
       for number in numbers {
               total+=number
       }
       avg=total/Double(numbers.count)
    duplicate = Double(numbers.count)
   
       return (total,avg, duplicate)
}
 
let result=sumAndAvg(1,20.5,3,4.9,10, 8, 8, 9, 98)
 
print("Sum = \(result.sum)")
print("Average = \(result.avg)")
print("Duplicate = \(result.self)")


func calculate(symbol: String) -> (Int, Int) -> Int {
    
    // inner function to add two numbers
    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    // inner function to subtract two numbers
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
    }
    
    let operation = (symbol == "+") ?  add : subtract
    return operation
}

let operation = calculate(symbol: "+")
let result1 = operation(10, 7)
print("Result:", result1)

