//
//  ASSectionHeaderView.h
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ASSectionHeaderView : UIView {
@private
	UILabel* title;
}

@property(nonatomic, copy) NSString* text;
@end
