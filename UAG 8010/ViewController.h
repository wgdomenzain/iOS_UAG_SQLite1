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
@property (strong, nonatomic) IBOutlet UIImageView *imgMain;

@property (strong, nonatomic) IBOutlet UITextField *textName;
@property (strong, nonatomic) IBOutlet UITextField *textPhone;
@property (strong, nonatomic) IBOutlet UIButton *buttonContinue;
@property (strong, nonatomic) IBOutlet UILabel *labelSeconds;

- (IBAction)button1Pressed:(id)sender;
- (IBAction)buttin:(id)sender;
- (IBAction)buttonContinuePressed:(id)sender;

@end
