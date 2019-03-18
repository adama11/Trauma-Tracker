//
//  Patient.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 3/3/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync

class Patient: NSObject, NSCoding {
    var roomNumber : String!
    var gender: String!
    var age: Int!
    
    var spo2 : Double!
    var pulseRate: Double!
//    var respiratoryRate: Double?
    var bloodPressureSystolic: Double!
    var bloodPressureDiastolic: Double!
    var bodyTemperature: Double!
    var ecgData: String!
    
    var appSyncClient : AWSAppSyncClient!
    var saved : Bool!
    
    
    override init() {
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        self.appSyncClient = appDelegate.appSyncClient
        self.saved = false
    }
    init(roomNumber: String!, gender: String!, age: Int!) {
        super.init()
        self.roomNumber = roomNumber
        self.gender = gender
        self.age = age
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        self.appSyncClient = appDelegate.appSyncClient
        self.saved = false
        self.updatePatient()
    }
    
    init(roomNumber : String!, gender: String!, age: Int!, spo2 : Double!, pulseRate: Double!, bloodPressureSystolic: Double!, bloodPressureDiastolic: Double!, bodyTemperature: Double!, ecgData: String!) {
        self.roomNumber = roomNumber
        self.gender = gender
        self.age = age
        self.spo2 = spo2
        self.pulseRate = pulseRate
        self.bloodPressureSystolic = bloodPressureSystolic
        self.bloodPressureDiastolic = bloodPressureDiastolic
        self.bodyTemperature = bodyTemperature
        self.ecgData = ecgData
        
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        self.appSyncClient = appDelegate.appSyncClient
        self.saved = false
    }
    
    // To comply with NSCoding, for archiving in UserDefaults
    required convenience init(coder decoder: NSCoder) {
        let roomNumber = decoder.decodeObject(forKey: "roomNumber") as? String ?? ""
        let gender = decoder.decodeObject(forKey: "gender") as? String ?? ""
        let age = decoder.decodeObject(forKey: "age") as? Int ?? 0
        let spo2 = decoder.decodeObject(forKey: "spo2") as? Double ?? 0.0
        let pulseRate = decoder.decodeObject(forKey: "pulseRate") as? Double ?? 0.0
        //self.respiratoryRate = decoder.decodeDouble(forKey: "self.respiratoryRate")
        let bloodPressureSystolic = decoder.decodeObject(forKey: "bloodPressureSystolic") as? Double ?? 0.0
        let bloodPressureDiastolic = decoder.decodeObject(forKey: "bloodPressureDiastolic") as? Double ?? 0.0
        let bodyTemperature = decoder.decodeObject(forKey: "bodyTemperature") as? Double ?? 0.0
        let ecgData = decoder.decodeObject(forKey: "ecgData") as? String ?? ""
        
        self.init(roomNumber: roomNumber, gender: gender, age: age , spo2: spo2, pulseRate: pulseRate , bloodPressureSystolic: bloodPressureSystolic, bloodPressureDiastolic: bloodPressureDiastolic, bodyTemperature: bodyTemperature, ecgData: ecgData)
    }
    
    // To comply with NSCoding, for archiving in UserDefaults
    func encode(with coder: NSCoder) {
        coder.encode(roomNumber, forKey: "roomNumber")
        coder.encode(gender, forKey: "gender")
        coder.encode(age, forKey: "age")
        coder.encode(spo2, forKey: "spo2")
        coder.encode(pulseRate, forKey: "pulseRate")
        coder.encode(bloodPressureSystolic, forKey: "bloodPressureSystolic")
        coder.encode(bloodPressureDiastolic, forKey: "bloodPressureDiastolic")
        coder.encode(bodyTemperature, forKey: "bodyTemperature")
        coder.encode(ecgData, forKey: "ecgData")
    }
    
    // Set Patient values to given values
    private func updateVitalsData(spo2: Double, pulseRate: Double, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, bodyTemperature: Double, ecgData: String) {
    
        self.spo2 = spo2
        self.pulseRate = pulseRate
//        self.respiratoryRate = respiratoryRate
        self.bloodPressureSystolic = bloodPressureSystolic
        self.bloodPressureDiastolic = bloodPressureDiastolic
        self.bodyTemperature = bodyTemperature
        self.ecgData = ecgData
    }

    // Get values from AWS database
    func updatePatient() {
        print("Getting cloud data.")
        if let n = self.roomNumber {
            appSyncClient?.fetch(query: GetTraumaTracker2Query(roomNumber: n))  { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                }
                if let patientData = result?.data?.getTraumaTracker2 {
                    self.updateVitalsData(spo2: patientData.spo2, pulseRate: patientData.pulseRate, bloodPressureSystolic: patientData.bloodPressureSystolic, bloodPressureDiastolic: patientData.bloodPressureDiastolic, bodyTemperature: patientData.bodyTemperature, ecgData: patientData.ecg)
                    self.saved = Patient.storePatient(patient: self)
                    print("Updated patient vitals and saved.")
                } else {
                    print("Failed to pull items.")
                }
                
            }
        }
        
    }
    
    // Get "saved" variable which says if the Patient has been successfully saved in UserDefaults
    func hasBeenSaved() -> Bool {
        return saved
    }
    
    // Add patient to UserDefaults
    class func storePatient(patient: Patient) -> Bool {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            var decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
            decodedData[patient.roomNumber] = patient
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: decodedData)
            UserDefaults.standard.set(encodedData, forKey: "Patients")
            return true
        } else {
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: [patient.roomNumber : patient])
            UserDefaults.standard.set(encodedData, forKey: "Patients")
            return true
        }
    }
    
    // Remove Patient from UserDefaults
    class func removePatient(roomName: String) -> Bool {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            var decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
            decodedData.removeValue(forKey: roomName)
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: decodedData)
            UserDefaults.standard.set(encodedData, forKey: "Patients")
            return true
        } else {
            return false
        }
    }
    
    // Returns the patients dictionary from UserDefaults
    class func getPatientsDict() -> [String : Patient]? {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            let decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
            return decodedData
        }
        return nil
    }
    
    // Returns list of Patients in sorted order
    class func getPatientsSorted() -> [Patient]? {
        if let patientDict = Patient.getPatientsDict() {
            var patientRankings : [(rank: Int, name: String)]! = []
            for (key, value) in patientDict {
                patientRankings.append((rank: value.getSeverityRank(), name: key))
            }
            // Sorted in descending severity rank, then alphabetically by room name
            let sorted = patientRankings.sorted(by: { $0.0 == $1.0 ? $0.1 > $1.1 : $0.0 > $1.0 })
            var output : [Patient]! = []
            for (_, name) in sorted {
                output.append(patientDict[name]!)
            }
            return output
        }
        return nil
    }
    
    //Make sure multiple calls produce same value--do not update patient data while we are getting severity rank of all
    // Calculated severity rank of Patient
    func getSeverityRank() -> Int {
        var rank = 0
        rank += self.spo2Rank()
        rank += self.pulseRateRank()
//        if !self.respiratoryRateInRange() { rank += 1 }
        rank += self.bloodPressureRank()
        rank += self.bodyTemperatureRank()
        return rank
    }
    
    // Returns top two most severe vitals
    func topTwo() -> [String] {
        let spo2RankVal = spo2Rank()
        let pulseRateRankVal = pulseRateRank()
        let bloodPressureRankVal = bloodPressureRank()
        let bodyTemperatureRankVal = bodyTemperatureRank()
        
        let all_vals = [spo2RankVal, pulseRateRankVal, bloodPressureRankVal, bodyTemperatureRankVal]
        let all_names = ["spo2", "pulseRate", "bloodPressure", "bodyTemperature"]
        var max = -1, maxPos = -1, secMax = -1, secMaxPos = -1
        for (index, value) in all_vals.enumerated() {
            if value > max {
                max = value
                maxPos = index
            } else if value > secMax {
                secMax = value
                secMaxPos = index
            }
        }
        let topTwo = [all_names[maxPos], all_names[secMaxPos]]
        return topTwo
    
    }
    func spo2Rank() -> Int {
        //Get normal ranges based on gender and age
        if spo2 < 75 { return 4 }
        else if spo2 < 85 { return 3 }
        else if spo2 < 95 { return 2 }
        else if spo2 < 98 { return 1 }
        return 0
    }
    
    func pulseRateRank() -> Int {
        //Get normal ranges based on gender and age
        if pulseRate < 45 { return 2 }
        else if pulseRate < 35 { return 4 }
        else if pulseRate > 110 { return 2 }
        else if pulseRate > 150 { return 4 }
        return 0
    }
    func respiratoryRateRank() -> Bool {
        //Get normal ranges based on gender and age
        return false
    }
    func bloodPressureRank() -> Int {
        //Get normal ranges based on gender and age
        return 1
    }
    func bodyTemperatureRank() -> Int {
        //Get normal ranges based on gender and age
        if pulseRate < 98 { return 1 }
        else if pulseRate < 97 { return 4 }
        else if pulseRate > 100 { return 2 }
        else if pulseRate > 101 { return 4 }
        return 0
    }
    
    
}
