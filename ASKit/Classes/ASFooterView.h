//
//  ASFooterCell.h
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ASFooterView : UIView {
@private
	UILabel* title;
}

@property(nonatomic,readonly) UILabel* title;
@property(nonatomic,copy) NSString* text;
@end
