//
//  PatientTableViewController.swift
//  Trauma Tracker
//
//  Created by Adam Dama on 2/8/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import UIKit
import AWSAppSync

class PatientTableViewController: UITableViewController {
    
    var appSyncClient: AWSAppSyncClient?

    //Patient Id, FirstName, LastName, Room #, ESI #
//    var patients:[[Any]] = [[0, "Adam", "Dama", 3, 5],
//                            [1, "Xiaowei", "Lyu", 1, 4],
//                            [2, "Jeff", "Varghese", 10, 2],
//                            [3, "Tom", "Keaty", 6, 1],
//                            [4, "Thisisareallylongname", "Thisisareallylongname", 2, 2]]
    
    var defaultPatient : Patient = Patient(roomNumber: "Default", gender: "Male", age: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Testing pulls from the DB
        //Not working real-time ATM
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
//        initializeAWSSubscriptions()
//        printAllAWSPatients()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
//    var discard: Cancellable?
//    func initializeAWSSubscriptions() {
//        do {
//            discard = try appSyncClient?.subscribe(subscription: OnCreateTraumaTracker2Subscription(), resultHandler: { (result, transaction, error) in
//                if let result = result {
//                    print("Added new patient: " + result.data!.onCreateTraumaTracker2!.roomNumber)
//                } else if let error = error {
//                    print(error.localizedDescription)
//                }
//            })
//        } catch {
//            print("Error starting subscription.")
//        }
//    }
    
//    func getAllAWSPatients() {
//        appSyncClient?.fetch(query: ListTraumaTracker2SQuery(filter: nil, limit: nil, nextToken: nil))  { (result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//            }
//            
////            result?.data?.listTraumaTracker2S?.items!.forEach { print(($0?.roomNumber)!) }
//            
//            if let cloudPatients = result?.data?.listTraumaTracker2S?.items! {
//                self.patients = []
//                for p in cloudPatients {
//                    let item = [p?.roomNumber as Any, p?.spo2 as Any, p?.pulseRate as Any, p?.bodyTemperature as Any, p?.bloodPressureSystolic as Any]
//                    self.patients.append(item)
//                }
//            } else {
//                print("Failed to pull items.")
//            }
//            
//            print(self.patients)
//            
//        }
//    }
    
    
    // MARK: - Table view data source
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
//            print("Retrieving count of patients from UserDefaults.")
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            let decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
//            print("count: \(decodedData.count)")
            return decodedData.count
        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 75.0;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if UserDefaults.standard.object(forKey: "Patients") != nil {
//            print("Retrieving patients from UserDefaults.")
            let decoded  = UserDefaults.standard.object(forKey: "Patients") as! Data
            var decodedData = NSKeyedUnarchiver.unarchiveObject(with: decoded) as! [String : Patient]
            let cell = tableView.dequeueReusableCell(withIdentifier: "patientCell", for: indexPath) as! PatientCell
            cell.updatePatientData(Array(decodedData.values)[indexPath.row])
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientCell", for: indexPath) as! PatientCell
        cell.updatePatientData(defaultPatient)
        //Testing how to unpack all this data
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedCell = tableView.cellForRow(at: indexPath)
        self.performSegue(withIdentifier: "GoToPatientDetailView", sender: selectedCell)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToPatientDetailView" {
            let selectedCell = sender as! PatientCell
            let destinationController = segue.destination as! DetailedPatientViewController
            if let roomNumber = selectedCell.roomNum {
                destinationController.roomNumber = roomNumber
            }
        }

    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
