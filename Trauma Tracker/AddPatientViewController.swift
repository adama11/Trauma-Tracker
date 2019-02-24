//
//  AddPatientViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class AddPatientViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var roomNumberField: UITextField!
    @IBOutlet weak var addPatientButton: UIButton!
    
    @IBAction func addPatientButton(_ sender: Any) {
        let firstName = firstNameField.text
        let lastName = firstNameField.text
        let roomNumber = firstNameField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        firstNameField.delegate = self
        lastNameField.delegate = self
        roomNumberField.delegate = self
        addPatientButton.layer.cornerRadius = 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == firstNameField {
            firstNameField.resignFirstResponder()
            lastNameField.becomeFirstResponder()
        } else if textField == lastNameField {
            lastNameField.resignFirstResponder()
            roomNumberField.becomeFirstResponder()
        } else if textField == roomNumberField {
            roomNumberField.resignFirstResponder()
            
        }
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
