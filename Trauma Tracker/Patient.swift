//
//  Patient.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 3/3/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync

class Patient: NSObject {
    var roomNumber : String?
    var gender: String?
    var age: Int?
    
    var spo2 : Double?
    var pulseRate: Int?
    var respiratoryRate: Int?
    var bloodPressure: Double?
    var bodyTemperature: Double?
    var ecgData: String?
    
    let appSyncClient : AWSAppSyncClient!
    
//    override init() {
//        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
//        self.appSyncClient = appDelegate.appSyncClient
//    }
    
    init(roomNumber: String?, gender: String?, age: Int) {
        self.roomNumber = roomNumber
        self.gender = gender
        self.age = age
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        self.appSyncClient = appDelegate.appSyncClient
    }
    
    //Make private eventually:
    func updateVitalsData(spo2: Double, pulseRate: Int, respiratoryRate: Int, bloodPressure: Double, bodyTemperature: Double, ecgData: String) {
    
        self.spo2 = spo2
        self.pulseRate = pulseRate
        self.respiratoryRate = respiratoryRate
        self.bloodPressure = bloodPressure
        self.bodyTemperature = bodyTemperature
        self.ecgData = ecgData
    }

    
    private func getCloudData() -> [String : Any] {
        var newData : [String : Any]!
        
        appSyncClient?.fetch(query: ListTraumaTrackerPatientsQuery (filter: nil, limit: nil, nextToken: nil))  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            }
            // Todo: Fetch data associated with "self.roomNumber"
            // Return: All data in dictionary
            
           
            newData["spo2"] = 90;
            newData["pulseRate"] = 65;
            newData["respiratoryRate"] = 12;
            newData["bloodPressure"] = "120/80"
            newData["bodyTemperature"] = "98.6"
            newData["ecgData"] = "test"
            
//                result?.data?.listTraumaTrackerPatients?.items!.forEach { print(($0?.firstName)!) }
//
//        if let cloudPatients = result?.data?.listTraumaTrackerPatients?.items! {
//            self.patients = []
//            for p in cloudPatients {
//                let item = [p?.id as Any, p?.firstName as Any, p?.lastName as Any, p?.bodyTemperature as Any, p?.pulseRate as Any]
//                self.patients.append(item)
//            }
//        } else {
//            print("Failed to pull items.")
//        }
//
        }
        return newData
    }
        
    func updatePatient() {
        let newData = getCloudData()
        self.updateVitalsData(spo2: newData["spo2"] as! Double, pulseRate: newData["pulseRate"] as! Int, respiratoryRate: newData["respiratoryRate"] as! Int, bloodPressure: newData["bloodPressure"] as! Double, bodyTemperature: newData["bodyTemperature"] as! Double, ecgData: newData["ecgData"] as! String)
    }
    
    func getSeverityRank() -> Int {
        var rank = 0
        if !self.spo2InRange() { rank += 1 }
        if !self.pulseRateInRange() { rank += 1 }
        if !self.respiratoryRateInRange() { rank += 1 }
        if !self.bloodPressureInRange() { rank += 1 }
        if !self.bodyTemperatureInRange() { rank += 1 }
        return rank
    }
    
    func spo2InRange() -> Bool {
        //Get normal ranges based on gender and age
        return true
    }
    
    func pulseRateInRange() -> Bool {
        //Get normal ranges based on gender and age
        return true
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
