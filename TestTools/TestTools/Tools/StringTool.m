//
//  ShareMethods.m
//  Help_Help
//
//  Created by TangYanQiong on 13-5-6.
//  Copyright (c) 2013Year TangYanQiong. All rights reserved.
//

#import "StringTool.h"
#import <objc/runtime.h>
#import "CommonCrypto/CommonDigest.h"
#import <sys/utsname.h>

@implementation StringTool

//md5加密
+ (NSString *)md5HexDigest:(NSString *) inPutText
{
    const char *cStr = [inPutText UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}

+ (NSString *)getKeyVauleStrFromDictionary:(NSDictionary *)dic
{
    NSString *keyVauleStr = @"";
    for (int i = 0; i < dic.allKeys.count; i ++)
    {
        NSString *key = dic.allKeys[i];
        NSString *keyValue = [key stringByAppendingFormat:@"=%@", dic[key]];
        keyVauleStr = [keyVauleStr stringByAppendingFormat:@"%@%@", keyValue, i < dic.allKeys.count-1 ? @"&" : @""];
    }
    return keyVauleStr;
}

+ (CGSize)measureStringRect:(NSString *)string width:(CGFloat)width fontSize:(UIFont *)fontSize
{
    CGRect stringRect = [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : fontSize} context:NULL];
    return stringRect.size;
}

+ (CGSize)measureStringRect:(NSString *)string height:(CGFloat)height fontSize:(UIFont *)fontSize
{
    CGRect stringRect = [string boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : fontSize} context:NULL];
    return stringRect.size;
}

@end
