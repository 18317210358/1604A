//
//  NSObject+parse.m
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSObject+parse.h"

@implementation NSObject (parse)

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [self modelEncodeWithCoder:aCoder];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [self init];
    return [self modelInitWithCoder:aDecoder];
}

- (NSString *)description{
    return [self modelDescription];
}


+ (id)parse:(id)JSON {
    if ([JSON isKindOfClass:[NSArray class]]) {
        return [NSArray modelArrayWithClass:[self class] json:JSON];
    }
    if ([JSON isKindOfClass:[NSDictionary class]] || [JSON isKindOfClass:[NSString class]] || [JSON isKindOfClass:[NSData class]]) {
        return [self modelWithJSON:JSON];
    }
    return JSON;
}

@end
