//
//  BarbarossaAppDelegate.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface BarbarossaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RootViewController *rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

