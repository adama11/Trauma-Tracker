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
    
//    override init() {
//        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
//        self.appSyncClient = appDelegate.appSyncClient
//    }
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
    
    private func updateVitalsData(spo2: Double, pulseRate: Double, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, bodyTemperature: Double, ecgData: String) {
    
        self.spo2 = spo2
        self.pulseRate = pulseRate
//        self.respiratoryRate = respiratoryRate
        self.bloodPressureSystolic = bloodPressureSystolic
        self.bloodPressureDiastolic = bloodPressureDiastolic
        self.bodyTemperature = bodyTemperature
        self.ecgData = ecgData
    }

    
    func updatePatient() {
        // Return: All data in dictionary
        print("Getting cloud data.")
        if let n = self.roomNumber {
            appSyncClient?.fetch(query: GetTraumaTracker2Query(roomNumber: n))  { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                }
                
                //            result?.data?.listTraumaTracker2S?.items!.forEach { print(($0?.roomNumber)!) }
                if let patientData = result?.data?.getTraumaTracker2 {
                    self.updateVitalsData(spo2: patientData.spo2, pulseRate: patientData.pulseRate, bloodPressureSystolic: patientData.bloodPressureSystolic, bloodPressureDiastolic: patientData.bloodPressureDiastolic, bodyTemperature: patientData.bodyTemperature, ecgData: patientData.ecg)
                    self.saved = self.saveUser()
                    print("Updated patient vitals and saved.")
                } else {
                    print("Failed to pull items.")
                }
                
            }
        }
        
    }
        
    private func saveUser() -> Bool {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            var decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
            decodedData[self.roomNumber] = self
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: decodedData)
            UserDefaults.standard.set(encodedData, forKey: "Patients")
            return true
        } else {
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: [self.roomNumber : self])
            UserDefaults.standard.set(encodedData, forKey: "Patients")
            return true
        }
    }
    
    func hasBeenSaved() -> Bool {
        return saved
    }
//        if let n = self.roomNumber {
//            var newData : [String : Any] = [:]
//            appSyncClient?.fetch(query: GetTraumaTracker2Query(roomNumber: n))  { (result, error) in
//                if error != nil {
//                    print(error?.localizedDescription ?? "")
//                }
//
//                if let patientData = result?.data?.getTraumaTracker2 {
////                    print("spo2: \(patientData.spo2)")
//                    newData["spo2"] = patientData.spo2
//                    newData["pulseRate"] = patientData.pulseRate
//                    //                    newData["respiratoryRate"] = patientData.resp;
//                    newData["bloodPressureSystolic"] = patientData.bloodPressureSystolic
//                    newData["bloodPressureDiastolic"] = patientData.bloodPressureDiastolic
//                    newData["bodyTemperature"] = patientData.bodyTemperature
//                    newData["ecgData"] = patientData.ecg
//                    print("Success: Found database entry for \"\(n)\"")
//                    print(1, newData)
//                } else {
//                    print("Error: Couldn't get room data for \"\(n)\".")
//                }
//                print(2, newData)
//                return newData
//            }
//        }
//        return [:]
//    }
//
//    func updatePatient() {
//        let d = self.getCloudData()
//        if d.count > 0 {
//            self.updateVitalsData(spo2: d["spo2"] as! Double, pulseRate: d["pulseRate"] as! Double, bloodPressureSystolic: d["bloodPressureSystolic"] as! Double, bloodPressureDiastolic: d["bloodPressureDiastolic"] as! Double, bodyTemperature: d["bodyTemperature"] as! Double, ecgData: d["ecgData"] as! String)
//            print("Updated vitals data for \"\(self.roomNumber)\".")
//        }
//    }
    
    func getSeverityRank() -> Int {
        var rank = 0
        if !self.spo2InRange() { rank += 1 }
        if !self.pulseRateInRange() { rank += 1 }
//        if !self.respiratoryRateInRange() { rank += 1 }
        if !self.bloodPressureInRange() { rank += 1 }
        if !self.bodyTemperatureInRange() { rank += 1 }
        return rank
    }
    
    func spo2InRange() -> Bool {
        //Get normal ranges based on gender and age
        return false
    }
    
    func pulseRateInRange() -> Bool {
        //Get normal ranges based on gender and age
        return false
    }
    func respiratoryRateInRange() -> Bool {
        //Get normal ranges based on gender and age
        return true
    }
    func bloodPressureInRange() -> Bool {
        //Get normal ranges based on gender and age
        return true
    }
    func bodyTemperatureInRange() -> Bool {
        //Get normal ranges based on gender and age
        return true
    }
    
    
}
