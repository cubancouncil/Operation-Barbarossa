//
//  CitiesDataController.m
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import "CitiesDataController.h"
#import "City.h"

@implementation CitiesDataController

@synthesize citiesList;

- (id)init {
    if (self = [super init]) {
        [self createDemoData];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://127.0.0.1/api/cities/"]
                                                 cachePolicy:NSURLRequestUseProtocolCachePolicy
                                             timeoutInterval:60.0];
        NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        if (conn) {
            NSString *receivedData = [[NSMutableData data] retain];
            [receivedData release];
            NSLog(@"Data!");
        } else {
            NSLog(@"No data!");
        }

        
        //NSLog(cities);
    }
    return self;
}

- (void)setCitiesList:(NSMutableArray *)newList {
    if (citiesList != newList) {
        [citiesList release];
        citiesList = [newList mutableCopy];
    }
}

- (unsigned)countOfCitiesList {
    return [citiesList count];
}

- (City *)objectInListAtIndex:(unsigned)theIndex {
    return [citiesList objectAtIndex:theIndex];
}

- (void)dealloc {
    [citiesList release];
    [super dealloc];
}

- (void)createDemoData {
    
    NSMutableArray *tmpList = [[NSMutableArray alloc] init];
    City *tmpCity;
    
    tmpCity = [[City alloc] init];
    tmpCity.name = @"Portland";
    [tmpList addObject:tmpCity];
    [tmpCity release];
    
    tmpCity = [[City alloc] init];
    tmpCity.name = @"New York";
    [tmpList addObject:tmpCity];
    [tmpCity release];
    
    tmpCity = [[City alloc] init];
    tmpCity.name = @"Chicago";
    [tmpList addObject:tmpCity];
    [tmpCity release];
    
    self.citiesList = tmpList;
    [tmpList release];
    
}

@end
