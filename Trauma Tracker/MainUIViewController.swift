//
//  MainUIViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync
//commetn
//comment

class MainUIViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    //Testing2
    //test 
    
    
    
    var myimage:UIImage!
    
    var appSyncClient: AWSAppSyncClient?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        initializeAWSSubscriptions()
        
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(lookupTapped))
        
        
    }
    @objc func lookupTapped(sender: AnyObject) {
        print("Changing one user")
        
//        let mutationInput = UpdateTraumaTracker2SInput(id: "03260b83-03d5-4900-b29f-3d597d97020c", bloodPressure: 100.1)
    
//        03260b83-03d5-4900-b29f-3d597d97020c
    
//        appSyncClient?.perform(mutation: UpdateTraumaTracker2SMutation(input: mutationInput)) { (result, error) in
//            if let error = error as? AWSAppSyncClientError {
//                print("Error occurred: \(error.localizedDescription )")
//            }
//            if let resultError = result?.errors {
//                print("Error saving the item on server: \(resultError)")
//            return
//            }
//        }
    
    
//        appSyncClient?.fetch(query: ListTraumaTrackerPatientsQuery())  { (result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            result?.data?.listTraumaTrackerPatients?.items!.forEach { print(($0?.id)! + "--" + ($0?.firstName)!) }
//        }
    }
    
    
    
    @objc func addTapped(sender: AnyObject) {
        print("Adding Patient")
        
        let mutationInput = CreateTraumaTracker2Input(roomNumber: "room N", pulseRate: 75.0, spo2: 99.1, ecg: "{}", bloodPressureSystolic: 120.0, bloodPressureDiastolic: 80.0, restingPulseRate: 87.1, bodyTemperature: 98.6)
//        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
//
        appSyncClient?.perform(mutation: CreateTraumaTracker2Mutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
    
    var discard: Cancellable?
    func initializeAWSSubscriptions() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateTraumaTracker2Subscription(), resultHandler: { (result, transaction, error) in
                if let result = result {
                    print("Added new patient: " + result.data!.onCreateTraumaTracker2!.roomNumber)
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }

}
