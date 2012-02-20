//
//  NSArray+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (ADB)

- (void)shuffle;
- (void)moveObjectFromIndex:(NSUInteger)from toIndex:(NSUInteger)to;

@end

@interface NSArray (ADB)

- (NSArray *)shuffledArray;

@end
