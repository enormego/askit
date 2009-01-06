//
//  ASTableViewCell.h
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ASTableViewCell : UITableViewCell {
@private
	UIView* borderLine;
	BOOL alternate;
	UILabel* label;
}

+ (UIColor*)regularColor;
+ (UIColor*)alternateColor;
+ (UIColor*)borderLineColor;

@property(nonatomic,getter=isAlternate) BOOL alternate;

@end
