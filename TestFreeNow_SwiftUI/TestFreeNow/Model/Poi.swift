//
//  Poi.swift
//  TestFreeNow
//
//  Created by Jorge Flor on 09/02/20.
//  Copyright © 2020 Jorge Flor. All rights reserved.
//

import Foundation

class Poi: Codable {
    var id : Int?
    var coordinate : [String]?
    var state : String?
    var type : String?
    var heading : Double?
    
    init(id: Int, coordinate: [String], state: String, type: String, heading: Double) {
        self.id = id
        self.coordinate = coordinate
        self.state = state
        self.type = type
        self.heading = heading
    }
}
