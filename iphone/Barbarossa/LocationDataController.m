//
//  LocationDataController.m
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import "LocationDataController.h"
#import "Location.h"

@interface LocationDataController ()
@property (nonatomic, copy, readwrite) NSMutableArray *locationList;
- (void)createDemoData;
@end

@implementation LocationDataController

@synthesize locationList;

- (id)init {
    if (self = [super init]) {
        [self createDemoData];
    }
    return self;
}

// Custom set accessor to ensure the new list is mutable

- (void)setList:(NSMutableArray *)newList {
    if (locationList != newList) {
        [locationList release];
        locationList = [newList mutableCopy];
    }
}

// Accessor methods for list

- (unsigned)countOfList {
    return [locationList count];
}

// Get object in location list at passed index, used for location detail view

- (Location *)objectInListAtIndex:(unsigned)theIndex {
    return [locationList objectAtIndex:theIndex];
}

- (void)dealloc {
    [locationList release];
    [super dealloc];
}


- (void)createDemoData {
    
    // Array of demo data
    
    NSMutableArray *locList = [[NSMutableArray alloc] init];
    Location *location;
    
	location = [[Location alloc] init];
	location.title = @"Portland";
	[locList addObject:location];
    [location release];
    
	location = [[Location alloc] init];
	location.title = @"New York";
	[locList addObject:location];
    [location release];
    
	location = [[Location alloc] init];
	location.title = @"Chicago";
	[locList addObject:location];
    [location release];
    
    self.locationList = locList;
    [locList release];
}

@end

