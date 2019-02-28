
struct Person {
    let name: String
    let familyName: String
    let job: String
    let age: Int
    let knowsSwift: Bool
}


let person1 = Person(name: "jim", familyName: "jimson", job: "tech", age: 32, knowsSwift: true)
let person2 = Person(name: "dan", familyName: "robert", job: "chef", age: 30, knowsSwift: false)
let person3 = Person(name: "mark", familyName: "markson", job: "tech", age: 23, knowsSwift: true)
let person4 = Person(name: "tim", familyName: "cook", job: "tech", age: 50, knowsSwift: true)
let person5 = Person(name: "joe", familyName: "tyler", job: "singer", age: 33, knowsSwift: false)


let people = [person1, person2, person3, person4, person5]


// filter
// create new array of people with swift knowledge
let swiftPeople = people.filter{ $0.knowsSwift == true }


// map
// create new array with ages incremented by 2
let newPeopleAges = people.map{ $0.age + 2 }

// reduce
// create new variable for total ages



let numbers = [1, 2, 3, 4]

let total = numbers.reduce(0) { x, y in
    return x + y
}



// ---------------------------------------------------------------------------
// - Log duplicated letters from a given string (case-insensitive).
// ---------------------------------------------------------------------------

let str = "TthatsWhatSsheSaidd"


let lowerCased = str.lowercased()

// docs:  https://developer.apple.com/documentation/swift/zip2sequence/3129365-reduce

var letterCount = lowerCased.reduce(into: [:]) { (countsDictionary, letter) in
    countsDictionary[letter, default: 0] += 1
}

for item in letterCount {
    if item.value < 2 {
        letterCount.removeValue(forKey: item.key)
    }
}
print(letterCount)






















