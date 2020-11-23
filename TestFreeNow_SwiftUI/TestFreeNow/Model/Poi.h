//
//  Poi.h
//  TestFreeNow
//
//  Created by Jorge Flor on 09/02/20.
//  Copyright © 2020 Jorge Flor. All rights reserved.
//

#ifndef Poi_h
#define Poi_h

@interface Poi : NSObject

@property (nonatomic) NSInteger *id;
@property (nonatomic) Coordinate *coordinate;
@property (nonatomic) NSString *state;
@property (nonatomic) NSString *type;
@property (nonatomic) NSDouble *heading;

@end

@interface Coordinate : NSDictionary
@property (nonatomic) NSDouble *latitude;
@property (nonatomic) NSDouble *longitude;
@end
#endif /* Poi_h */
