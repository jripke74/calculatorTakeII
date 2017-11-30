//
//  ViewController.swift
//  CalculatorTakeII
//
//  Created by Jeff Ripke on 11/25/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Digits: String {
        case zero = "0"
        case one = "1"
        case two = "2"
    }
    
    enum Operators: String {
        case plus = "+"
        case minus = "-"
        case equals  = "="
    }
    
    var digits: [Digits] = []
    var operators: [Operators] = []
    
    @IBOutlet weak var outputDisplayLabel: UILabel!
    
    @IBAction func oneButton(_ sender: UIButton) {
        digits.append(.one)
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        digits.append(.two)
    }
    
    @IBAction func plussButton(_ sender: UIButton) {
        operators.append(.plus)
    }
    
    @IBAction func equalButton() {
        operators.append(.equals)
        let centerOperator = operators[0]
        if let leftOperand = Int(digits[0].rawValue), let rightOperand = Int(digits[1].rawValue) {
            switch centerOperator {
            case .plus:
                print("\(leftOperand) + \(rightOperand) = \(leftOperand + rightOperand)")
            case .minus:
                print("\(leftOperand) - \(rightOperand) = \(leftOperand - rightOperand)")
            case .equals:
                print("\(leftOperand) + \(rightOperand) = \(leftOperand + rightOperand)")
            }
        }
    }
    
}
