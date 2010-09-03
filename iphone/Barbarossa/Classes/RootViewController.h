//
//  RootViewController.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UIViewController {
    UIButton *locateButton;
    UIButton *selectCityButton;
    UITableView *cityList;
}

@property (nonatomic, retain) IBOutlet UITableView *cityList;

@end
