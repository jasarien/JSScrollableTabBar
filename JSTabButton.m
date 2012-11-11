//
//  JSTabButton.m
//
//  Created by James Addyman on 29/04/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import "JSTabButton.h"
#import "UIImage+JSRetinaAdditions.h"

@implementation JSTabButton

@synthesize toggled = _toggled;
@synthesize normalBg = _normalBg;
@synthesize highlightedBg = _highlightedBg;

+ (JSTabButton *)tabButtonWithTitle:(NSString *)string andColor:(UIColor*)color andTextColor:(UIColor*)textColor
{	
	NSString *imageBundlePath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"images.bundle"];
	NSBundle *imageBundle = [NSBundle bundleWithPath:imageBundlePath];
    
	static UIImage *normalButton = nil;
	static UIImage *highlightedButton = nil;
	
	if (!normalButton)
	{
		NSLog(@"setting normal button");
		normalButton = [[UIImage imageWithContentsOfResolutionIndependentFile:[imageBundle pathForResource:@"tabButtonHighlighted" ofType:@"png"]] stretchableImageWithLeftCapWidth:14 topCapHeight:0];
	}
	
	if (!highlightedButton)
	{
		NSLog(@"setting Highlighted button");
		highlightedButton = [[UIImage imageWithContentsOfResolutionIndependentFile:[imageBundle pathForResource:@"tabButtonNormal" ofType:@"png"]] stretchableImageWithLeftCapWidth:14 topCapHeight:0];
	}
	
	JSTabButton *button = (JSTabButton *)[self buttonWithType:UIButtonTypeCustom];
	
	[button setAdjustsImageWhenHighlighted:NO];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    [button setTitleColor:textColor forState:UIControlStateApplication];
    [button setTitleColor:textColor forState:UIControlStateHighlighted];
    
    [button setBackgroundColor:color];
	[[button titleLabel] setFont:[UIFont fontWithName:@"Helvetica-Bold" size:14]];
	[button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
  
  [button setBackgroundImage:normalButton forState:UIControlStateNormal];
  [button setBackgroundImage:highlightedButton forState:UIControlStateHighlighted];
  button.highlightedBg = highlightedButton;
  button.normalBg = normalButton;
    
	[[button titleLabel] setLineBreakMode:NSLineBreakByTruncatingTail];
	
	[button setTitle:string forState:UIControlStateNormal];
	
	[button sizeToFit];
	CGRect frame = [button frame];
	frame.size.width += 20;
	frame.size.height = 25;
	[button setFrame:frame];
	
	[button setToggled:NO];
	
	return button;
}

- (void)setToggled:(BOOL)toggled
{
	_toggled = toggled;
	
	if (_toggled)
	{
		[self setBackgroundImage:self.highlightedBg forState:UIControlStateNormal];
		[self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	}
	else
	{
		[self setBackgroundImage:self.normalBg forState:UIControlStateNormal];
		[self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	}
}

- (void)dealloc
{
	self.highlightedBg = nil;
	self.normalBg = nil;
    [super dealloc];
}


@end
