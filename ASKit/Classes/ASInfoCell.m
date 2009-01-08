//
//  ASInfoCell.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASInfoCell.h"
#import "ASTableViewCellLabel.h"


@implementation ASInfoCell
@synthesize title, activityIndicator;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString*)reuseIdentifier {
	if((self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier])) {
		title = [[ASTableViewCellLabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 44.0f)];
		title.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		title.textAlignment = UITextAlignmentCenter;
		title.backgroundColor = [UIColor clearColor];
		title.textColor = [UIColor blackColor];
		title.font = [UIFont boldSystemFontOfSize:12.0f];
		title.highlightedTextColor = [UIColor whiteColor];
		title.shadowColor = [UIColor colorWithWhite:1.0f alpha:0.52f];
		title.shadowOffset = CGSizeMake(0.0f, 1.0f);
		
		activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
		activityIndicator.frame = CGRectMake(290.0f, 34.0f, 20.0f, 20.0f);
		activityIndicator.hidesWhenStopped = YES;
		
		self.selectionStyle = UITableViewCellSelectionStyleNone;
		
		[self.contentView addSubview:activityIndicator];
		[self.contentView addSubview:title];
	}
	
	return self;
}

- (NSString*)text {
	return title.text;
}

- (void)setText:(NSString*)text {
	title.text = text;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
	
    [super setSelected:selected animated:animated];
	
    // Configure the view for the selected state
}

- (UITableViewCellEditingStyle)editingStyle {
	return UITableViewCellEditingStyleNone;
}

- (void)dealloc {
    [super dealloc];
}


@end
