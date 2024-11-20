//
//  ViewController.swift
//  MyCalculator
//
//  Created by Kevin Wright on 11/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll(){
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }
    
    func addToWorkings(value: String){
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    func formatResults(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func equalsTap(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResults(result: result)
        calculatorResults.text = resultString
    }
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    @IBAction func deleteTap(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }
    @IBAction func multiplyTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    @IBAction func additionTap(_ sender: Any) {
        addToWorkings(value: "+")
    }
    @IBAction func subtractionTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func percentTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    @IBAction func decimalTap(_ sender: Any) {
        addToWorkings(value: ".")
    }
    @IBAction func plus_or_minusTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    
}