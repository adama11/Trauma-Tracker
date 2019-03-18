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
    var roomPickerData : [String]! = []
    var currentGenderPickerData : String! = ""
    var currentAgePickerData : Int! = 0
    var currentRoomPickerData : String! = ""

    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet weak var addPatientButton: UIButton!
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var roomPicker: UIPickerView!
    
    var appSyncClient: AWSAppSyncClient!

    @IBAction func addPatientButton(_ sender: Any) {
        print("Adding Patient Pressed")
        let currentRoom : String! = self.currentRoomPickerData
        
        // Add patient logic
        if let patientsDict = Patient.getPatientsDict() {
            if patientsDict.keys.contains(currentRoom) {
                // Check if room is already added
                let roomExistsAlert = UIAlertController(title: "Couldn't Add Patient", message: "\(currentRoom ?? "Room") already exists. Would you like to overwrite it?", preferredStyle: .alert)
                let yesAction = UIAlertAction(title: "Yes", style: .default) { action in
                    // if user wants to overwrite, overwrite previous patient/room and pop back to main view
                    let _ = Patient(roomNumber: currentRoom, gender: self.currentGenderPickerData, age: self.currentAgePickerData)
                    self.navigationController?.popViewController(animated: true)
                    print("Added Patient")
                }
                roomExistsAlert.addAction(yesAction)
                roomExistsAlert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
                self.present(roomExistsAlert, animated: true, completion: nil)
            } else {
                // Add patient/room and pop back to main view
                let _ = Patient(roomNumber: currentRoom, gender: self.currentGenderPickerData, age: self.currentAgePickerData)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        //Retrieve list of all rooms on database to give user options to pick from
        BackEndFunctions.getAllAWSRooms(appSyncClient) { (roomData : [String]) in   // Object received from closure
            self.roomPickerData = roomData.sorted()
            DispatchQueue.main.async {
                //  Updating UI on main queue
                self.roomPicker.reloadAllComponents()
                self.currentRoomPickerData = self.roomPickerData[0]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        addPatientButton.layer.cornerRadius = 5
        
        genderPicker.delegate = self
        genderPicker.dataSource = self
        agePicker.delegate = self
        agePicker.dataSource = self
        roomPicker.dataSource = self
        roomPicker.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // init stored picker values
        currentGenderPickerData = genderPickerData[0]
        currentAgePickerData = Int(agePickerData[0])
        
    }
    
    //Start pickers set up
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == agePicker {
            return agePickerData.count
        } else if pickerView == genderPicker {
            return genderPickerData.count
        } else if pickerView == roomPicker {
            return roomPickerData.count
        }
        return 0
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // Always 1 in each picker
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == agePicker {
            return String(agePickerData[row])
        } else if pickerView == roomPicker {
            return roomPickerData[row]
        } else {
            return genderPickerData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == agePicker {
            currentAgePickerData = Int(agePickerData[row])
        } else if pickerView == genderPicker {
            currentGenderPickerData = genderPickerData[row]
        } else if pickerView == roomPicker {
            currentRoomPickerData = roomPickerData[row]
        }
    }
    //End pickers set up
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }

}
