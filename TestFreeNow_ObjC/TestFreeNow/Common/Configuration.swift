//
//  Configuration.swift
//  TestFreeNow
//
//  Created by Jorge Flor on 08/02/20.
//  Copyright © 2020 Jorge Flor. All rights reserved.
//

import UIKit

class Configuration : NSObject {
    var urlBaseEndpoint : String = "https://poi-api.mytaxi.com/"
    var endpointPoi : String = "\(Configuration().urlBaseEndpoint)PoiService/poi/"
    
    enum servicesEndpoint : String {
        case poiService = "PoiService/poi/"
    }
}
