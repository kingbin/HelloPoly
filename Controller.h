//
//  Controller.h
//
//  Created by Chris Blazek on 10/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "PolygonShape.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
    IBOutlet PolygonShape *ps;
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;

- (void)updateInterface;
@end