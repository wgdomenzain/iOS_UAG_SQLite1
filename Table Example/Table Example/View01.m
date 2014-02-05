//
//  View Table 01.m
//  Table Example
//
//  Created by Walter on 04/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "View01.h"
#import "Cell_Students.h"

@interface View01 ()

@end

@implementation View01

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    astr__Names = [[NSArray alloc] initWithObjects:@"Ryu", @"Ken", @"Blanka", @"Chun-Lee", nil];
    //[self.viewTableMain reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell_Students";
    
    Cell_Students *cell = (Cell_Students *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[Cell_Students alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }

    
    cell.labelName.text = astr__Names[[indexPath row]];
    cell.labelName.textColor = [UIColor blackColor];
    cell.imgStudent.image = [UIImage imageNamed:astr__Names[[indexPath row]]];
    
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    
    
    return cell;

}




















@end
