//
//  JSTabButton.h
//
//  Created by James Addyman on 29/04/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSTabButton : UIButton {

	BOOL _toggled;
	
	UIImage *_normalBg;
	UIImage *_highlightedBg;
}

@property (nonatomic, getter=isToggled) BOOL toggled;

@property (nonatomic, retain) UIImage *normalBg;
@property (nonatomic, retain) UIImage *highlightedBg;

+ (JSTabButton *)tabButtonWithTitle:(NSString *)string;

@end
