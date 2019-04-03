//
//  ColorTool.m
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import "ColorTool.h"

@implementation ColorTool

//Create UIColor form HexString
+ (UIColor *) colorFromHexRGB:(NSString *) inColorString
{
    inColorString = [inColorString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:1.0];
    return result;
}

@end
