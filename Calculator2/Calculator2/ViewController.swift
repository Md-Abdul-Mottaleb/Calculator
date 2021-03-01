//
//  ViewController.swift
//  Calculator2
//
//  Created by MacBook Pro on 27/2/21.
//

import UIKit


class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInpute = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    
    
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInpute = ""
        result = 0.0
        calculatorDisplay.text = "0"
    }
    
    @IBAction func remainderButton(_ sender: Any) {
    }
    @IBAction func percentageButton(_ sender: Any) {
        function = "%"
        first = userInpute
        userInpute = ""
    }
    @IBAction func divideButton(_ sender: Any) {
        function = "/"
        first = userInpute
        userInpute = ""
    }
    @IBAction func multiplicationButton(_ sender: Any) {
        function = "X"
        first = userInpute
        userInpute = ""
    }
    @IBAction func minusButton(_ sender: Any) {
        function = "-"
        first = userInpute
        userInpute = ""
    }
    @IBAction func plusButton(_ sender: Any) {
        function = "+"
        first = userInpute
        userInpute = ""
    }
    @IBAction func equalButton(_ sender: Any) {
        second = userInpute
        var firstInpute = 0.0
        var secondInpute = 0.0
        firstInpute = Double(first) ?? 0.0
        secondInpute = Double(second) ?? 0.0
        
        if(function == "+"){
            
            result = firstInpute + secondInpute
            calculatorDisplay.text = String(result)
            
            
        }
        else if( function == "-"){
            
            result = firstInpute - secondInpute
            calculatorDisplay.text = String(result)
            
        }
        else if( function == "X"){
            
            result = firstInpute * secondInpute
            calculatorDisplay.text = String(result)
            
        }
        else if( function == "/"){
            
            result = firstInpute / secondInpute
            calculatorDisplay.text = String(result)
            
        }
        else if( function == "%"){
            
            result = ((firstInpute * secondInpute) / 100)
            calculatorDisplay.text = String(result)
            
        }
    }
    @IBAction func pointButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "."
        calculatorDisplay.text! = userInpute
    }
    @IBAction func doublezeroButton(_ sender: Any) {
    }
    @IBAction func zeroButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "0"
        calculatorDisplay.text = userInpute
    }
    @IBAction func oneButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "1"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func twoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "2"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func threeButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "3"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func fourButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "4"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func fiveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "5"
        calculatorDisplay.text! += userInpute

    }
    @IBAction func sixButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "6"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func sevenButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "7"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func eightButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "8"
        calculatorDisplay.text! += userInpute
    }
    @IBAction func nineButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInpute += "9"
        calculatorDisplay.text! += userInpute
    }
    
}

