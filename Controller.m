//
//  Controller.m
//
//  Created by Chris Blazek on 10/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (IBAction)decrease:(id)sender {
//    NSLog(@"I’m in the decrease method");
	
	ps.numberOfSides-=1;
	
	self.updateInterface;
}

- (IBAction)increase:(id)sender {
//    NSLog(@"I’m in the increase method");    
	
	ps.numberOfSides+=1;
	
	self.updateInterface;
}


- (void)updateInterface {
	
	// Set Button States
	if (ps.numberOfSides == ps.minimumNumberOfSides)
		decreaseButton.enabled = NO;
	else if (ps.numberOfSides == ps.maximumNumberOfSides){
		decreaseButton.enabled = YES;
		increaseButton.enabled = NO;
	}
	else{
		decreaseButton.enabled = YES;
		increaseButton.enabled = YES;
	}
	
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", ps.numberOfSides];
	
	NSLog (@"My polygon: %@", ps );
}


- (void)awakeFromNib {
	NSLog(@"Awake the Giants!");
	
	[ps setNumberOfSides:numberOfSidesLabel.text.integerValue];
	
	ps.minimumNumberOfSides = 3;
	ps.maximumNumberOfSides = 12;
	
	NSLog (@"My polygon: %@", ps );
}
@end
