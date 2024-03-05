//
//  main.swift
//  OOP_test
//
//  Created by Ostap Chepurnoy on 08.01.2023.
//
/*
 Абстракция. Принцип абстракции основан на определении МИНИМАЛЬНОГО количества признаков (свойств), ДОСТАТОЧНЫХ для КОРРЕКТНОГО поведения объекта в соответствии с его НАЗНАЧЕНИЕМ. Уровень или степень абстракции зависит от уровня требований модели.

 Инкапсуляция. В классах и структурах соединяются СВОЙСТВА, характеризующие возможные состояния и МЕТОДЫ, которые определяют поведение объектов. Обычно свойства указывают в верхней части определения класса, а методы - в нижней. Но синтаксически все варианты расположения корректны.
 
 Наследование. В языке Swift наследование ДОЧЕРНИХ классов идет от одного РОДИТЕЛЬСКОГО класса. Тем самым иерархия наследования соответствует понятию ДЕРЕВА в математике. Наследование идет от абстрактных классов к классам с конкретными свойствами и методами поведения.
 
 Композиция. Наследование - это механизм ООП с созданием дерева классов. В языке Swift с использованием инструмента ПРОТОКОЛОВ может использоваться метод композиции, когда классы или структуры или даже перечисления могут использовать поведение, определенное по частям в отдельных протоколах. Из отдельных протоколов можно собирать КОМПОЗИЦИИ, формируя более сложное поведение объектов.
 
 Полиморфизм. Полиморфизм - это когда разные объекты имеют поведение, подчиняющееся единым правилам с точки зрения кода, который его использует.
 В игре Ним игроки, представленные различными классами, могут использовать собственную стратегию для игры, но все они делают свой уникальный ход по правилам игры.
 
 Параметрический и ситуационный полиморфизм. В игре Ним используется ПАРАМЕТРИЧЕСКИЙ полиморфизм, когда разные объекты делают ходы по различным стратегиям, потому что все классы, к которым они принадлеэат, имеют метод turn.
 Существует другая разновидность полиморфного поведения, которое можно назвать СИТУАЦИОННЫМ (ad hoc). Здесь сперва проверяется к какому конкретно типу относится объект, а затем к нему применяются методы поведения, характерные для этого типа.
 */
import Foundation

class Nim {
    //Абстракция
    var heaps = [1, 2, 3, 4, 3, 2, 1]
}
class BoardPlayer {
    //Инкапсуляция: свойство
    let name: String
    //Инкапсуляция: метод
    func turn() -> Bool {
        print(name, terminator: " ")
        return true
    }
    
    init(name: String) {
        self.name = name
    }
}

class NimPlayer: BoardPlayer {
    //Наследование
    var nim: Nim?
    
    override func turn() -> Bool {
        var isGaming = super.turn()
        
        if let nim, isGaming {
            var nonEmptyHeaps = nim.heaps.filter { heap in heap != 0 }
            if nonEmptyHeaps.isEmpty {
                print("lost \n")
                isGaming = false
            } else {
                // make random move
                let heapInd = Int.random(in: 0..<nonEmptyHeaps.count)
                let restNum = nonEmptyHeaps[heapInd]
                let removedNum = nonEmptyHeaps.count == 1 ? restNum :
                    Int.random(in: 1...restNum)
                nonEmptyHeaps[heapInd] -= removedNum
                print("take \(removedNum) from heap \(heapInd+1)\n")
                nim.heaps = nonEmptyHeaps
            }
        } else {
            print("- no game at the moment")
            isGaming = false
        }
        
        return isGaming
    }
}

struct GameClub {
    let players: [NimPlayer]
    let game = Nim()
    var sessionNumber = 0
    
    mutating func runGameSession() {
        sessionNumber += 1
        print("\n Nim game, session №\(sessionNumber) \n")
        game.heaps = [1, 2, 3, 4, 3, 2, 1]
        
        for player in players {
            player.nim = game
        }
        
        isGaming: while true {
            //Полиморфизм
            for player in players {
                let state = game.heaps.filter { $0 > 0 }
                print("\(state)")
                if !player.turn() {
                    break isGaming
                }
            }
            _ = readLine()
        }
    }
}
let players = [
    NimPlayer(name: "Ostap"),
    NimPlayer(name: "Anna"),
]

var strangerThings = GameClub(players: players)
strangerThings.runGameSession() // #1
