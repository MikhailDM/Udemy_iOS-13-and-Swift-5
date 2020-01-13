//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
//VARIABLES------------------------------
    var percent = 0.1
    var peoples = 2.0
    var bill = 0.0
    var result = 0.0
    
//LINKS------------------------------
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
        
//METHODS------------------------------
    @IBAction func tipChanged(_ sender: UIButton) {
        //Убираем клавиатуру
        billTextField.endEditing(true)
        //Селектор кнопки
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        percent = (Double(sender.tag) / 100.0)
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        peoples = sender.value
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(percent)
        print(peoples)
        bill = Double(billTextField.text!) ?? 0.0
        print(bill)
        result = bill * (1 + percent) / peoples
        print(String(format: "%.2f", result))
        self.performSegue(withIdentifier: "resultScene", sender: self)
        
    }
    
    //Действия перед переходом
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultScene" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = String(format: "%.2f", result)
            destinationVC.peoples = String(Int(peoples))
            destinationVC.percent = String(Int(percent * 100))
            
        }
    }


}

