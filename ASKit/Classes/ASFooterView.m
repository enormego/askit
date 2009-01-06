//
//  ASFooterCell.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASFooterView.h"
#import "ASTableViewCell.h"
#import "ASTableViewCellLabel.h"


@implementation ASFooterView
@synthesize title, alternate;

- (id)initWithFrame:(CGRect)frame {
	if((self = [super initWithFrame:frame])) {
		title = [[ASTableViewCellLabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 44.0f)];
		title.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		title.textAlignment = UITextAlignmentCenter;
		title.backgroundColor = [UIColor clearColor];
		title.textColor = [UIColor blackColor];
		title.font = [UIFont boldSystemFontOfSize:12.0f];
		title.highlightedTextColor = [UIColor whiteColor];
		title.shadowColor = [UIColor colorWithWhite:1.0f alpha:0.52f];
		title.shadowOffset = CGSizeMake(0.0f, 1.0f);
		[self addSubview:title];
	}
	
	return self;
}

- (void)setAlternate:(BOOL)isAlternate {
	self.backgroundColor = (alternate = isAlternate) ? [ASTableViewCell alternateColor] : [ASTableViewCell regularColor];
}

- (NSString*)text {
	return title.text;
}

- (void)setText:(NSString*)text {
	title.text = text;
}

- (void)dealloc {
    [super dealloc];
}


@end
