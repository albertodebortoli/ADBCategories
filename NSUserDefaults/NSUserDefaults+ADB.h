//
//  NSUserDefaults+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (ADB)

+ (id)valueForKey:(NSString *)key;
+ (id)objectForKey:(NSString *)key;
+ (void)setObject:(id)object forKey:(NSString *)key;
+ (void)setBool:(BOOL)value forKey:(NSString *)key;
+ (void)removeObjectForKey:(NSString *)key;

@end
