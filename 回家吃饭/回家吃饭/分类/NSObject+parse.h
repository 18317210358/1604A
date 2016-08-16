//
//  NSObject+parse.h
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kCodingDes \
- (void)encodeWithCoder:(NSCoder *)aCoder{\
    [self modelEncodeWithCoder:aCoder];\
}\
- (instancetype)initWithCoder:(NSCoder *)aDecoder{\
    self = [super init];\
    return [self modelInitWithCoder:aDecoder];\
}\
- (NSString *)description{\
    return [self modelDescription];\
}\

@interface NSObject (parse)<YYModel,NSCoding>

+ (id)parse:(id)JSON;

@end
