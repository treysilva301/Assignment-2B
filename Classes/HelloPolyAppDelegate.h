//
//  HelloPolyAppDelegate.h
//  HelloPoly
//
//  Created by Baldemar Silva III on 10/25/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloPolyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

