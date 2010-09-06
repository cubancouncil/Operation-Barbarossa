//
//  CitiesDataController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import <Foundation/Foundation.h>

@class City;

@interface CitiesDataController : NSObject {
    NSMutableArray *citiesList;
}

//@property (nonatomic, retain) NSMutableArray *citiesList;
@property (nonatomic, copy, readwrite) NSMutableArray *citiesList;

- (unsigned)countOfCitiesList;
- (City *)objectInCitiesListAtIndex:(unsigned)theIndex;
- (void)createDemoData;

@end
