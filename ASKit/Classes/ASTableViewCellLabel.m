//
//  ASTableViewCellLabel.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASTableViewCellLabel.h"


@implementation ASTableViewCellLabel

- (void)setHighlighted:(BOOL)highlighted {
	if(highlighted) {
		self.shadowColor = [UIColor clearColor];
	} else {
		self.shadowColor = [UIColor colorWithWhite:1.0f alpha:0.52f];
	}
	
	[super setHighlighted:highlighted];
}

@end
