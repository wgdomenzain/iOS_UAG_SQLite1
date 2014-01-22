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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Pressed:(id)sender
{
    if (bo_Image)
    {
        self.labelWelcome.text = @"Spiderman";
        bo_Image = 0;
        NSLog(@"Entre a Spiderman");
        
        UIImage *image = [UIImage imageNamed:@"Spiderman.jpg"];
        [self.imgMain setImage:image];

    }
    else
    {
        self.labelWelcome.text = @"StreetFighter";
        bo_Image = 1;
        NSLog(@"Entre a Street Fighter");
        self.imgMain.image = [UIImage imageNamed:@"streetfighter2.jpg"];
        
    }
}
@end
