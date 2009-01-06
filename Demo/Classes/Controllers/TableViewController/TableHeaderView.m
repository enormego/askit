//
//  TableHeaderView.m
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import "TableHeaderView.h"


@implementation TableHeaderView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		UILabel* title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 8.0f, 300.0f, 22.0f)];
		title.text = @"My ASTable";
		title.font = [UIFont boldSystemFontOfSize:20.0f];
		title.backgroundColor = [UIColor clearColor];
		title.shadowColor = [UIColor colorWithWhite:1.0f alpha:0.49f];
		title.shadowOffset = CGSizeMake(0.0f, 1.0f);
		[self.contentView addSubview:title];
		[title release];
		
		UILabel* text = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 35.0f, 300.0f, 80.0f)];
		text.font = [UIFont systemFontOfSize:13.0f];
		text.backgroundColor = [UIColor clearColor];
		text.numberOfLines = 5;
		
		text.text = @"Curabitur ligula. Sed nunc quam, vehicula nec, ultrices non, condimentum vitae, metus. Fusce vel ante sed ante ultricies egestas. Vestibulum eget libero. Nullam vel diam. Sed nec mi. Proin lectus augue, lacinia id, blandit sit amet, volutpat at.";
		
		[self.contentView addSubview:text];
		[text release];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


@end
