//
//  UIScrollView+Refresh.h
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Refresh)
- (void)addHeaderRefresh:(void(^)())block;
- (void)addFooterRefresh:(void(^)())block;

- (void)beginHeaderRefresh;
- (void)endHeaderRefresh;

- (void)endFooterRefresh;
@end
