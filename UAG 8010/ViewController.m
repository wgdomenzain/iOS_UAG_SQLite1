//
//  ViewController.m
//  UAG 8010
//
//  Created by Walter on 16/01/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

BOOL    bo_Image = 0;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

/**********************************************************************************************
 Text Fields
 **********************************************************************************************/
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"Flah when user entered a data in textfields");
    
    if (textField == self.textName)
    {
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        NSLog(@"Name");
        
        if ([newString length] > 0)
        {
            
            if ([newString length] > 20)
            {
                return NO;
            }
        }
        else
        {
            return YES;
        }
    }
    
    else if (textField == self.textPhone)
    {
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        NSLog(@"Name");
        
        if ([newString length] > 0)
        {
            
            if ([newString length] > 10)
            {
                return NO;
            }
        }
        else
        {
            return YES;
        }
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Pressed:(id)sender
{
    self.imgMain.alpha+=0.2f;
}
- (IBAction)buttin:(id)sender {
    self.imgMain.alpha-=0.2f;

}
@end
