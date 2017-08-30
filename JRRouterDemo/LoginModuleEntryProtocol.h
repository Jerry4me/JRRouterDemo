//
//  LoginModuleEntryProtocol.h
//  JRRouterDemo
//
//  Created by sky on 2017/8/30.
//  Copyright © 2017年 sky. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginModuleEntryProtocol <NSObject>

@required
- (UIViewController *)loginViewController;

@end
