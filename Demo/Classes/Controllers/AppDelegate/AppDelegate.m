//
//  AppDelegate.m
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright enormego 2009. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
