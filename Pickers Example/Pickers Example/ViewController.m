//
//  ViewController.m
//  Pickers Example
//
//  Created by Walter on 20/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

NSString *str_arrayTitles[8] = {@"Culiacán", @"Zapopan", @"Guadalajara", @"Veracruz", @"DF", @"Puebla", @"Mazatlán", @"Tepic"};

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

#pragma mark -
#pragma mark PickerView DataSource

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return 8;
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return str_arrayTitles[row];
}


#pragma mark -
#pragma mark PickerView Delegate

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            //do something
            NSLog(@"Row 1");
            pickerView.tintColor = [UIColor redColor];
            break;
        case 1:
            //do something else
            NSLog(@"Row 2");
            pickerView.tintColor = [UIColor blueColor];
            break;
        default:
            break;
    }
}

































@end
