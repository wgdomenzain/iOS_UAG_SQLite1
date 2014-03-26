//
//  ViewController.m
//  We Football
//
//  Created by Walter on 25/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"
#import "AddressBook/AddressBook.h"
#import "MyAnnotation.h"

#define METERS_PER_MILE 1609.344

#define latitudeMinerva     20.674514
#define longitudeMinerva    -103.387295

#define latitude1            20.674504
#define longitude1          -103.391051

#define latitude2           20.676210
#define longitude2          -103.384259

#define latitude3           20.672948
#define longitude3          -103.401136

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CLLocationCoordinate2D location1;
    CLLocationCoordinate2D location2;
    CLLocationCoordinate2D location3;
    
    location1.latitude = latitude1;
    location1.longitude = longitude1;
    MyAnnotation *annotation1 = [[MyAnnotation alloc] initWithTitle:@"Minerva" subtitle:@"Guadalajara"andCoordinate:location1];
    [self.mapView addAnnotation:annotation1];
    
    location2.latitude = latitude2;
    location2.longitude = longitude2;
    MyAnnotation *annotation2 = [[MyAnnotation alloc] initWithTitle:@"Vecina Guapa" subtitle:@"24 años"andCoordinate:location2];
    [self.mapView addAnnotation:annotation2];
    
    location3.latitude = latitude1;
    location3.longitude = longitude1;
    MyAnnotation *annotation3 = [[MyAnnotation alloc] initWithTitle:@"Casa Juan" subtitle:@"Fiesta Yolo"andCoordinate:location3];
    [self.mapView addAnnotation:annotation3];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CLLocationCoordinate2D location;
    
    location.latitude = latitudeMinerva;
    location.longitude = longitudeMinerva;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location, 1000, 1000);
    
    [self.mapView setRegion:viewRegion animated:YES];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)cfgMaps
{
    
}











@end
