import UIKit

// Задание №1

let first = { (weight: Double, travelDistance: Double) -> Double in
    let result = 100 * travelDistance * weight
    return result
}

let second = { (weight: Double, travelDistance: Double) -> Double in
    let result = 0.5 * travelDistance * weight
    return result
}

let weight = 2345.0
let travelDistance = 1425.0

let firstCalculations = first(weight, travelDistance)
let secondCalculations = second(weight, travelDistance)

// Задание №2

func firstAlgorithm(weight: Double, travelDistance: Double) -> Double {
    var result: Double = 100 * travelDistance * weight
    print("Первый ученый рассчитал, что для спутника необходимо \(result)л топлива.")
    return result
}


func secondAlgorithm(weight: Double, travelDistance: Double) -> Double {
    var result: Double = 0.5 * travelDistance * weight
    print("Второй ученый рассчитал, что для спутника необходимо \(result)л топлива.")
    return result
}

firstAlgorithm(weight: 2345, travelDistance: 1425)
secondAlgorithm(weight: 2345, travelDistance: 1425)


