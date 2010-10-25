//
//  ScrollableTabBarAppDelegate.h
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollableTabBarViewController;

@interface ScrollableTabBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollableTabBarViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollableTabBarViewController *viewController;

@end

