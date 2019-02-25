//
//  DetailedPatientViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class DetailedPatientViewController: UIViewController {
    
    @IBOutlet weak var pulseRateIcon: UIView!
    @IBOutlet weak var respRateIcon: UIView!
    @IBOutlet weak var bodyTempIcon: UIView!
    @IBOutlet weak var spo2Icon: UIView!
    @IBOutlet weak var bloodPressureIcon: UIView!
    @IBOutlet weak var ESILabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
    }
    
    override func viewDidLayoutSubviews() {
        let vitalsItems: [UIView] = [pulseRateIcon, respRateIcon, bodyTempIcon, spo2Icon, bloodPressureIcon]
        for v in vitalsItems {
            drawIcon(square: v, color: UIColor.green.cgColor)
        }
        
    }

    
    func drawIcon(square: UIView, color: CGColor) {
        let inset: CGFloat = 4.0
        let circlePath = UIBezierPath(ovalIn: square.bounds.insetBy(dx: inset, dy: inset))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = color
        //    shapeLayer.strokeColor = UIColor.redColor().CGColor
        //    shapeLayer.lineWidth = desiredLineWidth
        square.layer.addSublayer(shapeLayer)
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
