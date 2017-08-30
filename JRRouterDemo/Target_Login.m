//
//  Target_Login.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/31.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "Target_Login.h"
#import "LoginViewController.h"

@implementation Target_Login

- (UIViewController *)Action_loginViewController:(NSDictionary *)params {
    return [[LoginViewController alloc] init];
}

@end
