//
//  ViewController.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/30.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "ViewController.h"
#import "HHRouter.h"
#import "ModuleProtocolManager.h"
#import "LoginModuleEntryProtocol.h"
#import "CTMediator+LoginModule.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginModuleDidLogin:) name:@"LoginModuleDidLoginNotification" object:nil];
    
}

- (void)loginModuleDidLogin:(NSNotification *)note {
    // do something with account
    NSLog(@"note.object = %@", note.object);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // URL Route
    UIViewController *loginModule = [[HHRouter shared] matchController:@"/loginModule"];
    [self presentViewController:loginModule animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
