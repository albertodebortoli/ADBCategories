//
//  UIColor+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 15/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "UIColor+ADB.h"

@implementation UIColor (ADB)

+ (UIColor *)colorWithRGB:(NSInteger)rgbValue alphaValue:(CGFloat)alphaValue
{
    CGFloat red = ((float)((rgbValue & 0xFF0000) >> 16))/255.0;
    CGFloat green = ((float)((rgbValue & 0xFF00) >> 8))/255.0;
    CGFloat blue = ((float)((rgbValue & 0xFF)))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alphaValue];
}

+ (UIColor*)colorWithHexString:(NSString*)hexString alphaValue:(CGFloat)alphaValue
{
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] lowercaseString];
    
    // strip 0x if it appears
    if ([cString hasPrefix:@"0x"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return [UIColor clearColor];
    
    // Separate into R, G, B substrings
    NSRange range = {.location = 0, .length = 2};
    
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alphaValue];
}

@end
