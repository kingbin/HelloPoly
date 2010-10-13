//
//  PolygonShape.h
//  Assignment2A
//
//  Created by Chris Blazek on 9/25/10.
//  Copyright 2010 KinGBin Productions. All rights reserved.
//

//#import <Cocoa/Cocoa.h>


@interface PolygonShape : NSObject {
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
	
	NSDictionary *nameDictionary;
}

//Properties
@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;

@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;
@property (readonly) NSString *description;


//Members
- (id)init;
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
- (void)dealloc;

//-(void)setNameDictionary;
//-(NSDictionary *)getNameDictionary;

@end