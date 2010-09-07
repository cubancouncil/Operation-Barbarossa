//
//  LocationsViewController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LocationDataController;
@class City;

@interface LocationsViewController : UITableViewController {
    LocationDataController *locationDataController;
    City *city;
}

@property (nonatomic, retain) LocationDataController *locationDataController;
@property (nonatomic, retain) City *city;

@end
