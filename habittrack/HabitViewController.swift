//
//  MealViewController.swift
//  habittrack
//
//  Created by Ben Gibson on 7/7/17.
//  Copyright © 2017 Wabi Sabi. All rights reserved.
//

import UIKit

class HabitViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    // You only need to create outlets for things you are modifying so no button
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var habitLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // declarethe instance of this view controller the delegate for the text field
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    // These are functions the delegate performs when certain events happen e.g. hits done
    // if we had a second text field, how would we handle that delegate?
    
    // Text field should resign its first responder status
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // This will hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    // called after text field resigns first responder status
    // This gives us a chance to read information and do something with it
    func textFieldDidEndEditing(_ textField: UITextField) {
        habitLabel.text = textField.text
    }
    
    // MARK: Actions
    
    // Really this save button needs to save the entry for the hab
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        habitLabel.text = "Default"
    }



}

