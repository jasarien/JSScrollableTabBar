//
//  JSScrollableTabBar.h
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSTabItem.h"

@class JSScrollableTabBar, JSTabButton;

typedef enum {
	
	JSScrollableTabBarStyleBlack,
	JSScrollableTabBarStyleBlue,
	JSScrollableTabBarStyleTransparent
	
} JSScrollableTabBarStyle;

@protocol JSScrollableTabBarDelegate <NSObject>

- (void)scrollableTabBar:(JSScrollableTabBar *)tabBar didSelectTabAtIndex:(NSInteger)index;

@end

@interface JSScrollableTabBar : UIView <UIScrollViewDelegate> {

	UIScrollView *_scrollView;
	
	NSMutableArray *_tabItems;
	
	JSScrollableTabBarStyle _style;
	
	UIImageView *_background;
	UIImageView *_fadeLeft;
	UIImageView *_fadeRight;
	
	JSTabButton *_previouslySelectedTabButton;
	
	id <JSScrollableTabBarDelegate> _delegate;
}

@property (nonatomic, assign) JSScrollableTabBarStyle style;
@property (nonatomic, assign) id <JSScrollableTabBarDelegate> delegate;

- (id)initWithFrame:(CGRect)frame style:(JSScrollableTabBarStyle)style;
- (void)setTabItems:(NSArray *)tabItems;
- (void)selectTabAtIndex:(NSInteger)index;

@end
