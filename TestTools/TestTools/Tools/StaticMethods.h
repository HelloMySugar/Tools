//
//  StaticMethods.h
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#define SINGLE_LINE_WIDTH           (1 / [UIScreen mainScreen].scale)
#define SINGLE_LINE_ADJUST_OFFSET   ((1 / [UIScreen mainScreen].scale) / 2)

//Get safe space string
static inline NSString *GetSafeString(NSString *str)
{
    if (!str || [str isKindOfClass:[NSNull class]]) {
        str = @"";
    }
    return str;
}

//画水平线
static inline bool DrawHorizontalLine(UIView *view,float x,float y,float lineWidth,UIColor *color)
{
    CALayer *lineLayer = [CALayer layer];
    lineLayer.backgroundColor = color.CGColor;
    lineLayer.frame = CGRectMake(x, y-SINGLE_LINE_ADJUST_OFFSET, lineWidth, SINGLE_LINE_WIDTH);
    [view.layer addSublayer:lineLayer];
    
    return true;
}

//画竖直线
static inline bool DrawLine(UIView *view,float x,float y,float lineWidth,float lineHeight,UIColor *color)
{
    CALayer *lineLayer = [CALayer layer];
    lineLayer.backgroundColor = color.CGColor;
    lineLayer.frame = CGRectMake(x, y, lineWidth, lineHeight);
    [view.layer addSublayer:lineLayer];
    
    return true;
}

#pragma mark 获取系统当前语言

static inline NSString * _getCurrentLanguage(void)
{
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    /* 根据实际需要及约定，返回对应字段
    if ([currentLanguage rangeOfString:@"zh-Hans"].location != NSNotFound)
    {
        currentLanguage = @"zh_CN";//简体
    } else if([currentLanguage rangeOfString:@"zh-Hant"].location != NSNotFound ||
              [currentLanguage rangeOfString:@"zh-HK"].location != NSNotFound ||
              [currentLanguage rangeOfString:@"zh-TW"].location != NSNotFound)
    {
        currentLanguage = @"zh_TW";//繁体
    }else{
        currentLanguage = @"en_US";//英文
    }
    */
    return currentLanguage;
}

//获取时区
static inline NSString *_getSystemGMT(void)
{
    NSTimeZone *timezone = [NSTimeZone systemTimeZone];
    return [NSString stringWithFormat:@"%ld",(long)[timezone secondsFromGMT]/(60*60)];
}

#pragma mark- get day time
static inline NSString * _getDateByDistance(int day)
{
    char strDay[255];
    long  llTime;
    struct tm* t;
    time(&llTime);
    llTime += day*24*60*60;
    t = localtime(&llTime);
    strftime(strDay, 80, "%Y%m%d", t);
    return [NSString stringWithUTF8String:strDay];
}

//Remove space and enter
static inline NSString *RemoveSpaceAndEnter(NSString *str)
{
    if (!str || str.length == 0) {
        str = @"";
    }else {
        str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return str;
}

//判断是否是空str
static inline bool isEmptyString(NSString *judgeStr)
{
    if (judgeStr == nil) return YES;
    if ([judgeStr isKindOfClass:[NSNull class]]) return YES;
    if (judgeStr.length == 0) return YES;
    
    return NO;
}
