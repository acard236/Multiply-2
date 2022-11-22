//
//  ViewController.swift
//  Multiply
//
//  Created by Adam C Cardamone (Student) on 11/14/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var insertNumberOneTextField: UITextField!
    @IBOutlet weak var insertNumberTwoTextField: UITextField!
    @IBOutlet weak var insertOperationTextField: UITextField!
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    
    var firstNumber = 0
    var secondNumber = 0
    var insertNumberLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   
        }
    @IBAction func calculateNumbersButton(_ sender: UIButton) {
        insertNumberOneTextField.resignFirstResponder()
        
        
        guard let data = insertNumberOneTextField.text, !data.isEmpty, let numberOne = Int(data) else { return }
        firstNumber = numberOne
        
        insertNumberTwoTextField.resignFirstResponder()
        guard let data = insertNumberTwoTextField.text, !data.isEmpty, let numberTwo = Int(data) else { return }
        secondNumber = numberTwo
        
    //Stretch 5 I Guess
    //Addition Statement Here
        if insertOperationTextField.text == "+" {
            insertNumberLabel = firstNumber + secondNumber
            numberOutputLabel.text = "\(insertNumberLabel)"
        }
            
    //Subtraction Statement Here
            
            if insertOperationTextField.text == "-" {
                insertNumberLabel = firstNumber - secondNumber
                numberOutputLabel.text = "\(insertNumberLabel)"
            }
            
    //Multiply Statement Here
                if insertOperationTextField.text == "*" {
                    insertNumberLabel = firstNumber * secondNumber
                    numberOutputLabel.text = "\(insertNumberLabel)"
                }
            
    
    //Divide Statement Here
                    if insertOperationTextField.text == "/" {
                        insertNumberLabel = firstNumber / secondNumber
                        numberOutputLabel.text = "\(insertNumberLabel)"
                    }

      
    //Stretch #2
            
    
    //Stretch #3
            
            
            
    //Stretch #1
        
        func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
            
            textfield.resignFirstResponder()
            
            return true
            
  
            }
    //Stretch #4
    
    //Stretch #6
        
    //Stretch #7
        
    //Stretch #8 (Goes with 7)
        
    //Stretch #9
        }
    
    
    
    




        
}
