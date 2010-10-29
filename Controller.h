//
//  Controller.h
//
//  Created by Baldemar Silva III on 10/25/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet PolygonShape *poly;
	IBOutlet PolygonView *polyView;
	
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;
- (void) awakeFromNib;
- (void)updateInterface;
@end
