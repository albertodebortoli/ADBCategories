//
//  NSObject+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 15/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ADB)

+ (id)getAppDelegate;
+ (NSString *)applicationDocumentsDirectory;
+ (NSDictionary *)mainBundleInfoDictionary;

@end
