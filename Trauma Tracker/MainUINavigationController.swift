//
//  MainUIViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSMobileClient

class MainUINavigationController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.prefersLargeTitles = true
        
        // Custom navbar formatting
        let titleColor = UIColor(red: 48/255, green: 44/255, blue: 108/255, alpha: 1.0)
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Futura-bold", size: 20)!, NSAttributedString.Key.foregroundColor : titleColor]
        self.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Futura-bold", size: 32)!, NSAttributedString.Key.foregroundColor : titleColor]

        // AWS Login
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let userState = userState {
                print("UserState: \(userState.rawValue)")
            } else if let error = error {
                print("error: \(error.localizedDescription)")
            }
        }
//        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (signInState, error) in
//            if let signInState = signInState {
//                print("logged in!")
//            } else {
//                print("error logging in: \(error?.localizedDescription)")
//            }
//        })
//        AWSMobileClient.sharedInstance().initialize { (userState, error) in
//            if let userState = userState {
//                switch(userState){
//                case .signedIn:
//                    print("Logged In")
////                    DispatchQueue.main.async {
////                        print("Logged In")
////                    }
//                case .signedOut:
//                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self, { (userState, error) in
//                        if(error == nil){       //Successful signin
////                            DispatchQueue.main.async {
////
////                            }
//                            print("Logged In")
//                        }
//                    })
//                default:
//                    AWSMobileClient.sharedInstance().signOut()
//                }
//
//            } else if let error = error {
//                print(error.localizedDescription)
//            }
//        }

    }
    
    override func viewDidLayoutSubviews() {
        
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
