//
//  ToastTool.m
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import "ToastTool.h"
#import "MBProgressHUD.h"

@implementation ToastTool

//Show toast with message
+ (void)showToastBy:(NSString *)str inView:(UIView *)superView
{
    //如果父视图为nil，则return
    if (!superView) return;
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:superView animated:YES];
    hud.userInteractionEnabled = NO;
    hud.mode = MBProgressHUDModeText;
    hud.detailsLabelText = str;
    hud.margin = 10.f;
    hud.layer.cornerRadius = 5.f;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:1.5f];
}

//show alert with title and content
+ (void)showExplainWithContent:(NSString *)content andTitle:(NSString *)title
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:content preferredStyle:UIAlertControllerStyleAlert];
    [UIApplication.sharedApplication.keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}

@end
