//
//  ViewController.h
//  UAG 8010
//
//  Created by Walter on 16/01/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *labelWelcome;
@property (strong, nonatomic) IBOutlet UIButton *button1;

- (IBAction)button1Pressed:(id)sender;

@end
