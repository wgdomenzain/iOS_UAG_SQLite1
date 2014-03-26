//
//  MyAnnotation.m
//  We Football
//
//  Created by Walter on 25/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation
//@synthesize title, subtitle, coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;
{
	if ((self = [super init])) {
        self.coordinate = coordinate;
        self.title = title;
    }
    return self;
    /*
    self = [super init];
	self.title = Title;
    self.subtitle = Subtitle;
	self.coordinate = Coord;
	return self;
     */
}

@end
