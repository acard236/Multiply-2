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
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var insertSecondaryNumberOneTextField: UITextField!
    @IBOutlet weak var insertiSecondaryNumberTwoTextField: UITextField!
    @IBOutlet weak var insertSecondaryOperationTextField: UITextField!
    @IBOutlet weak var comparisonOutputLabel: UILabel!
    @IBOutlet weak var sliderLabelOne: UISlider!
    @IBOutlet weak var sliderLabelTwo: UISlider!
    @IBOutlet weak var insertVariableOneTextfield: UITextField!
    @IBOutlet weak var insertVariableTwoTextfield: UITextField!
    @IBOutlet weak var insertComparisonTextfield: UITextField!
    @IBOutlet weak var insertSquareRootNumber: UITextField!
    @IBOutlet weak var squareRootOutputLabel: UILabel!
    
    
    
    
    
    var firstNumber = 0
    var secondNumber = 0
    var insertNumberLabel = 0
    
    var firstVariable = 0
    var secondVariable = 0
    var comparisonVariable = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
   
        }
    //Stretch #4
    @IBAction func clearAllButton(_ sender: UIButton) {
        insertNumberOneTextField.text = ""
        insertNumberTwoTextField.text = ""
        insertOperationTextField.text = ""
        numberOutputLabel.text = ""
        pictureImageView.image = nil
        insertSecondaryNumberOneTextField.text = ""
        insertiSecondaryNumberTwoTextField.text = ""
        insertSecondaryOperationTextField.text = ""
        comparisonOutputLabel.text = ""
        insertSquareRootNumber.text = ""
        squareRootOutputLabel.text = ""
    }
    
    
    
    //Makes text into numbers
    @IBAction func calculateNumbersButton(_ sender: UIButton) {
        insertNumberOneTextField.resignFirstResponder()
        
        
        guard let data = insertNumberOneTextField.text, !data.isEmpty, let numberOne = Int(data) else { return }
        firstNumber = numberOne
        
        insertNumberTwoTextField.resignFirstResponder()
        guard let data = insertNumberTwoTextField.text, !data.isEmpty, let numberTwo = Int(data) else { return }
        secondNumber = numberTwo
        
        //Stretch 5
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
            
            
            //Modulus Statement Here
        if insertOperationTextField.text == "%" {
            insertNumberLabel = firstNumber % secondNumber
            numberOutputLabel.text = "\(insertNumberLabel)"
            }
        }
        
        
        
        
        //Stretch #3
        if insertNumberLabel % 2 == 0 {
            pictureImageView.image = UIImage(named: "LobsterDog")
        } else if insertNumberLabel % 2 == 1 {
            pictureImageView.image = UIImage(named: "HeliumDog")
        }
        //Stretch #2
        if numberOutputLabel.text == "64" {
            pictureImageView.image = UIImage(named: "Rosalina")
        }
        
        
        //Stretch #1
        
        func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
            
            textfield.resignFirstResponder()
            
            return true
            
            
        }
        
    }
    
    //Stretch #6
   
    @IBAction func sliderOneValueChanged(_ sender: UISlider) {
        var currentValueOne = Int(sender.value)
        insertNumberOneTextField.text = "\(currentValueOne)"
        
    }
    
    @IBAction func sliderTwoValueChanged(_ sender: UISlider) {
        var currentValueTwo = Int(sender.value)
        insertNumberTwoTextField.text = "\(currentValueTwo)"
    }
    
        
    //Stretch #7
    @IBAction func compareVariablesButton(_ sender: UIButton) {
        insertVariableOneTextfield.resignFirstResponder()
        guard let data = insertVariableOneTextfield.text, !data.isEmpty, let variableOne = Int(data) else { return }
            firstVariable = variableOne
            
            insertVariableTwoTextfield.resignFirstResponder()
            guard let data = insertVariableTwoTextfield.text, !data.isEmpty, let variableTwo = Int(data) else { return }
            secondVariable = variableTwo
        
        if insertComparisonTextfield.text == ">" {
            if firstVariable > secondVariable {
                comparisonOutputLabel.text = "True"
                self.view.backgroundColor = UIColor.red
            }
            if firstVariable < secondVariable {
                comparisonOutputLabel.text = "False"
                self.view.backgroundColor = UIColor.orange
            }
        }
        if insertComparisonTextfield.text == "<" {
            if firstVariable < secondVariable {
                comparisonOutputLabel.text = "True"
                self.view.backgroundColor = UIColor.yellow
            }
            if firstVariable > secondVariable {
                comparisonOutputLabel.text = "False"
                self.view.backgroundColor = UIColor.green
            }
        }
        if insertComparisonTextfield.text == "=" {
            if firstVariable == secondVariable {
                comparisonOutputLabel.text = "True"
                self.view.backgroundColor = UIColor.blue
            }
            if firstVariable != secondVariable {
                comparisonOutputLabel.text = "False"
                self.view.backgroundColor = UIColor.purple
            }
        }
    }
    
    //Stretch #8 (Goes with 7)
        
    //Stretch #9
    @IBAction func squareRootPressed(_ sender: UIButton) {
        insertSquareRootNumber.resignFirstResponder()
            guard let data = insertSquareRootNumber.text, !data.isEmpty, let squareRootText = Int(data) else { return }
            var squareRootBefore: Double = Double(squareRootText)
            var squareRootAfter = squareRootBefore.squareRoot()
             squareRootAfter = Double(round(1000 * squareRootAfter) / 1000)
            squareRootOutputLabel.text = "\(squareRootAfter)"
    }
    
    
    
    
    




        
}
