//
//  ValidateTool.h
//  MKTV
//
//  Created by TangYanQiong on 2017/4/14.
//  Copyright © 2017Year . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidateTool : NSObject

+ (BOOL)validateUserName:(NSString *)userStr;
+ (BOOL)validatePassword:(NSString *)password;
+ (BOOL)validatePhoneNum:(NSString *)mobileNum;
+ (BOOL)validateJPLan:(NSString *)jpLan;
+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validateBirthDate:(NSString *)birthDate;

@end
