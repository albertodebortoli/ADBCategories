//
//  NSBundle+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (ADB)

+ (NSString *)pathForResourceInMainBundle:(NSString *)path;

@end