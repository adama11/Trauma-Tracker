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
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ESIratingLabel: UILabel!
//    var patientData: [Any]?
    var patientId: Int!
    var ESIrating: Int!
    var roomNum: Int!
    var firstName: String!
    var lastName: String!
    
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
    
    func updatePatientData(_ data: [Any]) {
        patientId = (data[0] as! Int)
        firstNameLabel?.text = "\(data[1])"
        firstName = (data[1] as! String)
        lastNameLabel?.text = "\(data[2])"
        lastName = (data[2] as! String)
        roomNumLabel?.text = "\(data[3])"
        roomNum = (data[3] as! Int)
        ESIratingLabel?.text = "\(data[4])"
        ESIrating = (data[4] as! Int)
        
        setBackgroundColor(ESIrating)
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

}
