//
//  BarbarossaAppDelegate.h
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright Cuban Council 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarbarossaAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
