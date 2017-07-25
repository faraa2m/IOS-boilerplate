//
//  ViewController.swift
//  FoodTracker
//
//  Created by Faraazuddin Mohammed on 7/13/17.
//
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        super.viewDidLoad()
    }

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text = "Default Text"
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

