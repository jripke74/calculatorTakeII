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
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
    }
    
    enum Operators: String {
        case plus = "+"
        case minus = "-"
        case equals  = "="
    }
    
    var digits: [Digits] = []
    var operators: [Operators] = []
    var colector = ""
    
    
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func zeroButton(_ sender: UIButton) {
        digits.append(.zero)
        colector += "0"
        formulaLabel.text = colector
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        digits.append(.one)
        colector += "1"
        formulaLabel.text = colector
    }

    @IBAction func twoButton(_ sender: UIButton) {
        digits.append(.two)
        colector += "2"
        formulaLabel.text = colector
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        digits.append(.three)
        colector += "3"
        formulaLabel.text = colector
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        digits.append(.four)
        colector += "4"
        formulaLabel.text = colector
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        digits.append(.five)
        colector += "5"
        formulaLabel.text = colector
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        digits.append(.six)
        colector += "6"
        formulaLabel.text = colector
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        digits.append(.seven)
        colector += "7"
        formulaLabel.text = colector
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        digits.append(.eight)
        colector += "8"
        formulaLabel.text = colector
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        digits.append(.nine)
        colector += "9"
        formulaLabel.text = colector
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        operators.append(.plus)
        colector += "+"
        formulaLabel.text = colector
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        operators.append(.minus)
        colector += "-"
        formulaLabel.text = colector
    }
    
    @IBAction func equalButton() {
        operators.append(.equals)
        let centerOperator = operators[0]
        if let leftOperand = Int(digits[0].rawValue), let rightOperand = Int(digits[1].rawValue) {
            switch centerOperator {
            case .plus:
                outputLabel.text = "\(leftOperand) + \(rightOperand) = \(leftOperand + rightOperand)"
                print("\(leftOperand) + \(rightOperand) = \(leftOperand + rightOperand)")
            case .minus:
                outputLabel.text = "\(leftOperand) + \(rightOperand) = \(leftOperand - rightOperand)"
                print("\(leftOperand) - \(rightOperand) = \(leftOperand - rightOperand)")
            case .equals:
                print("\(leftOperand) + \(rightOperand) = \(leftOperand + rightOperand)")
            }
        }
    }
    
}
