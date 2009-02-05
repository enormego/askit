//
//  ASHeaderView.m
//  ASKit
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import "ASHeaderView.h"
#import "ASTableViewCell.h"


@implementation ASHeaderView
@synthesize height, contentView;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		self.height = frame.size.height;
		
		contentView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, frame.size.width, self.height)];
		contentView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
		contentView.backgroundColor = [UIColor colorWithRed:0.678431373f green:0.678431373f blue:0.690196078f alpha:1.0f];
		[self addSubview:contentView];
		
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, frame.size.width, 86.0f)];
		[self.contentView addSubview:imageView];
		imageView.image = [UIImage imageNamed:@"askit-hdr-bck.png"];
		self.backgroundColor = [UIColor colorWithRed:0.470588235f green:0.470588235f blue:0.482352941 alpha:1.0f];
		
		borderLine = [[ASTableViewCell borderView] retain];
		borderLine.frame = CGRectMake(0.0f, self.height-2.0f, frame.size.width, 2.0f);
		// borderLine.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
		[self.contentView addSubview:borderLine];
    }
	
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
	[contentView release];
	[imageView release];
    [super dealloc];
}


@end
