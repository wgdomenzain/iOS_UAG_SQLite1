//
//  ViewController.h
//  Camera UAG
//
//  Created by Walter on 01/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>



@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *buttonNewPhoto;
@property (strong, nonatomic) IBOutlet UIButton *buttonPickPhoto;

@property (strong, nonatomic) MPMoviePlayerController *moviePlayerController;
@property (strong, nonatomic) NSString *lastChosenMediaType;
@property (strong, nonatomic) UIImage *currentImage;
@property (strong, nonatomic) NSURL *movieURL;

- (IBAction)buttonPickPhotoPressed:(id)sender;

- (IBAction)buttonNewPhotoPressed:(id)sender;

@end






