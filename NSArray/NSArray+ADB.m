//
//  NSArray+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "NSArray+ADB.h"

@implementation NSMutableArray (ADB)

- (void)shuffle
{
    for (NSInteger i = [self count] - 1; i > 0; i--) {
        [self exchangeObjectAtIndex: arc4random() % (i+1) withObjectAtIndex:i];
    }
}

@end

@implementation NSArray (ADB)

- (NSArray *)shuffledArray
{
    NSMutableArray *shuffledArray = [NSMutableArray arrayWithArray:self];
    [shuffledArray shuffle];
    return shuffledArray;
}

@end
