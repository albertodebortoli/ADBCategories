//
//  NSBundle+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "NSBundle+ADB.h"

@implementation NSBundle (ADB)

+ (NSString *)pathForResourceInMainBundle:(NSString *)path
{
    return [[NSBundle mainBundle] pathForResource:[[path lastPathComponent] stringByDeletingPathExtension] 
                                           ofType:[path pathExtension] 
                                      inDirectory:[path stringByDeletingLastPathComponent]];
}

@end
