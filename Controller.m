//
//  Controller.m
//
//  Created by Baldemar Silva III on 10/25/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (IBAction)decrease:(id)sender {
	int sides = [poly numberOfSides];
	[poly setNumberOfSides: sides-1];
	[self updateInterface];
    
	//NSLog(@"I am decreasing.");
	//NSLog(@"Poly has %d sides and its name is %@", [poly numberOfSides], [poly name]);
}

- (IBAction)increase:(id)sender {
	int sides = [poly numberOfSides];
	[poly setNumberOfSides: sides+1];
	[self updateInterface];
	
    //NSLog(@"I am increasing.");
	//NSLog(@"Poly has %d sides and its name is %@", [poly numberOfSides], [poly name]);
}

-(void)updateInterface {
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", [poly numberOfSides]];
	increaseButton.enabled = ([poly numberOfSides] < [poly maximumNumberOfSides]) ? YES:NO;
	decreaseButton.enabled = ([poly numberOfSides] > [poly minimumNumberOfSides]) ? YES:NO;
	
	
}

- (void)awakeFromNib {
	[poly initWithNumberOfSides:numberOfSidesLabel.text.integerValue minimumNumberOfSides:3 maximumNumberOfSides:12];
	
	//NSLog(@"My polygon: %@", [poly name]);
}

@end
