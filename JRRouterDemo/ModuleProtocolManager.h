//
//  ModuleProtocolManager.h
//  JRRouterDemo
//
//  Created by sky on 2017/8/31.
//  Copyright © 2017年 sky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModuleProtocolManager : NSObject

+ (ModuleProtocolManager *)sharedManager;

+ (void)registerClass:(Class)aClass forProtocol:(Protocol *)protocol;
+ (Class)classForProtocol:(Protocol *)protocol;


@end
