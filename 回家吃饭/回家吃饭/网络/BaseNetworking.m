//
//  BaseNetworking.m
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BaseNetworking.h"

@implementation BaseNetworking


+ (id)Get:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj,NSError *error))completionHandler {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    return [manager GET:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        !completionHandler ?: completionHandler(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        !completionHandler ?: completionHandler(nil,error);
    }];
}

+ (id)Post:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj,NSError *error))completionHandler{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    return [manager POST:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        !completionHandler ?: completionHandler(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        !completionHandler ?: completionHandler(nil,error);
    }];
}
@end
