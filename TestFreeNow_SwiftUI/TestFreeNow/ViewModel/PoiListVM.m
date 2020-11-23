//
//  PoiListVM.m
//  TestFreeNow
//
//  Created by Jorge Flor on 09/02/20.
//  Copyright © 2020 Jorge Flor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PoiListVM.h"
#import <AFNetworking.h>
#import <AFHTTPSessionManager.h>

@interface PoiListVM ()
    @property (nonatomic, retain) NSString *test;
@end

@implementation PoiListVM {
}

- (void)loadPois {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

    NSString *apiURL = [NSString stringWithFormat:@"https://poi-api.mytaxi.com/PoiService/poi/v1?p2Lat=53.394655&p1Lon=9.757589&p1Lat=53.694865&p2Lon=10.099891"];


    /// CACHE
    [manager POST:apiURL parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error: %@", error);
    }];

     
}

@end


