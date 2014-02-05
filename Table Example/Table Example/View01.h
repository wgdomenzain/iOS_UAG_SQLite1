//
//  View Table 01.h
//  Table Example
//
//  Created by Walter on 04/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

NSArray     *astr__Names;
@interface View01 : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *viewTableMain;


@end
