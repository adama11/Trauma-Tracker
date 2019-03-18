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
    
    var myimage:UIImage!
    
    var appSyncClient: AWSAppSyncClient?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
    }
    @objc func lookupTapped(sender: AnyObject) {
        print("Changing one user")
        
    }
    
    
    // Add user to AWS Database
    @objc func addTapped(sender: AnyObject) {
        print("Adding Patient")
        
        let mutationInput = CreateTraumaTracker2Input(roomNumber: "room N", pulseRate: 75.0, spo2: 99.1, ecg: "{}", bloodPressureSystolic: 120.0, bloodPressureDiastolic: 80.0, restingPulseRate: 87.1, bodyTemperature: 98.6)

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

}
