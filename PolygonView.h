//
//  PolygonView.h
//
//  Created by Baldemar Silva III on 10/27/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "PolygonShape.h"

@interface PolygonView : UIView {
	
	IBOutlet PolygonShape *poly;
	IBOutlet UILabel *PolygonLabel ;
	
}
+ (NSArray *) pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides;
- (void) DrawShape:(CGRect)rect;
@end
