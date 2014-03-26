//
//  MyAnnotation.h
//  We Football
//
//  Created by Walter on 25/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>
{
    /*
    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
     */
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithTitle:(NSString *)Title subtitle:(NSString*)Subtitle andCoordinate:(CLLocationCoordinate2D)Coord;

@end
