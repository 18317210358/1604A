//
//  BaseNetworking.h
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseNetworking : NSObject
+ (id)Get:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj,NSError *error))completionHandler;

+ (id)Post:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj,NSError *error))completionHandler;
@end
