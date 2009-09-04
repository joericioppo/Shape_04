//
//  Shape_04AppDelegate.m
//  Shape_04
//
//  Created by test on 9/4/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Shape_04AppDelegate.h"
#import "Shape_04ViewController.h"

@implementation Shape_04AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application 
{    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc 
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
