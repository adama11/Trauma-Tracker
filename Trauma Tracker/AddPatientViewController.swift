//
//  AddPatientViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class AddPatientViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let genderPickerData : [String] = ["Male", "Female"]
    let agePickerData = Array(0...120)

    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet weak var roomNumberField: UITextField!
    @IBOutlet weak var addPatientButton: UIButton!
    @IBOutlet weak var genderPicker: UIPickerView!
    
    @IBAction func addPatientButton(_ sender: Any) {
//        let age = agePicker.value
        let roomNumber = roomNumberField.text
        
        let missingInfoAlert = UIAlertController(title: "Couldn't Add Patient", message: "Some or all patient information is missing.", preferredStyle: .alert)
        missingInfoAlert.addAction(UIAlertAction(title: "Continue", style: .default, handler: nil))
        
//        if age == "" || roomNumber == "" {
//            self.present(missingInfoAlert, animated: true, completion: nil)
//        } else {
//            navigationController?.popViewController(animated: true)
//        }
        
        //Pop back to main view
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
//        ageField.delegate = self
        roomNumberField.delegate = self
        addPatientButton.layer.cornerRadius = 5
        genderPicker.delegate = self
        genderPicker.dataSource = self
        agePicker.delegate = self
        agePicker.dataSource = self
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == agePicker {
            return agePickerData.count
        } else if pickerView == genderPicker {
            return genderPickerData.count
        }
        return 0
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == agePicker {
            return 1
        } else if pickerView == genderPicker {
            return 1
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == agePicker {
            return String(agePickerData[row])
        }
        return genderPickerData[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == roomNumberField {
            roomNumberField.resignFirstResponder()
        }
//            ageField.becomeFirstResponder()
//        } else if textField == ageField {
//            ageField.resignFirstResponder()
//        }
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
