//
//  UIColor+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 15/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIColor (ADB)

+ (UIColor *)colorWithRGB:(NSInteger)rgbValue alphaValue:(CGFloat)alphaValue;
+ (UIColor *)colorWithHexString:(NSString *)hexString alphaValue:(CGFloat)alphaValue;

@end