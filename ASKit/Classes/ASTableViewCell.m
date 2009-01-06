//
//  ASTableViewCell.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASTableViewCell.h"

static UIColor* alternateColor;
static UIColor* regularColor;
static UIColor* borderLineColor;


@implementation ASTableViewCell
@synthesize alternate;

+ (void)initialize {
	alternateColor = [[UIColor alloc] initWithRed:0.823529412f green:0.835294118f blue:0.839215686f alpha:1.0f];
	regularColor = [[UIColor alloc] initWithRed:0.784313725f green:0.792156863f blue:0.8f alpha:1.0f];
	borderLineColor = [[UIColor alloc] initWithRed:0.894117647f green:0.898039216f blue:0.901960784f alpha:1.0f];
}

+ (UIColor*)regularColor {
	return regularColor;
}

+ (UIColor*)alternateColor {
	return alternateColor;
}

+ (UIColor*)borderLineColor {
	return borderLineColor;
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if((self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier])) {
		label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 300.0f, 44.0f)];
		label.backgroundColor = [UIColor clearColor];
		label.font = [UIFont boldSystemFontOfSize:20.0f];
		label.textColor = [UIColor blackColor];
		label.highlightedTextColor = [UIColor whiteColor];
		label.autoresizingMask = UIViewAutoresizingFlexibleWidth;
		[self.contentView addSubview:label];

		borderLine = [[UIView alloc] initWithFrame:CGRectZero];
		borderLine.frame = CGRectMake(0.0f, 43.0f, self.frame.size.width, 1.0f);
		borderLine.backgroundColor = borderLineColor;
	}
	
	return self;
}

- (NSString*)text {
	return label.text;
}

- (void)setText:(NSString*)text {
	label.text = text;
}

- (void)layoutSubviews {
	[super layoutSubviews];

	if([self.subviews objectAtIndex:self.subviews.count-1] != borderLine) {
		[borderLine removeFromSuperview];
		[self addSubview:borderLine];
	}

	self.backgroundColor = alternate ? alternateColor : regularColor;
}

- (void)dealloc {
	[label release];
	[borderLine release];
    [super dealloc];
}


@end
