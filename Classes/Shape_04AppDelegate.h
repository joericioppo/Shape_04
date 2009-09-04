//
//  Shape_04AppDelegate.h
//  Shape_04
//
//  Created by test on 9/4/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Shape_04ViewController;

@interface Shape_04AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Shape_04ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Shape_04ViewController *viewController;

@end

