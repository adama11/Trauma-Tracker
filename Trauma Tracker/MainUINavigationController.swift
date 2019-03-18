//
//  MainUIViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class MainUINavigationController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.prefersLargeTitles = true
        let titleColor = UIColor(red: 48/255, green: 44/255, blue: 108/255, alpha: 1.0)
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Futura-bold", size: 20)!, NSAttributedString.Key.foregroundColor : titleColor]
        self.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Futura-bold", size: 32)!, NSAttributedString.Key.foregroundColor : titleColor]
//        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
//        titleLabel.text = self.title
//        titleLabel.font = UIFont(name: "Futura", size: 20)
//        titleLabel.textColor = UIColor.purple
//        //adjustsFontSizeToFitWidth & minimumScaleFactor
////        self.navigationBar.topItem?.titleView = titleLabel
////        self.navigationBar.pu
//        self.navigationItem.titleView = titleLabel
        
        
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
