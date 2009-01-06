//
//  ASHeaderView.h
//  ASKit
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ASHeaderView : UIView {
@private
	UIImageView* imageView;
	UIView* borderLine;
	UIView* contentView;
	float height;
}

@property(nonatomic,assign) float height;
@property(nonatomic,retain) UIView* contentView;
@end
