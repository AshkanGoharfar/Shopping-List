//
//  ViewController.swift
//  Shopping-List
//
//  Created by Ashkan Goharfar on 10/30/2021.
//

import UIKit

class ViewController: UIViewController {

    var previousStepperValue_1 = 0
    var flagCancelPressedStepper_1 = "0"
    
    var previousStepperValue_2 = 0
    var flagCancelPressedStepper_2 = "0"
    
    var previousStepperValue_3 = 0
    var flagCancelPressedStepper_3 = "0"
    
    var previousStepperValue_4 = 0
    var flagCancelPressedStepper_4 = "0"
    
    var previousStepperValue_5 = 0
    var flagCancelPressedStepper_5 = "0"
    
    
    @IBOutlet weak var ShoppingListNameTextField: UITextField!
    
    
    @IBOutlet weak var SelectedItemTextField_1: UITextField!
    
    
    @IBOutlet weak var SelectedItemTextField_2: UITextField!
    
    
    @IBOutlet weak var SelectedItemTextField_3: UITextField!
    
    @IBOutlet weak var SelectedItemTextField_4: UITextField!
    
    
    @IBOutlet weak var SelectedItemTextField_5: UITextField!
    
    
    @IBOutlet weak var NumOfItemLabel_1: UILabel!
    
    
    @IBOutlet weak var NumOfItemLabel_2: UILabel!
    
    
    @IBOutlet weak var NumOfItemLabel_3: UILabel!
    
    
    @IBOutlet weak var NumOfItemLabel_4: UILabel!
    
    
    @IBOutlet weak var NumOfItemLabel_5: UILabel!
    
    
    @IBAction func SaveButton_Pressed(_ sender: UIButton) {
    }
    
    
    @IBAction func CancelButton_Pressed(_ sender: UIButton) {
        
        ShoppingListNameTextField.text = ""
        
        flagCancelPressedStepper_1 = "1"
        NumOfItemLabel_1.text = "0"
        SelectedItemTextField_1.text = ""
        
        flagCancelPressedStepper_2 = "1"
        NumOfItemLabel_2.text = "0"
        SelectedItemTextField_2.text = ""
        
        flagCancelPressedStepper_3 = "1"
        NumOfItemLabel_3.text = "0"
        SelectedItemTextField_3.text = ""
        
        flagCancelPressedStepper_4 = "1"
        NumOfItemLabel_4.text = "0"
        SelectedItemTextField_4.text = ""
        
        flagCancelPressedStepper_5 = "1"
        NumOfItemLabel_5.text = "0"
        SelectedItemTextField_5.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}

