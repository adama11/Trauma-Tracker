//
//  AddPatientViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync

class AddPatientViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let genderPickerData : [String] = ["Male", "Female"]
    let agePickerData = Array(0...120)
    var currentGenderPickerData : String = ""
    var currentAgePickerData : Int = 0

    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet weak var roomNumberField: UITextField!
    @IBOutlet weak var addPatientButton: UIButton!
    @IBOutlet weak var genderPicker: UIPickerView!
    
    var appSyncClient: AWSAppSyncClient?

    @IBAction func addPatientButton(_ sender: Any) {
        print("Adding Patient")
//        let age = agePicker.value
        let roomNumber = roomNumberField.text
        
        let newPatient = Patient(roomNumber: roomNumber, gender: self.currentGenderPickerData, age: self.currentAgePickerData)
        
        self.navigationController?.popViewController(animated: true)
        
        
    //        if age == "" || roomNumber == "" {
    //            self.present(missingInfoAlert, animated: true, completion: nil)
    //        } else {
    //            navigationController?.popViewController(animated: true)
    //        }
            
            //Pop back to main view
        
        
        
        //Adding patient to db for testing:
//        if let roomNumber = roomNumberField.text {
//
//            // Doesn't support addition when user already exists... FIX
//
//
//            let mutationInput = CreateTraumaTracker2Input(roomNumber: roomNumber, pulseRate: 75.0, spo2: 99.1, ecg: "{}", bloodPressureSystolic: 120.0, bloodPressureDiastolic: 80.0, restingPulseRate: 87.1, bodyTemperature: 98.6)
//
//            let connectionError = UIAlertController(title: "Couldn't Add Patient", message: "There was a connection error, please try again.", preferredStyle: .alert)
//            connectionError.addAction(UIAlertAction(title: "Continue", style: .default, handler: nil))
//
//            appSyncClient?.perform(mutation: CreateTraumaTracker2Mutation(input: mutationInput)) { (result, error) in
//                if let error = error as? AWSAppSyncClientError {
//                    print("Error occurred: \(error.localizedDescription )")
//                    self.present(connectionError, animated: true, completion: nil)
//                } else if let resultError = result?.errors {
//                    print("Error saving the item on server: \(resultError)")
//                    self.present(connectionError, animated: true, completion: nil)
//                    return
//                } else {
//                    self.navigationController?.popViewController(animated: true)
//                }
//            }
//        } else {
//            let missingInfoAlert = UIAlertController(title: "Couldn't Add Patient", message: "Some or all patient information is missing.", preferredStyle: .alert)
//            missingInfoAlert.addAction(UIAlertAction(title: "Continue", style: .default, handler: nil))
//            self.present(missingInfoAlert, animated: true, completion: nil)
//        }
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
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        currentGenderPickerData = genderPickerData[0]
        currentAgePickerData = Int(agePickerData[0])
        
    }
    
    //Start pickers set up
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == agePicker {
            currentAgePickerData = Int(agePickerData[row])
        } else if pickerView == genderPicker {
            currentGenderPickerData = genderPickerData[row]
        }
    }
    //End pickers set up
    
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
