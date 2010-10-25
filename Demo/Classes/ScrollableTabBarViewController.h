//
//  ScrollableTabBarViewController.h
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSScrollableTabBar.h"

@interface ScrollableTabBarViewController : UIViewController <JSScrollableTabBarDelegate> {

	UILabel *_label;
	JSScrollableTabBar *_tabBar;
	
}

@end

