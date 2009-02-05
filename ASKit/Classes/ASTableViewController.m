//
//  ASTableViewController.m
//  ASKit
//
//  Created by Shaun Harrison on 10/27/08.
//  Copyright 2008 enormego. All rights reserved.
//

#import "ASTableViewController.h"
#import "ASTableViewCell.h"
#import "ASHeaderView.h"
#import "ASFooterView.h"

@implementation ASTableViewController
@synthesize footerText;

- (void)loadView {
	[super loadView];
	self.view.backgroundColor = [ASTableViewCell regularColor];
	self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
	
	ASFooterView* footerView = [[ASFooterView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 0.0f)];
	footerView.text = footerText;
	self.tableView.tableFooterView = footerView;
	[footerView release];
	
	UIView* view = [[UIView alloc] initWithFrame:CGRectZero];
	self.tableView.tableHeaderView = view;
	[view release];
}

- (void)setFooterText:(NSString*)text {
	[footerText release], footerText = nil;
	footerText = [text retain];
	
	((ASFooterView*)self.tableView.tableFooterView).text = footerText;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 29.0f;
}

// Find out if last row is an alternate, and handle background/footerview accordingly
- (void)tableView:(UITableView *)tableView willDisplayCell:(ASTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
	if(indexPath.section == [tableView numberOfSections] - 1 && indexPath.row == [tableView numberOfRowsInSection:indexPath.section] - 1) {
		if([cell isKindOfClass:[ASTableViewCell class]]) {
			self.view.backgroundColor = cell.alternate ? [cell regularColor] : [cell alternateColor];
			((ASFooterView*)self.tableView.tableFooterView).backgroundColor = self.view.backgroundColor;
		}
	}
}

- (void)dealloc {
	[footerText release];
    [super dealloc];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
	if(scrollView == self.tableView && self.tableView.tableHeaderView) {
		ASHeaderView* headerView = (ASHeaderView*)self.tableView.tableHeaderView;
		
		float y = (-scrollView.contentOffset.y);
		CGRect frame;
		
		if([headerView isKindOfClass:[ASHeaderView class]]) {
			float height = y > 0.0f ? y+headerView.height : headerView.height;
			frame = CGRectMake(0.0f, y > 0.0f ? -y : 0.0f, self.tableView.frame.size.width, height);
		} else if([headerView isKindOfClass:[UIView class]]) {
			float height = y > 0.0f ? y : 0.0f;
			frame = CGRectMake(0.0f, -y, self.tableView.frame.size.width, height);
			if([self.tableView numberOfRowsInSection:0] > 0 && height > 0.0f) {
				ASTableViewCell* cell = (ASTableViewCell*)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
				if([cell isKindOfClass:[ASTableViewCell class]]) {
					headerView.backgroundColor = cell.backgroundColor;
				}
			}
		}
		
		headerView.frame = frame;
	}
}

@end

