//
//  ViewController.m
//  Social Networks
//
//  Created by Walter on 18/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)buttonSharePressed:(id)sender
{
    NSString                    *initalTextString;
    NSArray                     *activityItems;
    UIImage                     *imageScreen;
    UIActivityViewController    *activityViewController;
    
    imageScreen = [UIImage imageNamed:@"Logo.png"];
    initalTextString = @"Hola desde mi clase de iOS en la UAG =)";
    
    activityItems = @[imageScreen, initalTextString];
    
    //Init activity view controller
    activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    activityViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, nil];
    

    
    [self presentViewController:activityViewController animated:YES completion:nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
@end
