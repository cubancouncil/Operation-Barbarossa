//
//  CitiesViewController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CitiesDataController;

@interface CitiesViewController : UITableViewController {
    CitiesDataController *citiesDataController;
}

@property (nonatomic, retain) CitiesDataController *citiesDataController;

@end
