//
//  PolygonView.m
//
//  Created by Baldemar Silva III on 10/27/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import "PolygonView.h"

@implementation PolygonView


+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides { 
	CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0); 
	float radius = 0.9 * center.x; 
	NSMutableArray *result = [NSMutableArray array];
	float angle = (2.0 * M_PI) / numberOfSides; 
	float exteriorAngle = M_PI - angle; 
	float rotationDelta = angle - (0.5 * exteriorAngle);
	for (int currentAngle = 0; currentAngle < numberOfSides; currentAngle++) { 
		float newAngle = (angle * currentAngle) - rotationDelta; 
		float curX = cos(newAngle) * radius; 
		float curY = sin(newAngle) * radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, center.y + curY)]];
	} 
	return result;
}

- (void)DrawShape:(CGRect)rect {
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	//draw frame
	[[UIColor grayColor] set];
	UIRectFill([self bounds]);
	[[UIColor blackColor] set];
	UIRectFrame([self bounds]);
	
	CGContextBeginPath(context);
	
	//create first point
	NSArray *points = [PolygonView pointsForPolygonInRect:[self bounds] numberOfSides:[poly numberOfSides]];
	NSValue *Value = [points objectAtIndex:0];
	CGPoint thePoint = [Value CGPointValue];
	
	CGContextMoveToPoint(context, thePoint.x, thePoint.y);
	
	//creates remaining points
	NSRange range;
	range.location = 1;
	range.length = [points count] - 1;
	for (NSValue *val in [points subarrayWithRange:range]) {
		CGPoint pt = [val CGPointValue];
		CGContextAddLineToPoint(context, pt.x, pt.y);
	}
	
	CGContextClosePath(context);
	[[UIColor redColor]setFill];
	[[UIColor blackColor] setStroke];
	CGContextDrawPath(context, kCGPathFillStroke);
	
	PolygonLabel.text = @"Testing";
	
}
@end
