//
//  Location.m
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import "Location.h"


@implementation Location

@synthesize name;

- (void)dealloc {
    [name release];
    [super dealloc];
}

@end
