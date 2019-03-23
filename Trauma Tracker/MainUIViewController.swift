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
    
    override func viewDidLayoutSubviews() {
        // Add user icon in navbar
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "user-plus-solid.pdf"), for: .normal)
        button.addTarget(self, action: #selector(addUserButtonPressed), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        let widthConstraint = button.widthAnchor.constraint(equalToConstant: 45.0)
        let heightConstraint = button.heightAnchor.constraint(equalToConstant: 45.0)
        widthConstraint.isActive = true
        heightConstraint.isActive = true
        let barButton = UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func addUserButtonPressed() {
        self.performSegue(withIdentifier: "showNewPatient", sender: self)
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

//extension UILabel {
//    @objc public var substituteFontName : String {
//        get {
//            return self.font.fontName;
//        }
//        set {
//            let fontNameToTest = self.font.fontName.lowercased();
//            var fontName = newValue;
//            if fontNameToTest.range(of: "bold") != nil {
//                fontName += "-Bold";
//            } else if fontNameToTest.range(of: "medium") != nil {
//                fontName += "-Medium";
//            } else if fontNameToTest.range(of: "light") != nil {
//                fontName += "-Light";
//            } else if fontNameToTest.range(of: "ultralight") != nil {
//                fontName += "-UltraLight";
//            }
//            self.font = UIFont(name: fontName, size: self.font.pointSize)
//        }
//    }
//}
//
//extension UITextView {
//    @objc public var substituteFontName : String {
//        get {
//            return self.font?.fontName ?? "";
//        }
//        set {
//            let fontNameToTest = self.font?.fontName.lowercased() ?? "";
//            var fontName = newValue;
//            if fontNameToTest.range(of: "bold") != nil {
//                fontName += "-Bold";
//            } else if fontNameToTest.range(of: "medium") != nil {
//                fontName += "-Medium";
//            } else if fontNameToTest.range(of: "light") != nil {
//                fontName += "-Light";
//            } else if fontNameToTest.range(of: "ultralight") != nil {
//                fontName += "-UltraLight";
//            }
//            self.font = UIFont(name: fontName, size: self.font?.pointSize ?? 17)
//        }
//    }
//}
//
//extension UITextField {
//    @objc public var substituteFontName : String {
//        get {
//            return self.font?.fontName ?? "";
//        }
//        set {
//            let fontNameToTest = self.font?.fontName.lowercased() ?? "";
//            var fontName = newValue;
//            if fontNameToTest.range(of: "bold") != nil {
//                fontName += "-Bold";
//            } else if fontNameToTest.range(of: "medium") != nil {
//                fontName += "-Medium";
//            } else if fontNameToTest.range(of: "light") != nil {
//                fontName += "-Light";
//            } else if fontNameToTest.range(of: "ultralight") != nil {
//                fontName += "-UltraLight";
//            }
//            self.font = UIFont(name: fontName, size: self.font?.pointSize ?? 17)
//        }
//    }
//}
