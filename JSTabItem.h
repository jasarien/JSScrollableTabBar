//
//  JSTabItem.h
//  ScrollableTabBar
//
//  Created by James Addyman on 20/10/2010.
//  Copyright 2010 JamSoft. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface JSTabItem : NSObject {

	NSString *_title;
	
}

@property (nonatomic, copy) NSString *title;

- (id)initWithTitle:(NSString *)title;

@end
