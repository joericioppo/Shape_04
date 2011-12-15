//
//  Shape_04ViewController.m
//  Shape_04
//
//  Created by test on 9/4/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Shape_04ViewController.h"

@implementation Shape_04ViewController


- (void)loadView 
{
	
	UIView *appView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	appView.backgroundColor = [UIColor blackColor];
	
	self.view = appView;
	
	[appView release];
	
	rootLayer	= [CALayer layer];
	
	rootLayer.frame = self.view.bounds;
	
	[self.view.layer addSublayer:rootLayer];


	//Square Path
	
	squarePath	= CGPathCreateMutable();
	
	CGPoint center = self.view.center;
	
	CGPathMoveToPoint(squarePath, nil, center.x - 75.0, center.y - 75.0);
	CGPathAddLineToPoint(squarePath, nil, center.x + 75.0, center.y - 75.0);
	CGPathAddLineToPoint(squarePath, nil, center.x + 75.0, center.y + 75.0);
	CGPathAddLineToPoint(squarePath, nil, center.x - 75.0, center.y + 75.0);
	CGPathAddLineToPoint(squarePath, nil, center.x - 75.0, center.y - 75.0);
	
	CGPathCloseSubpath(squarePath);
	
	
	//Round Path
	
	roundPath = CGPathCreateMutable();
	
	CGPathMoveToPoint(roundPath, nil, center.x , center.y - 75.0);
	CGPathAddArcToPoint(roundPath, nil, center.x + 75.0, center.y - 75.0, center.x + 75.0, center.y + 75.0, 75.0);
	CGPathAddArcToPoint(roundPath, nil, center.x + 75.0, center.y + 75.0, center.x - 75.0, center.y + 75.0, 75.0);
	CGPathAddArcToPoint(roundPath, nil, center.x - 75.0, center.y + 75.0, center.x - 75.0, center.y, 75.0);
	CGPathAddArcToPoint(roundPath, nil, center.x - 75.0, center.y - 75.0, center.x, center.y - 75.0, 75.0);
	
	CGPathCloseSubpath(roundPath);
	
	
	//Box Path
	
	boxPath = CGPathCreateMutable();
	
	CGPathMoveToPoint(boxPath, nil, center.x , center.y - 75.0);
	CGPathAddArcToPoint(boxPath, nil, center.x + 75.0, center.y - 75.0, center.x + 75.0, center.y + 75.0, 10.0);
	CGPathAddArcToPoint(boxPath, nil, center.x + 75.0, center.y + 75.0, center.x - 75.0, center.y + 75.0, 10.0);
	CGPathAddArcToPoint(boxPath, nil, center.x - 75.0, center.y + 75.0, center.x - 75.0, center.y, 10.0);
	CGPathAddArcToPoint(boxPath, nil, center.x - 75.0, center.y - 75.0, center.x, center.y - 75.00, 10.0);
	
	CGPathCloseSubpath(boxPath);


	//Create Shape
	
	shapeLayer = [CAShapeLayer layer];
	
	shapeLayer.path = boxPath;
	
	UIColor *fillColor = [UIColor colorWithHue:0.584 saturation:0.8 brightness:0.9 alpha:1.0];
	
	shapeLayer.fillColor = fillColor.CGColor; 
	
	UIColor *strokeColor = [UIColor colorWithHue:0.557 saturation:0.55 brightness:0.96 alpha:1.0];
	
	shapeLayer.strokeColor = strokeColor.CGColor;
	
	shapeLayer.lineWidth = 3.0;
	
	shapeLayer.fillRule = kCAFillRuleNonZero;
	
	[rootLayer addSublayer:shapeLayer];
	
	[self performSelector:@selector(startAnimation) withObject:nil afterDelay:1.5];
	
}


-(void)startAnimation
{	
	CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"path"];
	
	animation.duration = 2.0;
	
	animation.repeatCount = HUGE_VALF;
	
	animation.autoreverses = YES;
	
	animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	animation.fromValue = (id)boxPath;
	
	animation.toValue = (id)roundPath;
	
	
	[shapeLayer addAnimation:animation forKey:@"animatePath"];
}


- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
	
}


- (void)dealloc 
{
    [super dealloc];
}

@end
