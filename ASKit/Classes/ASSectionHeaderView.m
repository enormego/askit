//
//  ASSectionHeaderView.m
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import "ASSectionHeaderView.h"
#import "ASTableViewCell.h"


@implementation ASSectionHeaderView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 310.0f, self.frame.size.height-1.0f)];
		title.backgroundColor = [UIColor clearColor];
		title.font = [UIFont boldSystemFontOfSize:17.0f];
		title.shadowColor = [UIColor whiteColor];
		title.shadowOffset = CGSizeMake(0.0f, 1.0f);
		title.textColor = [UIColor colorWithWhite:0.1f alpha:1.0f];
		title.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
		[self addSubview:title];
		
		UIView* border = [[UIView alloc] initWithFrame:CGRectMake(0.0f, self.frame.size.height-1.0f, 320.0f, 1.0f)];
		border.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.78f];
		border.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;
		[self addSubview:border];
		[border release];
		
		self.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.55f];
    }
    return self;
}

- (void)setText:(NSString*)text {
	title.text = text;
}

- (NSString*)text {
	return title.text;
}

- (void)dealloc {
	[title release];
    [super dealloc];
}


@end
