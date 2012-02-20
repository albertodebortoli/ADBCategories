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

- (void)moveObjectFromIndex:(NSUInteger)from toIndex:(NSUInteger)to
{
    if (to != from) {
        id obj = [self objectAtIndex:from];
        [self removeObjectAtIndex:from];
        if (to >= [self count]) {
            [self addObject:obj];
        } else {
            [self insertObject:obj atIndex:to];
        }
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
