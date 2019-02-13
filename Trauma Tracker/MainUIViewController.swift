//
//  MainUIViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class MainUIViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var settingsButton: UINavigationItem!
    var myimage:UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
//        myimage = UIImage(named: "gear3x")?.withRenderingMode(.alwaysOriginal)
//        myimage = resizeImage(image: myimage, newWidth: 25.0)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myimage, style: .plain, target: self, action: #selector(addTapped))
//        
//        let button = UIButton.init(type: .custom)
//        //set image for button
//        button.setImage(UIImage(named: "gear3x"), for: .normal)
//        //add function for button
//        button.addTarget(self, action: #selector(addTapped), for: .touchUpInside)
//        //set frame
//        button.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
//
//        let barButton = UIBarButtonItem(customView: button)
//        //assign button to navigationbar
//        self.navigationItem.rightBarButtonItem = barButton
        
//        let imageView = UIImageView(image: UIImage(named: "gear3x"))
//        imageView.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
//
//        settingsButton.rightBarButtonItem?.customView = imageView
        
//        backBarButtonItem?.customView
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
        // Do any additional setup after loading the view.
    }
    @objc func addTapped(sender: AnyObject) {
        
    }
    
//    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
//
//        let scale = newWidth / image.size.width
//        let newHeight = image.size.height * scale
//        UIGraphicsBeginImageContext(CGSize(newWidth, newHeight))
//        image.drawInRect(CGRect(0, 0, newWidth, newHeight))
//        let newImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        return newImage
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
