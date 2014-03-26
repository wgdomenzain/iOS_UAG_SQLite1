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
    location1.latitude = latitude1;
    location1.longitude = longitude1;
    
    MKPointAnnotation *point1 =[[MKPointAnnotation alloc] init];
    point1.coordinate = location1;
    point1.title = @"Minerva";
    [self.mapView addAnnotation:point1];
    
    /*
    self.mapView.delegate = self;
    

    CLLocationCoordinate2D location2;
    CLLocationCoordinate2D location3;
    
    CLLocationCoordinate2D Coord1 = {latitude1, longitude1};
    CLLocationCoordinate2D Coord2 = {latitude2, longitude2};
    CLLocationCoordinate2D Coord3 = {latitude3, longitude3};
    
    
    location1.latitude = latitude1;
    location1.longitude = longitude1;
    MyAnnotation *annotation1 = [[MyAnnotation alloc] initWithCoordinate:location1 title:@"Minerva"];
    [self.mapView addAnnotation:annotation1];
    */
    
    
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


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation

{
    if ([annotation isKindOfClass:[MKUserLocation class]])
    {
        return nil;
    }
    
    static  NSString *identifier = @"MyAnnotation";
    
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorPurple;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
    }
    else
    {
        annotationView.annotation = annotation;
    }
    
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return annotationView;
}
























@end
