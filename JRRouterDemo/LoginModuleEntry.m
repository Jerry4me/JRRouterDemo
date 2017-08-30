//
//  LoginModuleEntry.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/30.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "LoginModuleEntry.h"
#import "LoginViewController.h"
#import "ModuleProtocolManager.h"

@implementation LoginModuleEntry

+ (void)load {
    [ModuleProtocolManager registerClass:self forProtocol:@protocol(LoginModuleEntryProtocol)];
}

- (UIViewController *)loginViewController {
    return [[LoginViewController alloc] init];
}

@end
