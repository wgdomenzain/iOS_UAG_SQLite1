//
//  ViewController.m
//  Camera UAG
//
//  Created by Walter on 01/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

UIImage *chosenImage;

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

- (IBAction)buttonPickPhotoPressed:(id)sender
{
    [self getMediaFromSource:UIImagePickerControllerSourceTypePhotoLibrary];
}

- (IBAction)buttonNewPhotoPressed:(id)sender
{
       [self getMediaFromSource:UIImagePickerControllerSourceTypeCamera];
}

#pragma mark UIImagePickerController delegate methods
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    self.lastChosenMediaType = [info objectForKey:UIImagePickerControllerMediaType];
    
    if ([self.lastChosenMediaType isEqual:(NSString *) kUTTypeImage])
    {
        self.imageView.image = [info objectForKey:UIImagePickerControllerEditedImage];
        chosenImage = [info objectForKey:UIImagePickerControllerEditedImage];
    }
    
    else if ([self.lastChosenMediaType isEqual:(NSString *) kUTTypeMovie])
    {
        self.movieURL = [info objectForKey:UIImagePickerControllerMediaURL];
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark  -

- (void)getMediaFromSource: (UIImagePickerControllerSourceType)sourceType
{
    NSArray *mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:sourceType];
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    
    picker.mediaTypes = mediaTypes;
    picker.delegate = self;
    picker.allowsEditing =  YES;
    picker.sourceType = sourceType;
    [self presentViewController: picker animated:YES completion:nil];
}

- (void)updateDisplay
{
    if ([self.lastChosenMediaType isEqual:(NSString *) kUTTypeImage])
    {
        //self.imageView.image = chosenImage;
        self.imageView.hidden = NO;
        self.moviePlayerController.view.hidden = YES;
    }
    else if ([self.lastChosenMediaType isEqual:(NSString *) kUTTypeMovie])
    {
        [self.moviePlayerController.view removeFromSuperview];
        self.moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:self.movieURL];
        self.moviePlayerController.view.frame = self.imageView.frame;
        self.moviePlayerController.view.clipsToBounds = YES;
        self.imageView.hidden = YES;
        
    }
}
@end






































