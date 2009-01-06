//
//  ASTableViewController.h
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASTableViewCell.h"

@interface ASTableViewController : UITableViewController {
@private
	NSString* footerText;
}

@property(nonatomic, retain) NSString* footerText;
@end
