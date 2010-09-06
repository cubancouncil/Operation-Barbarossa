//
//  LocationDataController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Location;

@interface LocationDataController : NSObject {
    NSMutableArray *locationList;
}

- (unsigned)countOfList;
- (Location *)objectInListAdIndex:(unsigned)theIndex;

@end
