import Foundation

//var lst = [2, 5, 7, 4]
//let lst2 = lst.filter {$0 > 2}.sorted()
//print(lst2)
//
//struct Person {
//    let fistName: String
//    let lastName: String
//    let age: Int
//    let height: Double
//    let gender: Character
//}
//
//var persons = [Person(fistName: "Cici", lastName: "Li", age: 23, height: 5.3, gender: "F"),
//               Person(fistName: "Didi", lastName: "Ve", age: 30, height: 5.8, gender: "M"),
//               Person(fistName: "Vivi", lastName: "Wo", age: 40, height: 5.1, gender: "F")]
//
//let ages = persons.map { $0.age * 2 }
//
//print(ages)
////reduce
//let nums = [1, 2, 3, 4, 5]
//let sum  = nums.reduce(0, +)
//let minus = nums.reduce(100, -)
//print(sum)
//print(minus)
//
//let totalAge = persons.reduce(0, { $0 + $1.age})
//print(totalAge)
//
//var personFilter: (Person) -> Bool = { person in
//    return person.age > 25
//}
//
//let personold = persons.filter(personFilter)
//print(personold)
//
//let text = "text"
//if let number = Int(text) {
//  print("The number is \(number).")
//} else {
//  print("Invalid number!")
//}
//var aClosure = {
//  print("This is a closure")
//}
//aClosure()

//struct TableReservation {
//    var name: String
//    let tableNumber: Int
//
////    init(name: String, tableNumber: Int) {
////        self.name = name
////        self.tableNumber = tableNumber
////    }
//
//    mutating func updateBooking(updatedName: String) {
//        name = updatedName
//    }
//}
//var johnBooking = TableReservation(name: "John", tableNumber: 1)
//print(johnBooking)
//johnBooking.updateBooking(updatedName: "Maria")
//print(johnBooking)

//class LocalFile {
//    let name: String
//    let fileExtension: String
//
//    init(name: String, fileExtension: String) {
//        self.name = name
//        self.fileExtension = fileExtension
//    }
//    var fullFileName: String {
//        return name + fileExtension
//    }
//}
// let file = LocalFile(name: "image", fileExtension: ".png")
//print(file.fullFileName)

//enum Ingredient: String {
//    case chicken = "orange chicken"
//    case lettuce = "Romaine Lettuce"
//    case apple = "apple pie"
//}
//
//let ingredient = Ingredient.apple
//switch ingredient {
//case .lettuce:
//    print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
//case .apple:
//    print("We use \(ingredient.rawValue) that has the richest flavor from all the apples.")
//case .chicken:
//    print("We use \(ingredient.rawValue) that has the richest flavor from all the chicken.")
//}
//
//
//enum RecipeInformation {
//    case allergens(information: String)
//}
//let recipe = RecipeInformation.allergens(information: "peanuts, milk and gluten")
//
//switch recipe {
//case .allergens(let information):
//    print("The meal includes the following allergens: \(information)")
//
//}

//class Dish {
//    private let name: String
//    private var ingredients: [String]
//    init(name: String, ingredients: [String]) {
//        self.name = name
//        self.ingredients = ingredients
//    }
//    func printInfo() {
//        print(name)
//        print(ingredients)
//    }
//}
//
//final class AppetizerDish: Dish {
//    override func printInfo() {
//        print("**********")
//        super.printInfo()
//    }
//}
//
//final class MainDish: Dish {
//}
//
//for _ in 0..<5 {
//    let randomNumber = Int.random(in: 0...1)
//    let dish: Dish
//    if randomNumber == 0 {
//        dish = AppetizerDish(
//            name: "Margherita Flatbread",
//            ingredients: [
//                "Margherita",
//                "Flatbread",
//            ]
//        )
//    } else {
//        dish = MainDish(
//            name: "Super Spaghetti",
//            ingredients: [
//                "Spaghetti",
//                "Tomato sauce",
//            ]
//        )
//    }
//    if let appetizerDish = dish as? AppetizerDish {
//        appetizerDish.printInfo()
//    }
//    if dish is MainDish {
//        print("Main Dish!")
//    }
//}

protocol Dish {
    var name: String { get }
    var preparationMinutes: Int { get set }
    func prepare()
    func plate(artisticLevel: Int)
}

class MainDish: Dish {
    let name: String
    var preparationMinutes: Int
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
}

let superSpaghetti = MainDish(
    name: "Super Spaghetti",
    preparationMinutes: 35
)
superSpaghetti.prepare()
superSpaghetti.plate(artisticLevel: 10)
