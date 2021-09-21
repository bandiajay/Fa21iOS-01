import UIKit

var str = "Hello, playground"

var numbers:[Int] = [2,3,4]
print(numbers)

var number = [12, 34, 56, 67]
print(number)

var emptyArray = [Int]()
print(emptyArray)

var emptyArray1 = [Double]()
//emptyArray1 = [1,2,3,4]
print(emptyArray1)

var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

var programmingLanguages1 = ["Swift", "Java", "Python"]
programmingLanguages1[0] = "Java Script"
print(programmingLanguages1)
print(programmingLanguages1[0])



//Answer the below questions.
     var names:[String] = ["Oliver", "Elijah", "James"]

//a.
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")


//b.
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")




//c.
print(names.count)



//d.
names.sort()
print("After sorting \(names)")


//e.
names.reverse()
print("After reversing \(names)")


//f.
names.remove(at: 2)
print("After removing \(names)")


//g.
names.swapAt(1, 2)
print("After swapping \(names)")


//6.
var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")

//var courses = [["44542", "Java", "fall"],
//               ["44643/44443", "iOS", "spring"],
//               ["44444", "Android", "summer"]]

var courses = [["44542", "Java", "fall"],
               ["44643/44443", "iOS", "spring"],
               ["44444", "Android", "summer"]]

var crsNum = courses[0][0]


for num in numbers{
    print(num)
}

for course in courses{
    print(course)
    for c in course{
        print(c)
    }
}






