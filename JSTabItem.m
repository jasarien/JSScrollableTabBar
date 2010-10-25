//
//  JSTabItem.m
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import "JSTabItem.h"


@implementation JSTabItem

@synthesize title = _title;

- (id)initWithTitle:(NSString *)title
{
	if ((self = [super init]))
	{
		self.title = title;
	}
	
	return self;
}

- (void)dealloc
{
	self.title = nil;
	[super dealloc];
}

@end
