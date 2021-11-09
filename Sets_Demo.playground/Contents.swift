import UIKit

var greeting = "Hello, playground"

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")
print("letters is of type Set<Character> with \(letters.count) items.")
letters = []
print("letters is of type Set<Character> with \(letters.count) items.")
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
favoriteGenres.insert("Jazz")
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
print(favoriteGenres)
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
print(favoriteGenres)
//printing only genres
for genre in favoriteGenres {
    print("\(genre)")
}
//to iterate over the elements in a sorted order
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//without sorting
print( oddDigits.union(evenDigits))
//with sorting
print(oddDigits.union(evenDigits).sorted())
//without sorting
print( oddDigits.intersection(evenDigits))
//with sorting
print(oddDigits.intersection(evenDigits).sorted())
//without sorting
print( oddDigits.subtracting(singleDigitPrimeNumbers))
//with sorting
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
//without sorting
print( oddDigits.symmetricDifference(singleDigitPrimeNumbers))
//with sorting
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
print(houseAnimals==cityAnimals)
print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))
