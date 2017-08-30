//
//  CTMediator+LoginModule.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/31.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "CTMediator+LoginModule.h"

NSString * const kCTMediatorTargetLogin = @"Login";

NSString * const kCTMediatorActionLoginViewController = @"loginViewController";

@implementation CTMediator (LoginModule)

- (UIViewController *)CTMediator_loginViewController {
    
    UIViewController *viewController = [self performTarget:kCTMediatorTargetLogin
                                                    action:kCTMediatorActionLoginViewController
                                                    params:@{@"key":@"value"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end
