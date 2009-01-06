//
//  TableViewController.m
//  ASKitDemo
//
//  Created by Shaun Harrison on 1/6/09.
//  Copyright 2009 enormego. All rights reserved.
//

#import "TableViewController.h"
#import "TableHeaderView.h"

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	self.footerText = @"ASKitDemo, enormego.com";
	
	TableHeaderView* headerView = [[TableHeaderView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 125.0f)];
	self.tableView.tableHeaderView = headerView;
	[headerView release];
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"ASTableViewCell";
    
    ASTableViewCell *cell = (ASTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[ASTableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // Set up the cell...
	cell.text = [NSString stringWithFormat:@"ASTableViewCell: (%d,%d)", indexPath.section, indexPath.row];
	cell.alternate = indexPath.row % 2 == 0;

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)dealloc {
    [super dealloc];
}


@end

