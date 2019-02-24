//
//  MainUIViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync

class MainUIViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var settingsButton: UINavigationItem!
    var myimage:UIImage!
    
    var appSyncClient: AWSAppSyncClient?
    let q = """
            query getAllEvents {
                listEvents{
                    items{
                        id
                        name
                        when
                    }
                }
            }
            """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        
        
        appSyncClient?.fetch(query: ListTraumaTrackerPatientsQuery())  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.listTraumaTrackerPatients?.items!.forEach { print(($0?.firstName)! + "--" + ($0?.id)!) }
        }
    }
    
    @objc func addTapped(sender: AnyObject) {
        
    }

}
