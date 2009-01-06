//
//  ASInfoCell.h
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASTableViewCell.h"


@interface ASInfoCell : ASTableViewCell {
@private
	UILabel* title;
	UIActivityIndicatorView* activityIndicator;
}

@property(nonatomic, readonly) UILabel* title;
@property(nonatomic, readonly) UIActivityIndicatorView* activityIndicator;

@end
