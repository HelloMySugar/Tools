//
//  ShareMethods.h
//  Help_Help
//
//  Created by TangYanQiong on 13-5-6.
//  Copyright (c) 2013Year TangYanQiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StringTool : NSObject

+ (NSString *)md5HexDigest:(NSString *)inPutText;
//把字典转换为键值对
+ (NSString *)getKeyVauleStrFromDictionary:(NSDictionary *)dic;
+ (CGSize)measureStringRect:(NSString *)string width:(CGFloat)width fontSize:(UIFont *)fontSize;
+ (CGSize)measureStringRect:(NSString *)string height:(CGFloat)height fontSize:(UIFont *)fontSize;

@end
