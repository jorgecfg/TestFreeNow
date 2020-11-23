//
//  PoiListVM.swift
//  TestFreeNow
//
//  Created by Jorge Flor on 08/02/20.
//  Copyright © 2020 Jorge Flor. All rights reserved.
//

import Foundation
import Alamofire

enum ErrorConnection : Error {
    case NoInternet
    case NoData
}

@objcMembers
public class PoiListVM {
    func loadPoiListVM(versionAPI: String, p1Lat: String, p1Lon: String, p2Lat: String, p2Lon: String, callback: @escaping ([Poi], ErrorConnection?) -> Void) {
        var urlPoiEndpoint = "\(Configuration().endpointPoi)\(versionAPI)?p1Lon=\(p1Lon)&p1Lat=\(p1Lat)&p2Lon=\(p2Lon)&p2Lat=\(p2Lat)"
        
        Alamofire.request(urlPoiEndpoint).responseJSON { response in
            var pois : [Poi] = [Poi]()
            guard response.error == nil else { callback(pois, .NoInternet) ; return }
            guard let json = try? JSONSerialization.jsonObject(with: response.data!, options: .allowFragments) else {
                callback(pois, .NoData)
                return
            }

            if let countTemp = (json as AnyObject).count {
                guard countTemp > 0,
                    let datas:NSDictionary = json as? NSDictionary,
                    datas.count > 0 else {
                        callback(pois, .NoData)
                        return
                }
                

                pois = try! JSONDecoder().decode([Poi].self, from: response.data!)
                for poi in pois {
                    print(poi.id)
                }
                
//                for dataPoi in datas {
                    
//                    if let objPoi:NSDictionary = dataPoi.value as? NSDictionary , let id:String = objPoi.object(forKey: "id") as? String , let id_str:String = objVideo.object(forKey: "id_str") as? String , let postDate:String = objVideo.object(forKey: "postDate") as? String , let postText:String = objVideo.object(forKey: "postText") as? String , let postUser:String = objVideo.object(forKey: "postUser") as? String , let videoUrl:String = objVideo.object(forKey: "videoUrl") as? String , let videoDuration:String = objVideo.object(forKey: "videoDuration") as? String {
//
//                        let videoTemp = Video(id_str: id_str, videoUrl: videoUrl, photoUrl: photoUrl, postUser: postUser, postText: postText, postDate: postDate, videoDuration: videoDuration)
//                        videos.append(videoTemp)
                        
//                    }
                    
                    
                    
//                }
                
                
                
                
                
            } else {
                //print("No Content")
            }
            
            callback(pois, nil)

        }
        
        
        
    }
}
