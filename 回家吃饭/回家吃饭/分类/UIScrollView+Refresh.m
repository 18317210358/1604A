//
//  UIScrollView+Refresh.m
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIScrollView+Refresh.h"

@implementation UIScrollView (Refresh)


- (void)addHeaderRefresh:(void(^)())block {
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:block];
}

- (void)addFooterRefresh:(void(^)())block {
    self.mj_footer = [MJRefreshBackFooter footerWithRefreshingBlock:block];
}

- (void)beginHeaderRefresh {
    [self.mj_header beginRefreshing];
}

- (void)endHeaderRefresh {
    [self.mj_header endRefreshing];
}

- (void)endFooterRefresh {
    [self.mj_footer endRefreshing];
}
@end
