//
//  NSString+ADB.m
//  ADBCategories
//
//  Created by Alberto De Bortoli on 15/03/12.
//  Copyright 2012 Alberto De Bortoli. All rights reserved.
//

#import "NSString+ADB.h"

@implementation NSString (ADB)

+ (BOOL)isValidEmailString:(NSString *)email
{
	NSString *emailRegEx = 
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
	
	NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegEx];
	return [regExPredicate evaluateWithObject:email];
}

- (BOOL)isNotEmpty
{
	return ![self isEqualToString:@""];
}

- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding
{
	return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                        (__bridge CFStringRef)self,
                                                                        NULL,
                                                                        (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                        CFStringConvertNSStringEncodingToEncoding(encoding));
}

@end
