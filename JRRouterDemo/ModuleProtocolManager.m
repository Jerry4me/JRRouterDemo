//
//  ModuleProtocolManager.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/31.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "ModuleProtocolManager.h"

@interface ModuleProtocolManager()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation ModuleProtocolManager

+ (ModuleProtocolManager *)sharedManager {
    
    static ModuleProtocolManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (NSMutableDictionary *)serviceProvideSource {
    if (!_serviceProvideSource) {
        _serviceProvideSource = [NSMutableDictionary dictionary];
    }
    return _serviceProvideSource;
}

+ (void)registerClass:(Class)aClass forProtocol:(Protocol *)protocol{
    if (aClass == nil || protocol == nil) {
        return;
    }
    
    [[self sharedManager].serviceProvideSource setObject:aClass
                                                   forKey:NSStringFromProtocol(protocol)];
}

+ (Class)classForProtocol:(Protocol *)protocol {
    return [[self sharedManager].serviceProvideSource
            objectForKey:NSStringFromProtocol(protocol)];
}

@end
