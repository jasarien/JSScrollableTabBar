//
//  JSTabItem.m
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import "JSTabItem.h"
#import <UIKit/uikit.h>

@implementation JSTabItem

@synthesize title = _title;
@synthesize color = _color;
@synthesize textColor = _textColor;

- (id)initWithTitle:(NSString *)title andColor:(UIColor*)color andTextColor:(UIColor *)textColor;
{
	if ((self = [super init]))
	{
		self.title = title;
        self.textColor = textColor;
        self.color = color;
	}
	
	return self;
}

- (void)dealloc
{
	self.title = nil;
    self.textColor = nil;
    self.color = nil;
	[super dealloc];
}

@end
