//
//  UIPasteboard+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPasteboard (ADB)

+ (void)copyStringToPasteboard:(NSString *)path;
+ (void)copyImageToPasteboard:(UIImage *)image;

@end
