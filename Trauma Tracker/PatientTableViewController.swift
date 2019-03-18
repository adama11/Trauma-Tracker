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
    var defaultPatient : Patient = Patient(roomNumber: "Default", gender: "Male", age: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Reload table on appear
        self.tableView.reloadData()
    }

    override func viewWillAppear(_ animated: Bool) {
//        self.tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let patientDict = Patient.getPatientsDict() {
            return patientDict.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        // Define height for every row
        return 75.0;
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Slide to delete implementation
        if editingStyle == .delete {
            let selectedCell = tableView.cellForRow(at: indexPath) as! PatientCell
            if let roomNumber = selectedCell.roomNum {
                // Todo: Make sure you're removing the correct row
                self.tableView.beginUpdates()
                self.tableView.deleteRows(at: [indexPath], with: .fade)
                _ = Patient.removePatient(roomName: roomNumber)
                self.tableView.endUpdates()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get patient data sorted to display in order, rasterize for improved performance
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientCell", for: indexPath) as! PatientCell
        cell.layer.shouldRasterize = true
        cell.layer.rasterizationScale = UIScreen.main.scale
        if let sortedPatients = Patient.getPatientsSorted() {
            cell.updatePatientData(sortedPatients[indexPath.row])
            print(indexPath.row)
            return cell
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Segue set-up so it passes roomNumber to detailed patient view
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedCell = tableView.cellForRow(at: indexPath)
        self.performSegue(withIdentifier: "GoToPatientDetailView", sender: selectedCell)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Passes roomNumber to detailed patient view
        if segue.identifier == "GoToPatientDetailView" {
            let selectedCell = sender as! PatientCell
            let destinationController = segue.destination as! DetailedPatientViewController
            if let roomNumber = selectedCell.roomNum {
                destinationController.roomNumber = roomNumber
            }
        }

    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

    }
    
    override func viewDidLayoutSubviews() {
    }

}
