//
//  NSString+JL.m
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSString+JL.h"

@implementation NSString (JL)
- (NSURL *)jl_url{
    if ([self containsString:@"http://"] || [self containsString:@"https://"]) {
        return [NSURL URLWithString:self];
    }
    return [NSURL fileURLWithPath:self];
}
@end
