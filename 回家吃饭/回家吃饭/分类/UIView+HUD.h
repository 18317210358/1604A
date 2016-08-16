//
//  UIView+HUD.h
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HUD)
- (void)showHUD;
- (void)hideHUD;
- (void)showWaring:(NSString *)message;
@end
