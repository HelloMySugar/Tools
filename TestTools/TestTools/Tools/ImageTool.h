//
//  ImageTool.h
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageTool : NSObject

+ (UIImage *)fixOrientation:(UIImage *)aImage;
+ (UIImage *)createImageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)scaleImage:(UIImage *)image toWidth:(int)toWidth toHeight:(int)toHeight;

@end
