//
//  ViewController.h
//  Social Networks
//
//  Created by Walter on 18/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *buttonShare;
- (IBAction)buttonSharePressed:(id)sender;

@end
