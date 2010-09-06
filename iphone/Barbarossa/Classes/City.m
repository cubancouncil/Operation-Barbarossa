//
//  City.m
//  Barbarossa
//
//  Created by Chris Forrette on 9/3/10.
//  Copyright 2010 Cuban Council. All rights reserved.
//

#import "City.h"


@implementation City

@synthesize name;

- (void)dealloc {
    [name release];
    [super release];
}

@end
