//
//  ASTableViewCell.h
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import <UIKit/UIKit.h>

enum ASTableViewCellType {
	ASTableViewCellTypeList=0, // Themed like AppStores Category/App listing cells 
	ASTableViewCellTypeContent=1, // Themed like AppStores Comment cells
}; // Defaults to ASTableViewCellTypeList

typedef NSInteger ASTableViewCellType;

@interface ASTableViewCell : UITableViewCell {
@private
	UIView* borderView;
	BOOL alternate;
	UILabel* label;
	ASTableViewCellType type;
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier type:(ASTableViewCellType)cellType;

// These return based on ASTableViewCellTypeList
+ (UIColor*)regularColor;
+ (UIColor*)alternateColor;
+ (UIView*)borderView;
+ (UIView*)alternateBorderView;

// These return based on self.type
- (UIColor*)regularColor;
- (UIColor*)alternateColor;
- (UIView*)borderView;
- (UIView*)alternateBorderView;

@property(nonatomic,getter=isAlternate) BOOL alternate;
@property(readonly) ASTableViewCellType type;
@end
