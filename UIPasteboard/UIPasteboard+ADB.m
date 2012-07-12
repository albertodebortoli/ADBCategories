//
//  UIPasteboard+ADB.h
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "UIPasteboard+ADB.h"

@implementation UIPasteboard (ADB)

+ (void)copyStringToPasteboard:(NSString *)path
{
    [UIPasteboard generalPasteboard].string = path;
}

+ (void)copyImageToPasteboard:(UIImage *)image
{
    [UIPasteboard generalPasteboard].image = image;
}

@end
