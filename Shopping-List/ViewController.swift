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
    
    
    @IBAction func StepperNumItem_Pressed_1(_ sender: UIStepper) {
        if (flagCancelPressedStepper_1 == "1"){
            previousStepperValue_1 = Int(sender.value)
            flagCancelPressedStepper_1 = "0"
        }
        NumOfItemLabel_1.text = String(Int(sender.value) - previousStepperValue_1 + 1)
    }
    
    
    @IBAction func StepperNumItem_Pressed_2(_ sender: UIStepper) {
        if (flagCancelPressedStepper_2 == "1"){
            previousStepperValue_2 = Int(sender.value)
            flagCancelPressedStepper_2 = "0"
        }
        NumOfItemLabel_2.text = String(Int(sender.value) - previousStepperValue_2 + 1)    }
    
    @IBAction func StepperNumItem_Pressed_3(_ sender: UIStepper) {
        if (flagCancelPressedStepper_3 == "1"){
            previousStepperValue_3 = Int(sender.value)
            flagCancelPressedStepper_3 = "0"
        }
        NumOfItemLabel_3.text = String(Int(sender.value) - previousStepperValue_3 + 1)
    }
    
    @IBAction func StepperNumItem_Pressed_4(_ sender: UIStepper) {
        if (flagCancelPressedStepper_4 == "1"){
            previousStepperValue_4 = Int(sender.value)
            flagCancelPressedStepper_4 = "0"
        }
        NumOfItemLabel_4.text = String(Int(sender.value) - previousStepperValue_4 + 1)
    }
    
    @IBAction func StepperNumItem_Pressed_5(_ sender: UIStepper) {
        print("Sender val : ", Int(sender.value))
        if ((NumOfItemLabel_5.text == "0") && (Int(sender.value) != 0) && (previousStepperValue_5 != 0) && (Int(sender.value) < previousStepperValue_5)){
//            NumOfItemLabel_5.text = "0"
            NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5)
            print("here 1")
            return
        }
        if (Int(sender.value) == 0){
//            NumOfItemLabel_5.text = "0"
            previousStepperValue_5 = 0
            NumOfItemLabel_5.text = String(Int(sender.value))
            print("here 4")
            return
        }
        if (flagCancelPressedStepper_5 == "1"){
            previousStepperValue_5 = Int(sender.value)
            flagCancelPressedStepper_5 = "0"
            NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5 + 1)
            print("here 2")
            return
        }

//        if (Int(NumOfItemLabel_5.text!) == 0 && Int(sender.value) == 0){
//            previousStepperValue_5 = 0
////            NumOfItemLabel_5.text = "0"
//            print("here 3")
//            return
//        }
        
        NumOfItemLabel_5.text = String(Int(sender.value) - previousStepperValue_5)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}

