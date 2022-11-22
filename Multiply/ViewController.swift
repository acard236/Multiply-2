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
        
        if insertOperationTextField.text == "+" {
            insertNumberLabel = firstNumber + secondNumber
            numberOutputLabel.text = "\(insertNumberLabel)"
            
            
            }
        }
    }
    
    
    




