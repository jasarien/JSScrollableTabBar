//
//  UIImage+JSRetinaAdditions.h
//  JSScrollableTabBar
//
//  Created by james on 16/07/2010.
//  Copyright 2010 Truphone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImage_JSRetinaAdditions)

- (id)initWithContentsOfResolutionIndependentFile:(NSString *)path;
+ (UIImage *)imageWithContentsOfResolutionIndependentFile:(NSString *)path;

@end
