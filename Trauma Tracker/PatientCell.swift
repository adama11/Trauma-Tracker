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
    @IBOutlet weak var ESIview: UIView!
    //    var patientData: [Any]?
//    var patientId: Int!
    var ESIrating: Int!
    var roomNum: String!
    var ESIcircle: CAShapeLayer!
//    var firstName: String!
//    var lastName: String!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.contentView.layer.cornerRadius = 12
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        roomNumLabel.adjustsFontSizeToFitWidth = true
        roomNumLabel.minimumScaleFactor = 0.2
        ESIratingLabel.adjustsFontSizeToFitWidth = true
        ESIratingLabel.minimumScaleFactor = 0.2

        
        self.selectionStyle = .none
//        self.contentView.addShadow()
        
        // add shadow on cell
//        layer.backgroundColor = UIColor.clear.cgColor
//        contentView.backgroundColor = .clear
//        backgroundColor = .clear // very important
//        layer.masksToBounds = false
//        layer.shadowOpacity = 0.20
//        layer.shadowRadius = 6
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//        layer.shadowColor = UIColor.black.cgColor
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        ESIcircle = drawIcon(square: ESIview, color: UIColor(red: 214/255, green: 230/255, blue: 235/255, alpha: 1.0).cgColor, inset: 4.0)
    }
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            let margins = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
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
        ESIrating = data.getSeverityRank()
        
        self.backgroundColor = getSeverityColor(ESIrating)
        
        
        drawIcon(square: primaryDetailIcon, color: UIColor.red.cgColor, inset: 2.0)
        drawIcon(square: secondaryDetailIcon, color: UIColor.red.cgColor, inset: 2.0)
    }
    
    func getSeverityColor(_ ESI: Int) -> UIColor {
        if (ESI == 1) {
            return UIColor(red: 242/255, green: 162/255, blue: 160/255, alpha: 1.0)
        } else if (ESI == 2) {
            return UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else if (ESI == 3) {
            return UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else {
            return UIColor(red: 214/255, green: 230/255, blue: 235/255, alpha: 1.0)
        }
    }
    
    func drawESICircle() {
        let bgColor : UIColor!
        if (self.ESIrating == 1) {
            bgColor = UIColor(red: 235/255, green: 33/255, blue: 39/255, alpha: 1.0)
        } else if (self.ESIrating == 2) {
            bgColor = UIColor(red: 250/255, green: 181/255, blue: 27/255, alpha: 1.0)
        } else if (self.ESIrating == 3) {
            bgColor = UIColor(red: 250/255, green: 181/255, blue: 27/255, alpha: 1.0)
        } else {
            bgColor = UIColor(red: 0/255, green: 185/255, blue: 243/255, alpha: 1.0)
        }
        drawIcon(square: ESIview, color: bgColor.cgColor, inset: 3.0)
//        ESIview.layer.cornerRadius = ESIview.frame.height/2.0
//        ESIview.backgroundColor = bgColor
//        ESIratingLabel.textColor = UIColor.white

    }
    
    func drawIcon(square: UIView, color: CGColor, inset: CGFloat) {
        let circlePath = UIBezierPath(ovalIn: square.bounds.insetBy(dx: inset, dy: inset))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = color
        //    shapeLayer.strokeColor = UIColor.redColor().CGColor
        //    shapeLayer.lineWidth = desiredLineWidth
//        square.layer.addSublayer(shapeLayer)
        square.layer.insertSublayer(shapeLayer, at: 0)
    }

}

extension UIView {
    func addShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10.0
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
}
