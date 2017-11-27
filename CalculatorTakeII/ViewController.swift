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
    
    var numberPressed = ""
    var displayedNumber = ""
    var resultsDisplay = ""
    var digitOperator = ""
    var digits: [Digits] = []
    var operators: [Operators] = []
    
    @IBOutlet weak var outputDisplayLabel: UILabel!
    
    @IBAction func oneButton(_ sender: UIButton) {
        digits.append(.one)
        displayedNumber += "1"
        outputDisplayLabel.text = displayedNumber
        print(displayedNumber)
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        digits.append(.two)
        displayedNumber += "2"
        outputDisplayLabel.text = displayedNumber
        print(displayedNumber)
    }
    
    @IBAction func plussButton(_ sender: UIButton) {
        operators.append(.plus)
        displayedNumber += "+"
        outputDisplayLabel.text = displayedNumber
        print(displayedNumber)
    }
    
    @IBAction func equalButton() {
        operators.append(.equals)
        let centerOperator = operators[0]
        if let leftHandNum = Int(digits[0].rawValue), let rightHandNum = Int(digits[1].rawValue) {
            switch centerOperator {
            case .plus:
                print("\(leftHandNum) + \(rightHandNum) = \(leftHandNum + rightHandNum)")
            case .minus:
                print("\(leftHandNum) - \(rightHandNum) = \(leftHandNum - rightHandNum)")
            case .equals:
                print("\(leftHandNum) + \(rightHandNum) = \(leftHandNum + rightHandNum)")
            }
        }
    }
    
}
