//
//  ASTableViewCell.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASTableViewCell.h"

static UIColor* alternateColorList;
static UIColor* regularColorList;
static UIColor* alternateColorContent;
static UIColor* regularColorContent;

UIView* borderViewContent() {
	UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1.0f, 1.0f)];
	view.backgroundColor = [UIColor colorWithRed:0.894117647f green:0.898039216f blue:0.901960784f alpha:1.0f];
	return [view autorelease];
}

UIView* borderViewListRegular() {
	UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1.0f, 2.0f)];
	view.backgroundColor = [UIColor colorWithRed:0.733333333f green:0.733333333f blue:0.741176471f alpha:1.0f];
	UIView* lineView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1.0f, 1.0f)];
	lineView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	lineView.backgroundColor = [UIColor colorWithRed:0.537254902f green:0.541176471f blue:0.552941176f alpha:1.0f];
	[view addSubview:lineView];
	[lineView release];
	
	return [view autorelease];
}

UIView* borderViewListAlternate() {
	UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1.0f, 2.0f)];
	view.backgroundColor = [UIColor colorWithRed:0.654901961f green:0.658823529f blue:0.670588235f alpha:1.0f];
	UIView* lineView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1.0f, 1.0f)];
	lineView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	lineView.backgroundColor = [UIColor colorWithRed:0.541176471f green:0.541176471f blue:0.552941176f alpha:1.0f];
	[view addSubview:lineView];
	[lineView release];
	
	return [view autorelease];
}


@implementation ASTableViewCell
@synthesize alternate, type;

+ (void)initialize {
	alternateColorContent = [[UIColor alloc] initWithRed:0.823529412f green:0.835294118f blue:0.839215686f alpha:1.0f];
	regularColorContent = [[UIColor alloc] initWithRed:0.784313725f green:0.792156863f blue:0.8f alpha:1.0f];
	
	alternateColorList = [[UIColor alloc] initWithRed:0.678431373f green:0.678431373f blue:0.690196078f alpha:1.0f];
	regularColorList = [[UIColor alloc] initWithRed:0.596078431f green:0.596078431f blue:0.611764706f alpha:1.0f];
}

+ (UIColor*)regularColor {
	return regularColorList;
}

+ (UIColor*)alternateColor {
	return alternateColorList;
}

+ (UIView*)borderView {
	return borderViewListRegular();
}

+ (UIView*)alternateBorderView {
	return borderViewListAlternate();
}

- (UIColor*)regularColor {
	return self.type == ASTableViewCellTypeList ? regularColorList : regularColorContent;
}

- (UIColor*)alternateColor {
	return self.type == ASTableViewCellTypeList ? alternateColorList : alternateColorContent;
}

- (UIView*)borderView {
	return self.type == ASTableViewCellTypeList ? borderViewListRegular() : borderViewContent();
}

- (UIView*)alternateBorderView {
	return self.type == ASTableViewCellTypeList ? borderViewListAlternate() : borderViewContent();
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	return [self initWithFrame:frame reuseIdentifier:reuseIdentifier type:ASTableViewCellTypeList];
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier type:(ASTableViewCellType)cellType {
	if((self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier])) {
		type = cellType == ASTableViewCellTypeList ? ASTableViewCellTypeList : ASTableViewCellTypeContent;
		
		label = [(type == ASTableViewCellTypeList ? [ASTableViewCellLabel alloc] : [UILabel alloc]) initWithFrame:CGRectMake(10.0f, 0.0f, 300.0f, 44.0f)];
		
		label.backgroundColor = [UIColor clearColor];
		label.font = [UIFont boldSystemFontOfSize:20.0f];
		label.textColor = [UIColor blackColor];
		label.highlightedTextColor = [UIColor whiteColor];
		label.autoresizingMask = UIViewAutoresizingFlexibleWidth;
		[self.contentView addSubview:label];
		
		borderView = [[self borderView] retain];
		borderView.frame = CGRectMake(0.0f, self.frame.size.height-borderView.frame.size.height, self.frame.size.width, borderView.frame.size.height);
		borderView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
		[self addSubview:borderView];
	}
	
	return self;
}

- (NSString*)text {
	return label.text;
}

- (void)setText:(NSString*)text {
	label.text = text;
}

- (void)setAlternate:(BOOL)isAlternate {
	if(alternate == isAlternate) return;
	alternate = isAlternate;
	
	if(self.type == ASTableViewCellTypeList) {
		[borderView removeFromSuperview];
		[borderView release], borderView = nil;
		
		borderView = self.alternate ? [[self alternateBorderView] retain] : [[self borderView] retain];
		borderView.frame = CGRectMake(0.0f, self.frame.size.height-borderView.frame.size.height, self.frame.size.width, borderView.frame.size.height);
		borderView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
		[self addSubview:borderView];
	}
}

- (void)layoutSubviews {
	[super layoutSubviews];
	
	if([self.subviews objectAtIndex:self.subviews.count-1] != borderView) {
		[borderView removeFromSuperview];
		[self addSubview:borderView];
	}
	
	self.backgroundColor = alternate ? [self alternateColor] : [self regularColor];
}

- (void)dealloc {
	[label release];
	[borderView release];
    [super dealloc];
}

@end
