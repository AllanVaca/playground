import UIKit
import Combine

// Constants and Variables

let maximumNumberOfLoginAttempts = 10

var currentAttempt = 0

var a = 1, b = 2, c = 3

var number: Int         // Type Annotations
number = 7

var ¨var¨: String

¨var¨ = "Hello"

¨var¨ = "Hallo"

//maximumNumberOfLoginAttempts = 5

print(number, currentAttempt, maximumNumberOfLoginAttempts, ¨var¨, separator: " - ", terminator: "\n\n")

print(#"The current value of "number" is: \#(number)"#)

let cow = "🐮"; print(cow)

let minValue = UInt8.min

let maxValue = UInt8.max

var floatingNumber: Float

floatingNumber = 5.1234560

var doubleVariable: Double = 2.1234560

var anotherNumber = 1_0

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

typealias int8 = UInt8

// Type Aliases

int8.max

if number == 0 {
    
}

// Tuples

let notFound = (404, "Not Found")

let (statusCode, statusMessage) = notFound
print(statusCode)
print(statusMessage)

let tuple = (one: 1, two: 2, three: 3)

let (first, _, third) = tuple
print(first)
print(tuple.1)
print(tuple.three)

// Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

//number = nil Can't assing the value nil to a non optional constant or variable

if convertedNumber != nil {
    print("convertedNumber contains an integer value of \(convertedNumber!)")
    
    // \(convertedNumber) Not explicit
    
    // \(coinvertedNumber!) Explicit
    
} else {
    print("convertedNumber doesn't contain an integer value")
}

// If Statements and Forced Unwrapping      -       Optional Binding

if let firstNumber = Int("4"), let secondNumber = Int("Hey"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("Something went wrong D:")
}

// Optional Int = Int?  -  Implicitly unwrapped optional = Int!


// Implicitly Unwrapped Optionals

let possibleString: String? = "An optional string."
print(possibleString)
let forcedString: String = possibleString!
print(forcedString, separator: " ", terminator: "\n\n")

let assumedString: String! = "An implicitly unwrapped optional string."
print(assumedString!)
let implicitString: String = assumedString // no need for an exclamation point
print(implicitString)

// Nil Coalescing operator

let name: String? = nil
print(name?.count ?? 0)

// Nested Optionals

let nameAndAges: [String:Int?] = ["Antoine van der Lee": 28]
let antoinesAge = nameAndAges["Antoine van der Lee"]
print(antoinesAge) 
print(antoinesAge!)
print(antoinesAge!!)

// Debugging with Assertions

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

//assertionFailure("D:")

// Enforcing Preconditions

var index: Int = 5
precondition(index > 0, "Index must be greater than zero.")

//preconditionFailure("D´:")

// Nil-Coalescing Operator

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

// Range Operators

// Closed Range Operator

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

// One-Sided Ranges

for name in names[2...] {
    print(name)
}

// forEach

names.forEach { name in
    print(name)
}

for name in names[...2] {
    print(name)
}

// Multiline String Literal

let paragraph: String = """
Hello
    Hi
Hola

"""
print(paragraph)

// Working with Characters

for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)


// String Interpolation

print(#"6 times 7 is \#(6 * 7)."#)

// String Indices

let greeting: String = "Guten Tag!"

print(greeting.count)

for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
    
    if index == greeting.index(before: greeting.endIndex) {
        print("\n")
    }
}

// Array

var shoppingList: [String] = ["Eggs", "Milk"]
print(shoppingList)


// Sets

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

for value in favoriteGenres {
    print(value)
}

var favoriteGenresShorter: Set = ["Rock", "Classical", "Hip hop"]


// Dictionaries

var namesOfIntegers: [Int: String] = [13: "Thirdteen"]
namesOfIntegers[16] = "sixteen"

// Control Flow

// For-In Loops

let minuteInterval = 5
let minutes = 60
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

let hours = 12
let hourInterval = 3
for _ in stride(from: 3, through: hours, by: hourInterval) {
    
}

// While Loops

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

// Fallthrough

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

// Guard

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])

greet(person: ["name": "Jane", "location": "Cupertino"])

// Functions

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

print(greet(person: "Alan"))

// Multiple Return Values

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//if let bounds = minMax(array: []) {
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
} else {
    print("The array passed to the function is not valid")
}


// Argument Labels

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Omitting Argument Labels

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {}
someFunction(1, secondParameterName: 2)

// Default Parameter Values

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)

// Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

// In-Out Parameters

func swapTwoInts(firstParameter a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(firstParameter: &someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts;
print(addTwoInts(5, 7))
print(mathFunction(2, 3))

mathFunction = multiplyTwoInts
print("Changed to multiply instead: \(mathFunction(2, 3))")

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Clousure Expression

var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames)
// reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )   -   Inferred

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

// Enumeration

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var planet: Planet = Planet.earth
//planet = .saturn
print(planet)

switch planet {
case .saturn:
    print("Saturn")
default:
    print("It's not Saturn")
}

let numberOfChoices = Planet.allCases.count

print("There are \(numberOfChoices) in our solar system")

for planet in Planet.allCases {
    print(planet)
}

print("Epecific planet", Planet.allCases[0])

var direction = CompassPoint.north

print(direction.rawValue)

var anotherDirection = CompassPoint(rawValue: "east")
print(anotherDirection!)

// Structures and Classes

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someResolution is now \(someVideoMode.resolution.width)")

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

// Methods

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
print(ovenLight)
ovenLight.next()
print(ovenLight)
ovenLight.next()
print(ovenLight)

// Type Methods

class SomeClass {
    class func someTypeMethod() {}
}
SomeClass.someTypeMethod()




// remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.


func x1 (_ arg1: String, _ arg2: Int) -> String	 {
    if !arg1.isEmpty {
        if arg2 > 0 && arg2 < arg1.count-1 {
            let itr = arg1.index(arg1.startIndex, offsetBy: arg2)
            var str = arg1
            str.remove(at: itr)
            return str
        } else {
            print("Index out of bounds")
            return ""
        }
    } else {
        print("Empty string")
        return ""
    }
}

print(x1("Remoove", 4))



// Change the first and last character of a given string

func x2 (_ arg1: String) -> String {
    var stm = arg1
    var first = stm.removeFirst();
    var last = stm.removeLast();
    var result: String = ""
    result.append(last)
    result.append(stm)
    result.append(first)
    return result
}

print(x2("Swift"))


class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func talk() {
        print("Hello")
    }
}


var me: Person = Person(name: "Alan", age: 21)
me.age = 22
print("\(me.name) \(me.age)")
me.talk()


// Extensions

var test: String = "Prueba"

extension String {
    func appendResult() -> String {
        return "\(self) completada"
    }
}

print(test.appendResult())

typealias entero = Int

// Type Alias

var num: entero
num = 45
print(num)

// Closures

var greet = { (name: String) in
  print("Hello \(name)")
}

greet("World!")


reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

var optionalTest: String? = "hey"
if let res = optionalTest {
    print(res)
}

// Generics

func swapTwoValues<X>(_ a: inout X, _ b: inout X) -> String{
    let temporaryA = a
    a = b
    b = temporaryA
    return("X is now \(a) and Y is \(b)")
}
var x = 0.0
var y = 0.5
print(swapTwoValues(&x, &y))

// Automatic Reference Counting ARC

class Human {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var human: Human? = Human(name: "Alan")
human = nil


// ARC another example

class Orchestra {
    let name:String
    weak var conductor:Conductor?

    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is deinitialized")
    }
}

class Conductor {
    let name:String
    var orchestra:Orchestra?

    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is deinitialized")
    }
}

var airguitars:Orchestra? = Orchestra(name: "Dutch Intergalactic Airguitar Orchestra")
var bob:Conductor? = Conductor(name: "Bob 'Loud Ninja' Applepie")

//airguitars = nil
//bob = nil

airguitars?.conductor = bob
bob?.orchestra = airguitars

let orchestra2 = Orchestra(name: "Another Orchestra")
orchestra2.conductor = Conductor(name: "Orchestra's conductor")

print(orchestra2.conductor)

//airguitars?.conductor = nil

//airguitars = nil
//bob = nil


// Capture List

class Database {
    var data = 0
}

let database = Database()
database.data = 11010101

let calculate = { [weak database] multiplier in
    return database!.data * multiplier
}

let result = calculate(2)
print(result)

/*  What weak and unowned mean
 
 The weak keyword indicates that the captured value can become nil
 The unowned keyword indicates that the captured value never becomes nil
 
 *The unowned keyword weakens a reference without making it optional.
 
 */

// Associated Types

protocol StringCollecion {
    var count: Int {get}
    subscript(index: Int) -> String {get}
    mutating func append(_ item: String)
}

protocol Collection {
    associatedtype Item
    var count: Int { get }
    subscript(index: Int) -> Item { get }
    mutating func append(_ item: Item)
}

struct UppercaseStringsCollection: Collection {
    
    var container: [String] = []
    
    var count: Int { container.count }
    
    mutating func append(_ item: String) {
        guard !container.contains(item) else { return }
        container.append(item.uppercased())
    }
    
    subscript(index: Int) -> String {
        return container[index]	
    }
}

// Generic comparable function

func sort<x: Comparable>(_ v1: x?, _ v2: x?, _ order: Int) -> Bool {
    if let e1 = v1, let e2 = v2 {
        return order == 0 ? e1 < e2 : e1 > e2
    }
    return false
}

/*
ordered.sort { person1, person2 -> Bool in
    if let g1 = person1.gender?.value, let g2 = person2.gender?.value {
        return g1 < g2
    }
    return false
}
 
 
     ordered.sort { person1, person2 -> Bool in
         if let g1 = person1.gender?.value, let g2 = person2.gender?.value {
             return g1 < g2
         }
         return false
     }
 
 */

/*

 -- cd to the project's directory
 
 -- Initialize
 git init
 
 -- Add Repository
 git remote add (Remote Name) git@github.com:AllanVaca/samplerepository.git
 
 -- Select Branch
 git branch -M (Branch Name)
 
 -- Commit Message
 git commit -m "Message"
 
 -- Push
 git push -u (Remote Name) (Branch Name)
 
 -- Remove git from directory
 rm -rf .git
 
 -- Pull
 git pull (Remote Name) (Branch Name)
 
 -- Create a new branch
 git branch (Branch Name)
 
 --  Switch Branch
 git checkout (Branch Name)
 
 -- Create and Switch to new Branch
 git checkout -b (Branch Name)
 
 
 */

// Mutating keyword

class Object {
    var variable: String
    
    init(¨variable¨ str: String) {
        self.variable = str
    }
    
    func adjust(_ v: String) {
        self.variable = v
    }
}

var ob: Object = Object(¨variable¨: "String Test")
print(ob.variable)
ob.adjust("Changed string")
print(ob.variable)

extension String {
    var ¨return¨: String {
        return "The content of this variable is: \(self)"
    }
    mutating func adjust() {
        self += " and is a String"
    }
}
ob.variable.adjust()
print(ob.variable.¨return¨)

// defer

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)


// Difference between Arrays and Sets

var arr: Array = [1, 2, 3]
var arr2: [Int] = [3, 4, 5]


var set: Set = [1, 2, 3]
var set2: [Int] = [3, 4, 5]


var res = set.intersection(set2)
print(res)

// Nil Coalescing

var optionalForNilCoalescing: Int?
let after = optionalForNilCoalescing ?? 5
print(after)

// Static Variable

struct staticTest {
    static var staticVar = "This should change for all instances of the struct"
}

print(staticTest.staticVar)

let firstTest = staticTest()


// More closures - Capture List

var nameC = "Donny"
var appendToName = { [nameC] (string: String) -> String in
  return nameC.appending(string)
}

let oneC = appendToName("Wals")
nameC = "D"
let twoC = appendToName("Wals")

print(oneC, twoC)


struct Manufacturer {
    var name: String
}

// 2
class Device {
    var name: String
    // 3
    var manufacturer: Manufacturer

    init(name: String, manufacturer: Manufacturer) {
        self.name = name
        self.manufacturer = manufacturer
    }
}

// 4
let apple = Manufacturer(name: "Apple")
// 5
let iPhone = Device(name: "iPhone", manufacturer: apple)
let iPad = Device(name: "iPad", manufacturer: apple)

// 6
iPad.manufacturer.name = "Google"
iPad.name = "Changed Name"

// 7
print(iPhone.name)
print(iPad.name)

// didSet - willSet
var score = 0 {
    didSet {
        print("Score changed")
    }
    willSet {
        print("Score will change")
    }
}
score += 5

/*
 
 @Sate

    State is a value, or a set of values, that can change over time, and that affects a
    view’s behavior, content, or layout. You use a property with the @State attribute to
    add state to a view.
    When that state changes, SwiftUI knows to automatically reload the view with the
    latest changes so it can reflect its new information.
    Is great for simple properties that belong to a specific view and never get used
    outside that view, so as a result it’s important to mark those properties as being
    private to re-enforce the idea that such state is specifically designed never to
    escape its view.

 @Binding

    A binding acts as a reference to a mutable state. When a user taps the toggle from
    off to on, and off again, the control uses the binding to update the view’s state
    accordingly.
    When you are using a binding, changes made inside the view propagate back to the
    data source.

 @ObservableObject -   @Pubblished

    An observable object is a custom object for your data that can be bound to a view
    from storage in SwiftUI’s environment. SwiftUI watches for any changes to
    observable objects that could affect a view, and displays the correct version of
    the view after a change.
    SwiftUI subscribes to your observable object, and updates any views that need
    refreshing when the data changes.
    An observable object needs to publish any changes to its data, so that its
    subscribers can pick up the change.
 
 @StateObject
 
    Whichever view is the first to create your object must use @StateObject, to tell
    SwiftUI it is the owner of the data and is responsible for keeping it alive. All
    other views must use @ObservedObject, to tell SwiftUI they want to watch the object
    for changes but don’t own it directly.
 
 @EnvironmentObject
 
    This is a value that is made available to your views through the application itself
    – it’s shared data that every view can read if they want to. So, if your app had
    some important model data that all views needed to read, you could either hand it
    from view to view to view or just put it into the environment where every view has
    instant access to it.
    If one view changes the model all views immediately update – there’s no risk of
    getting different parts of your app out of sync.
    When we say that a variable called order is of type Order SwiftUI will look through
    its environment to find an object of that type and attach it to the order property.
 
 Differences
 
     Use @State for simple properties that belong to a single view. They should usually be marked private.
     Use @ObservedObject for complex properties that might belong to several views. Most times you’re using a reference type you should be using @ObservedObject for it.
     Use @StateObject once for each observable object you use, in whichever part of your code is responsible for creating it.
     Use @EnvironmentObject for properties that were created elsewhere in the app, such as shared data.

  @Environment
 
    Is great for reading out things like a Core Data managed object context, whether
    the device is in dark mode or light mode, what size class your view is being
    rendered with, and more – fixed properties that come from the system.
    
 
    Manage transient UI state locally within a view by wrapping value types as State properties.
    Connect to external reference model data that conforms to the ObservableObject protocol using the ObservedObject property wrapper. Gain access to an observable object stored in the environment using the EnvironmentObject property wrapper. Instantiate an observable object directly in a view using a StateObject.
    Share a reference to a source of truth — like state or an observable object — using the Binding property wrapper.
    Distribute value data throughout your app by storing it in the Environment.
    Pass data up through the view hierarchy from child views with a PreferenceKey.
    Manage persistent data stored with Core Data using a FetchRequest.
 
    * You can access a property wrapper’s projected value by prefixing the property
    name with the dollar sign ($). SwiftUI state and data flow property wrappers always
    project a Binding, which is a two-way connection to the wrapped value, allowing
    another view to access and mutate a single source of truth:
 
    
    A simple rule is this: if you see “state” in the name of a property wrapper, it
    means that views definitely owns the data.
 
 
    I want to make a new property owned by the current view. You should use @State for
    value types, and @StateObject for reference types.

    I want to refer to a value created elsewhere. You should use @Binding for value
    types, and either @ObservedObject or @EnvironmentObject for reference types.

 */

// Combine
/*
var cancellable: AnyCancellable?
cancellable = Timer.publish(every: 1, on: .main, in: .default)
.autoconnect()
.sink {
    print($0)
}*/

let just = Just("Anuj Rai")
.map { (value) -> String in
return value
}
_ = just.sink(
        receiveCompletion: {
        print("\($0)")
    }, receiveValue: {
        print("Value: \($0)")
    })
