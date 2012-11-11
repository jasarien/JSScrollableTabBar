//
//  JSTabItem.h
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/uikit.h>

@interface JSTabItem : NSObject {
    
	NSString *_title;
    UIColor *_textColor;
    UIColor *_color;
	
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) UIColor *color;
@property (nonatomic, copy) UIColor *textColor;


- (id)initWithTitle:(NSString *)title color:(UIColor*)color textColor:(UIColor*)textColor;

@end
