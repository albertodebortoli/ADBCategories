//
//  AppDelegate.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "AppDelegate.h"
#import "UIColor+ADB.h"
#import "NSDate+ADB.h"
#import "NSString+ADB.h"
#import "NSArray+ADB.h"
#import "UIView+ADB.h"
#import "UIAlertView+ADB.h"
#import "NSBundle+ADB.h"
#import "NSUserDefaults+ADB.h"
#import "UIPasteboard+ADB.h"
#import "NSObject+ADB.h"

@implementation AppDelegate

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
