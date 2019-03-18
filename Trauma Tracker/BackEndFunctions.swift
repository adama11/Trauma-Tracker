//
//  BackEndFunctions.swift
//  Trauma Tracker
//
//  Created by Tommy Keaty on 2/24/19.
//  Copyright © 2019 Adam Dama. All rights reserved.
//

import Foundation
import AWSAppSync

class BackEndFunctions {
    
    // Return all rooms on AWS Database
    class func getAllAWSRooms(_ appSyncClient: AWSAppSyncClient, dataHandler: @escaping([String]) -> Void) {
        var allRooms : [String] = []
        appSyncClient.fetch(query: ListTraumaTracker2SQuery(filter: nil, limit: nil, nextToken: nil))  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                result?.data?.listTraumaTracker2S?.items!.forEach { allRooms.append($0?.roomNumber ?? "") }
                dataHandler(allRooms)
//                print("return all rooms: \(allRooms)")
            }
            
        }
    }
    
}
