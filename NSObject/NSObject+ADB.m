//
//  NSObject+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 15/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "NSObject+ADB.h"

@implementation NSObject (ADB)

+ (id)getAppDelegate
{
    id delegate = [[UIApplication sharedApplication] delegate];
    return delegate;
}

+ (NSString *)applicationDocumentsDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

+ (NSDictionary *)mainBundleInfoDictionary
{
    return [[NSBundle mainBundle] infoDictionary];
}

@end
