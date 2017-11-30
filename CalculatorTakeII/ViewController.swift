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
    
    
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func zeroButton(_ sender: UIButton) {
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
    }

    @IBAction func twoButton(_ sender: UIButton) {
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
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
