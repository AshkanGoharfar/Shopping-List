//
//  ViewController.swift
//  Shopping-List
//
//  Created by Ashkan Goharfar on 10/30/2021.
//  Student ID: 301206729
// Version: 1.0
//

import UIKit

class ViewController: UIViewController {

    /**
      * Create variables for handling stepper value in case of pressing cancel button by user
      * Crearte flags for checking status of pressing cancel button.
      */
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
    
    // weak variable for textfiled of assigning shopping list
    @IBOutlet weak var ShoppingListNameTextField: UITextField!
    
    // weak variable for textfiled of first item of shopping list
    @IBOutlet weak var SelectedItemTextField_1: UITextField!
    
    // weak variable for textfiled of second item of shopping list
    @IBOutlet weak var SelectedItemTextField_2: UITextField!
    
    // weak variable for textfiled of third item of shopping list
    @IBOutlet weak var SelectedItemTextField_3: UITextField!
    
    // weak variable for textfiled of fourth item of shopping list
    @IBOutlet weak var SelectedItemTextField_4: UITextField!
    
    // weak variable for textfiled of five item of shopping list
    @IBOutlet weak var SelectedItemTextField_5: UITextField!
    
    // weak variable for displaying number of selected first item
    @IBOutlet weak var NumOfItemLabel_1: UILabel!
    
    // weak variable for displaying number of selected second item
    @IBOutlet weak var NumOfItemLabel_2: UILabel!
    
    // weak variable for displaying number of selected third item
    @IBOutlet weak var NumOfItemLabel_3: UILabel!
    
    // weak variable for displaying number of selected fourth item
    @IBOutlet weak var NumOfItemLabel_4: UILabel!
    
    // weak variable for displaying number of selected fifth item
    @IBOutlet weak var NumOfItemLabel_5: UILabel!
    
    
    /**
     * Create a Save Button Action Listener to save shopping list.
     *
     * @param UIButton as sender
     */
    @IBAction func SaveButton_Pressed(_ sender: UIButton) {
    }
    
    /**
     * Create a Cancel Button Action Listener to cancel orders and also reset stepper value and other text fields.
     *
     * @param UIButton as sender
     */
    @IBAction func CancelButton_Pressed(_ sender: UIButton) {
        
        ShoppingListNameTextField.text = "My Shopping List"
        
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
    
    /**
     * Create a Stepper Button Action Listener to increase or decrease number of orders of first item.
     *
     * @param UIButton as sender
     */
    @IBAction func StepperNumItem_Pressed_1(_ sender: UIStepper) {
        if (Int(sender.value) == 0){
            previousStepperValue_1 = 0
            NumOfItemLabel_1.text = String(Int(sender.value))
            return
        }
        if (flagCancelPressedStepper_1 == "1"){
            previousStepperValue_1 = Int(sender.value)
            flagCancelPressedStepper_1 = "0"
            if ((Int(sender.value) - previousStepperValue_1) == 0)
            {
                NumOfItemLabel_1.text = String(Int(sender.value) - previousStepperValue_1)
                return
            }
            NumOfItemLabel_1.text = String(Int(sender.value) - previousStepperValue_1 + 1)
            return
        }
        if ((Int(sender.value) - previousStepperValue_1) < 0){
            previousStepperValue_1 = Int(sender.value)
            NumOfItemLabel_1.text = "0"
        }
        NumOfItemLabel_1.text = String(Int(sender.value) - previousStepperValue_1)
    }
    
    /**
     * Create a Stepper Button Action Listener to increase or decrease number of orders of second item.
     *
     * @param UIButton as sender
     */

    @IBAction func StepperNumItem_Pressed_2(_ sender: UIStepper) {
        if (Int(sender.value) == 0){
            previousStepperValue_2 = 0
            NumOfItemLabel_2.text = String(Int(sender.value))
            return
        }
        if (flagCancelPressedStepper_2 == "1"){
            previousStepperValue_2 = Int(sender.value)
            flagCancelPressedStepper_2 = "0"
            if ((Int(sender.value) - previousStepperValue_2) == 0)
            {
                NumOfItemLabel_2.text = String(Int(sender.value) - previousStepperValue_2)
                return
            }
            NumOfItemLabel_2.text = String(Int(sender.value) - previousStepperValue_2 + 2)
            return
        }
        if ((Int(sender.value) - previousStepperValue_2) < 0){
            previousStepperValue_2 = Int(sender.value)
            NumOfItemLabel_2.text = "0"
        }
        NumOfItemLabel_2.text = String(Int(sender.value) - previousStepperValue_2)
    }
    
    /**
     * Create a Stepper Button Action Listener to increase or decrease number of orders of third item.
     *
     * @param UIButton as sender
     */

    @IBAction func StepperNumItem_Pressed_3(_ sender: UIStepper) {
        if (Int(sender.value) == 0){
            previousStepperValue_3 = 0
            NumOfItemLabel_3.text = String(Int(sender.value))
            return
        }
        if (flagCancelPressedStepper_3 == "1"){
            previousStepperValue_3 = Int(sender.value)
            flagCancelPressedStepper_3 = "0"
            if ((Int(sender.value) - previousStepperValue_3) == 0)
            {
                NumOfItemLabel_3.text = String(Int(sender.value) - previousStepperValue_3)
                return
            }
            NumOfItemLabel_3.text = String(Int(sender.value) - previousStepperValue_3 + 1)
            return
        }
        if ((Int(sender.value) - previousStepperValue_3) < 0){
            previousStepperValue_3 = Int(sender.value)
            NumOfItemLabel_3.text = "0"
        }
        NumOfItemLabel_3.text = String(Int(sender.value) - previousStepperValue_3)
    }
    
    /**
     * Create a Stepper Button Action Listener to increase or decrease number of orders of fourth item.
     *
     * @param UIButton as sender
     */
    @IBAction func StepperNumItem_Pressed_4(_ sender: UIStepper) {
        if (Int(sender.value) == 0){
            previousStepperValue_4 = 0
            NumOfItemLabel_4.text = String(Int(sender.value))
            return
        }
        if (flagCancelPressedStepper_4 == "1"){
            previousStepperValue_4 = Int(sender.value)
            flagCancelPressedStepper_4 = "0"
            if ((Int(sender.value) - previousStepperValue_4) == 0)
            {
                NumOfItemLabel_4.text = String(Int(sender.value) - previousStepperValue_4)
                return
            }
            NumOfItemLabel_4.text = String(Int(sender.value) - previousStepperValue_4 + 1)
            return
        }
        if ((Int(sender.value) - previousStepperValue_4) < 0){
            previousStepperValue_4 = Int(sender.value)
            NumOfItemLabel_4.text = "0"
        }
        NumOfItemLabel_4.text = String(Int(sender.value) - previousStepperValue_4)
    }
    
    /**
     * Create a Stepper Button Action Listener to increase or decrease number of orders of five item.
     *
     * @param UIButton as sender
     */
    @IBAction func StepperNumItem_Pressed_5(_ sender: UIStepper) {
        if (Int(sender.value) == 0){
            previousStepperValue_5 = 0
            NumOfItemLabel_5.text = String(Int(sender.value))
            return
        }
        if (flagCancelPressedStepper_5 == "1"){
            previousStepperValue_5 = Int(sender.value)
            flagCancelPressedStepper_5 = "0"
            if ((Int(sender.value) - previousStepperValue_5) == 0)
            {
                NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5)
                return
            }
            NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5 + 1)
            return
        }
        if ((Int(sender.value) - previousStepperValue_5) < 0){
            previousStepperValue_5 = Int(sender.value)
            NumOfItemLabel_5.text = "0"
        }
        NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}

