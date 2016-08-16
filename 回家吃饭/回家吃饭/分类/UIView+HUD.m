//
//  UIView+HUD.m
//  回家吃饭
//
//  Created by Apple on 16/8/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIView+HUD.h"

@implementation UIView (HUD)


- (void)showHUD {
    [self hideHUD];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    [hud hide:YES afterDelay:30];
}

- (void)hideHUD {
    [MBProgressHUD hideHUDForView:self animated:YES];
}

- (void)showWaring:(NSString *)message {
    [self hideHUD];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = message;
    [hud hide:YES afterDelay:1.5];
}
@end
