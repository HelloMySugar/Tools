//
//  ValidateTool.m
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import "ValidateTool.h"

@implementation ValidateTool

//judge user format
+ (BOOL)validateUserName:(NSString *)userStr
{
    NSString *emailReg = @"[A-Z0-9a-z_.]+@[A-Za-z0-9_.]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailCheck = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailReg];
    
    NSString *phoneReg = @"1[3|5|8]\\d{9}";
    NSPredicate *phoneCheck = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneReg];
    
    if ([emailCheck evaluateWithObject:userStr] || [phoneCheck evaluateWithObject:userStr])
        return YES;
    else
        return NO;
}

//judge password format
+ (BOOL)validatePassword:(NSString *)password
{
    NSString *pattern = @"^[0-9a-zA-Z]{6,20}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:password];
    return isMatch;
}

+ (BOOL)validatePhoneNum:(NSString *)mobileNum;
{
    NSString *MOBILE = @"^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    return [regextestmobile evaluateWithObject:mobileNum];
}

+ (BOOL)validateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)validateBirthDate:(NSString *)birthDate
{
    NSString *birthDateRegex = @"^[0-9]{4}-[0-9]{2}-[0-9]{2}$";
    NSPredicate *result = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", birthDateRegex];
    return [result evaluateWithObject:birthDate];
}

+ (BOOL)validateJPLan:(NSString *)jpLan
{
    NSString *birthDateRegex = @"^^[ァ-ヶ]+$";
    NSPredicate *result = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", birthDateRegex];
    return [result evaluateWithObject:jpLan];
}

@end
