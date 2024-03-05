import UIKit

// Задание №1

enum CompassDirection {
  case north, east, west, south
}

let compassHeading: CompassDirection = .west

switch compassHeading {
  case .north:
  print("I am heading north")
  case .east:
  print("I am heading east")
  case .west:
  print("I am heading west")
  case .south:
  print("I am heading south")
}

struct Birthday {
  var day: Int = 12
  var month: Int = 12
  var year: Double = 1999
  
  func myBirthday() {
  print("I've born in \(year).\(month).\(day)")
  }
}

class Age {
  var age: Int
  
  init(age: Int) {
    self.age = age
  }
}

// Задание №2
// Композиция. Класс владеет объектом
class Reader {
    var books = [
        Books(name: "Alice in Wonderland"),
        Books(name: "War and Peace")
        ]
}

class Book {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

// Агрегация. У класса есть объект, который он позаимствовал
class Library {
    var books = [Book]()
}

class Books {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
 let lib = Library()

let b = Books(name: "Alice in Wonderland")

