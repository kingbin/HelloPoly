//
//  PolygonShape.m
//  Assignment2A
//
//  Created by Chris Blazek on 9/25/10.
//  Copyright 2010 KinGBin Productions. All rights reserved.
//

#import "PolygonShape.h"

@implementation PolygonShape

@synthesize numberOfSides, minimumNumberOfSides, maximumNumberOfSides;

/*************************************/

- (id)init {
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:10];
}

-(id)initWithNumberOfSides:(int)num minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;{
	
	if (self = [super init]) {
		[self setMinimumNumberOfSides:min];
		[self setMaximumNumberOfSides:max]; 
		[self setNumberOfSides:num];
		
//		[self setNameDictionary];
	}
	
	return self;
}

- (void)dealloc {
	NSLog(@"Deallocating");
	
	[super dealloc];
}




// Setter/Getter Functions
-(void)setNumberOfSides:(int)newnum{ 
	if(newnum != numberOfSides){
//		if(([self minimumNumberOfSides]<=newnum)&&(newnum<=[self maximumNumberOfSides]))
//			numberOfSides = newnum;
//		else{
//			numberOfSides = minimumNumberOfSides;
//			NSLog(@"Invalid number of sides: %d. Must be between %d and %d", newnum, minimumNumberOfSides, maximumNumberOfSides);
//		}
		numberOfSides = newnum;
	}
}


-(void)setMinimumNumberOfSides:(int)newmin{
	if(newmin != minimumNumberOfSides){
		if(newmin >= 2)
			minimumNumberOfSides = newmin;
		else
			NSLog(@"Invalid number of sides: %@ is less than the minimum of 2 allowed", newmin);
	}
}


-(void)setMaximumNumberOfSides:(int)newmax{
	if(newmax != maximumNumberOfSides){
		if(newmax <= 12)
			maximumNumberOfSides = newmax;
		else
			NSLog(@"Invalid number of sides: %@ is greater than the maximum of 12 allowed", newmax);
	}
}



//-(void)setNameDictionary{
//	nameDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Triangle", [NSNumber numberWithInt:3],
//					  @"Square", [NSNumber numberWithInt:4],
//					  @"Pentagon", [NSNumber numberWithInt:5],
//					  @"Hexagon", [NSNumber numberWithInt:6],
//					  @"Heptagon", [NSNumber numberWithInt:7],
//					  @"Octagon", [NSNumber numberWithInt:8],
//					  @"Nonagon", [NSNumber numberWithInt:9],
//					  @"Decagon", [NSNumber numberWithInt:10],
//					  @"Hendecagon", [NSNumber numberWithInt:11],
//					  @"Dodecagon", [NSNumber numberWithInt:12], nil];
//	
//	[nameDictionary autorelease];
//}
//
//-(NSDictionary *)getNameDictionary{
//	return nameDictionary;
//}


// Members
- (float)angleInDegrees {
	return (180 * ([self numberOfSides] - 2) / [self numberOfSides]);
}


- (float)angleInRadians {
	return (M_PI * ([self numberOfSides] - 2) / [self numberOfSides]);
}


//- (NSString *)name{
//	return [[self getNameDictionary] objectForKey:[NSNumber numberWithInt:[self numberOfSides]]];
//}

- (NSString *) name {
	NSArray* names = [NSArray arrayWithObjects:@"Triangle", @"Square", @"Pentagon", @"Hexagon",@"Heptagon",@"Octagon",
					  @"Nonagon",@"Decagon",@"Hendecagon", @"Dodecagon",nil];
	
	return self.numberOfSides<3 ? @"Unknown" : [names objectAtIndex: self.numberOfSides-3];
}


- (NSString *)description{
	return [NSString stringWithFormat: @"Hello I am a %d-sided polygon (aka a %@) with angles of %.0f degrees (%f radians).", [self numberOfSides], [self name], [self angleInDegrees], [self angleInRadians]];
}


@end
