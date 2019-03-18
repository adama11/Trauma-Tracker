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

    var ESIrating: Int!
    var roomNum: String!
    
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
        
        self.layoutIfNeeded()
        
    }
    

    override var frame: CGRect {
        //Rounded and inset row
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
        // Configure the view for the selected state
        super.setSelected(selected, animated: animated)
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
        //Remove colored circles before reuse
        ESIview.layer.sublayers?.remove(at: 0)
        secondaryDetailIcon.layer.sublayers?.remove(at: 0)
        primaryDetailIcon.layer.sublayers?.remove(at: 0)
    
    }
    
    
    func updatePatientData(_ data: Patient) {
        roomNum = data.roomNumber
        roomNumLabel?.text = roomNum
        
        ESIrating = data.getSeverityRank()
        ESIratingLabel?.text = String(ESIrating)
        
        backgroundColor = getSeverityColor()
        self.layoutIfNeeded()
        drawESICircle()
       
        // Get top two most severe vitals for previewed vitals data in each cell
        let topTwo = data.topTwo()
        if topTwo[0] == "spo2" {
            primaryDetailText.text = "\(data.spo2.rounded(toPlaces: 1))% SpO2"
        } else if topTwo[0] == "pulseRate" {
            primaryDetailText.text = "\(data.pulseRate.rounded(toPlaces: 1)) BPM"
        } else if topTwo[0] == "bodyTemperature" {
            primaryDetailText.text = "\(data.bodyTemperature.rounded(toPlaces: 1)) ℉"
        } else if topTwo[0] == "bloodPressure" {
            primaryDetailText.text = "\(Int(data.bloodPressureSystolic))/\(Int(data.bloodPressureDiastolic)) mmHg"
        }
        
        if topTwo[1] == "spo2" {
            secondaryDetailText.text = "\(data.spo2.rounded(toPlaces: 1))% SpO2"
        } else if topTwo[1] == "pulseRate" {
            secondaryDetailText.text = "\(data.pulseRate.rounded(toPlaces: 1)) BPM"
        } else if topTwo[1] == "bodyTemperature" {
            secondaryDetailText.text = "\(data.bodyTemperature.rounded(toPlaces: 1)) ℉"
        } else if topTwo[1] == "bloodPressure" {
            secondaryDetailText.text = "\(Int(data.bloodPressureSystolic))/\(Int(data.bloodPressureDiastolic)) mmHg"
        }
        
        // Draw colored icon for previewed vitals data
        drawIcon(square: primaryDetailIcon, color: UIColor.red.cgColor, inset: 2.0)
        drawIcon(square: secondaryDetailIcon, color: UIColor.red.cgColor, inset: 2.0)
    }
    
    // Get color for cell background
    func getSeverityColor() -> UIColor {
        if (self.ESIrating > 6) {
            return UIColor(red: 242/255, green: 162/255, blue: 160/255, alpha: 1.0)
        } else if (self.ESIrating > 4) {
            return UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else if (self.ESIrating > 3) {
            return UIColor(red: 250/255, green: 219/255, blue: 162/255, alpha: 1.0)
        } else {
            return UIColor(red: 214/255, green: 230/255, blue: 235/255, alpha: 1.0)
        }
    }
    
    // Get color and draw circle for ESI
    func drawESICircle() {
        let bgColor : UIColor!
        if (self.ESIrating > 6) {
            bgColor = UIColor(red: 235/255, green: 33/255, blue: 39/255, alpha: 1.0)
        } else if (self.ESIrating > 4) {
            bgColor = UIColor(red: 250/255, green: 181/255, blue: 27/255, alpha: 1.0)
        } else if (self.ESIrating > 3) {
            bgColor = UIColor(red: 250/255, green: 181/255, blue: 27/255, alpha: 1.0)
        } else {
            bgColor = UIColor(red: 0/255, green: 185/255, blue: 243/255, alpha: 1.0)
        }
        drawIcon(square: ESIview, color: bgColor.cgColor, inset: 3.0)
        print(self.ESIrating)
    }
    
    // draw arbitrary colored circle
    func drawIcon(square: UIView, color: CGColor, inset: CGFloat) {
        let circlePath = UIBezierPath(ovalIn: square.bounds.insetBy(dx: inset, dy: inset))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = color
        square.layer.insertSublayer(shapeLayer, at: 0)
    }

}

// Add shadow to any view extension
extension UIView {
    func addShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10.0
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
}
