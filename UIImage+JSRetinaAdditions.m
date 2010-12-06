//
//  UIImage+JSRetinaAdditions.m
//  JSScrollableTabBar
//
//  Created by james on 16/07/2010.
//  Copyright 2010 Truphone. All rights reserved.
//

#import "UIImage+JSRetinaAdditions.h"


@implementation UIImage (UIImage_JSRetinaAdditions)

- (id)initWithContentsOfResolutionIndependentFile:(NSString *)path
{
    if ([UIScreen instancesRespondToSelector:@selector(scale)] && [[UIScreen mainScreen] scale] == 2.0)
	{
        NSString *path2x = [[path stringByDeletingLastPathComponent] 
                            stringByAppendingPathComponent:[NSString stringWithFormat:@"%@@2x.%@", 
                                                            [[path lastPathComponent] stringByDeletingPathExtension], 
                                                            [path pathExtension]]];
		
        if ([[NSFileManager defaultManager] fileExistsAtPath:path2x])
		{
            return [self initWithContentsOfFile:path2x];
        }
    }
	
    return [self initWithContentsOfFile:path];
}

+ (UIImage *)imageWithContentsOfResolutionIndependentFile:(NSString *)path
{
    return [[[UIImage alloc] initWithContentsOfResolutionIndependentFile:path] autorelease];
}

@end
