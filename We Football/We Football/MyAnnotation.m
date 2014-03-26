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

- (id)initWithTitle:(NSString *)Title subtitle:(NSString*)Subtitle andCoordinate:(CLLocationCoordinate2D)Coord
{
	self = [super init];
	self.title = Title;
    self.subtitle = Subtitle;
	self.coordinate = Coord;
	return self;
}

@end
