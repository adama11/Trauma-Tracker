//
//  PatientCell.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit

class PatientCell: UITableViewCell {

    @IBOutlet weak var roomNumLabel: UILabel!
    @IBOutlet weak var ESIratingLabel: UILabel!
    @IBOutlet weak var primaryDetailIcon: UIView!
    @IBOutlet weak var primaryDetailText: UILabel!
    @IBOutlet weak var secondaryDetailIcon: UIView!
    @IBOutlet weak var secondaryDetailText: UILabel!
    //    var patientData: [Any]?
//    var patientId: Int!
    var ESIrating: Int!
    var roomNum: String!
//    var firstName: String!
//    var lastName: String!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        roomNumLabel.adjustsFontSizeToFitWidth = true
        roomNumLabel.minimumScaleFactor = 0.2
        ESIratingLabel.adjustsFontSizeToFitWidth = true
        ESIratingLabel.minimumScaleFactor = 0.2
        self.selectionStyle = .none
        
    }
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            let margins = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
            var frame = newFrame
            frame = frame.inset(by: margins)
            super.frame = frame
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updatePatientData(_ data: Patient) {
        roomNumLabel?.text = data.roomNumber
        roomNum = data.roomNumber
        ESIratingLabel?.text = String(data.getSeverityRank())
//        setBackgroundColor(ESIrating)

        drawIcon(square: primaryDetailIcon, color: UIColor.red.cgColor)
        drawIcon(square: secondaryDetailIcon, color: UIColor.red.cgColor)
    }
    
    func setBackgroundColor(_ ESI: Int) {
        if (ESI == 1) {
            backgroundColor = UIColor(red: 242/255, green: 162/255, blue: 160/255, alpha: 1.0)
        } else if (ESI == 2) {
            backgroundColor = UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else if (ESI == 3) {
            backgroundColor = UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else {
            backgroundColor = UIColor(red: 214/255, green: 230/255, blue: 235/255, alpha: 1.0)
        }
    }
    
    func drawIcon(square: UIView, color: CGColor) {
        let inset: CGFloat = 2.0
        let circlePath = UIBezierPath(ovalIn: square.bounds.insetBy(dx: inset, dy: inset))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = color
        //    shapeLayer.strokeColor = UIColor.redColor().CGColor
        //    shapeLayer.lineWidth = desiredLineWidth
        square.layer.addSublayer(shapeLayer)
    }

}
