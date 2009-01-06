//
//  AppDelegate.h
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright enormego 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TableViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TableViewController *viewController;

@end

