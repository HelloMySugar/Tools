//
//  ToastTool.h
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ToastTool : NSObject

+ (void)showToastBy:(NSString *)str inView:(UIView *)superView;
+ (void)showExplainWithContent:(NSString *)content andTitle:(NSString *)title;

@end
