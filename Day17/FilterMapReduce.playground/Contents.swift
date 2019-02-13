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
let techPeople = people.filter { $0.job == "tech" }


// map
let incrementedAges = people.map { $0.age + 3 }
print(incrementedAges)

// reduce
// ---------------------------------------------------------------------------
// - Log duplicated letters from a given string (case-insensitive).
// ---------------------------------------------------------------------------

let str = "TthatsWhatSsheSaidd"
let lowerCased = str.lowercased()

var counts = lowerCased.reduce(into: [:]) { (letterCounts, letter) in
    letterCounts[letter, default:0] += 1
}

for item in counts {
    if item.value < 2 {
        counts.removeValue(forKey: item.key)
    }
}


func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    // if devisible by 3 print "Fizz"
    
    // if devisible by 5 print "Buzz"
    
    // if devisible by 3 and 5 print "FizzBuzz"
    
    // if not devisible by either print the number itself
    
    if (n % 3 == 0) && (n % 5 == 0) {
        return "FizzBuzz"
    } else if n % 5 == 0 {
        return "Buzz"
    } else if n % 3 == 0{
        return "Fizz"
    } else {
        return "\(n)"
    }
    
    // End code
    
}

fizzBuzz(n: 12)


























