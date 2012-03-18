//
//  UIFont+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 18/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "UIFont+ADB.h"

@interface UIFont (Private)
+ (NSArray *)availableFontsAndPrintThem:(BOOL)value;
@end

@implementation UIFont (ADB)

+ (NSArray *)availableFonts
{
    return [[self class] availableFontsAndPrintThem:NO];
}

+ (void)printAvailableFonts
{
    [[self class] availableFontsAndPrintThem:YES];
}

+ (NSArray *)availableFontsAndPrintThem:(BOOL)value
{
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    NSMutableArray *availableFontNames = [NSMutableArray array];
    
    NSInteger familyIndex, fontIndex;
    
    for (familyIndex = 0; familyIndex < [familyNames count]; familyIndex++) {
        if (value) {
            NSLog(@"Family name: %@", [familyNames objectAtIndex:familyIndex]);
        }
        NSArray *fontNames = [[NSArray alloc] initWithArray:[UIFont fontNamesForFamilyName:[familyNames objectAtIndex:familyIndex]]];
        for (fontIndex = 0; fontIndex < [fontNames count]; fontIndex++) {
            if (value) {
                NSLog(@"    Font name: %@", [fontNames objectAtIndex:fontIndex]);
            }
        }
        [availableFontNames addObjectsFromArray:fontNames];
    }
    
    return availableFontNames;
}

@end
