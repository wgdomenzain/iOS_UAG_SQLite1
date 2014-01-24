//
//  ViewController.m
//  UAG 8010
//
//  Created by Walter on 16/01/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

BOOL    bo_Image = 0;
BOOL    bo_EmptyTextName = 1;
BOOL    bo_EmptyTextPhone = 1;

NSTimer     *myTimer;
int         int_Seconds = 0;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                               target:self
                                             selector:@selector(timer_1sec:)
                                             userInfo:nil
                                              repeats:YES];
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
            //Indicates that textName is not empty
            bo_EmptyTextName = 0;
            
            if ((!bo_EmptyTextName && !bo_EmptyTextPhone))
            {
                self.buttonContinue.enabled = TRUE;
            }
            if ([newString length] > 20)
            {
                return NO;
            }
        }
        else
        {
            //Text name is empty
            bo_EmptyTextName = 1;
            self.buttonContinue.enabled = FALSE;
            return YES;
        }
    }
    
    else if (textField == self.textPhone)
    {
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        NSLog(@"Name");
        
        if ([newString length] > 0)
        {
            bo_EmptyTextPhone = 0;
            
            if ((!bo_EmptyTextName && !bo_EmptyTextPhone))
            {
                self.buttonContinue.enabled = TRUE;
            }
            if ([newString length] > 10)
            {
                return NO;
            }
        }
        else
        {
            self.buttonContinue.enabled = FALSE;
            bo_EmptyTextPhone = 1;
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

- (IBAction)buttonContinuePressed:(id)sender
{
    NSLog(@"Button Continue Pressed");
}
- (void) dummyFunction
{
    
}
- (void) timer_1sec:(NSTimer*) timer
{
    NSLog(@"1 sec");
    int_Seconds++;
    
    if (int_Seconds >= 10)
    {
        int_Seconds = 0;
    }
    
    self.labelSeconds.text = [NSString stringWithFormat:@"%d", int_Seconds];
    
}

@end
