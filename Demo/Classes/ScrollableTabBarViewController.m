//
//  ScrollableTabBarViewController.m
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import "ScrollableTabBarViewController.h"

@implementation ScrollableTabBarViewController

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)viewDidLoad
{
    [super viewDidLoad];
	
	_tabBar = [[[JSScrollableTabBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44) style:JSScrollableTabBarStyleBlack] autorelease];
	[_tabBar setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
	[_tabBar setDelegate:self];
	[self.view addSubview:_tabBar];
	
	_label = [[[UILabel alloc] initWithFrame:CGRectMake(0, 90, 320, 30)] autorelease];
	[self.view addSubview:_label];
	
	NSMutableArray *items = [NSMutableArray array];
	
	for (int i = 0; i < 25; i++)
	{
		JSTabItem *item = [[JSTabItem alloc] initWithTitle:[NSString stringWithFormat:@"Item %d", i]];
		[items addObject:item];
		[item release];
	}
	
	[_tabBar setTabItems:items];
	
	UIButton *styleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[styleButton setTitle:@"Change Style" forState:UIControlStateNormal];
	[styleButton addTarget:self
					action:@selector(changeStyle:)
		  forControlEvents:UIControlEventTouchUpInside];
	[styleButton sizeToFit];
	CGRect buttonFrame = [styleButton frame];
	buttonFrame.origin = CGPointMake(150, 150);
	[styleButton setFrame:buttonFrame];
	[self.view addSubview:styleButton];
}

- (void)changeStyle:(id)sender
{
	switch (_tabBar.style) {
		case JSScrollableTabBarStyleBlue:
			_tabBar.style = JSScrollableTabBarStyleBlack;
			break;
		case JSScrollableTabBarStyleBlack:
			_tabBar.style = JSScrollableTabBarStyleTransparent;
			break;
		case JSScrollableTabBarStyleTransparent:
			_tabBar.style = JSScrollableTabBarStyleBlue;
			break;
		default:
			break;
	}
}

- (void)scrollableTabBar:(JSScrollableTabBar *)tabBar didSelectTabAtIndex:(NSInteger)index
{
	[_label setText:[NSString stringWithFormat:@"Selected tab: %d", index]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
