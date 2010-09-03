//
//  LocationDetailViewController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Location;

@interface LocationDetailViewController : UITableViewController {
    Location *location;
}

@property (nonatomic, retain) Location *location;

@end
