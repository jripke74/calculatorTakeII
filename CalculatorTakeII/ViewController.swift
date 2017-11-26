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
        case equal  = "="
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
        operators.append(.equal)
        print(operators)
        print(digits)
    }
    
}
