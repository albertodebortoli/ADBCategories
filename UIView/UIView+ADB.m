//
//  UIView+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 20/02/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIView+ADB.h"

@implementation UIView (ADB)

+ (id)loadFromNib
{
	Class viewClass = [self class];
	NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:[viewClass description] owner:nil options:nil];
	for (id object in topLevelObjects) {
		if ([object isKindOfClass:[self class]]) {
			return object;
		}
	}
	return nil;
}

@end
