//
//  ViewController.h
//  Pickers Example
//
//  Created by Walter on 20/02/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UIDatePicker *pickerDate;
@property (strong, nonatomic) IBOutlet UILabel *labelResultDate;



- (IBAction)buttonSelectDatePressed:(id)sender;

@end
