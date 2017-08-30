//
//  LoginViewController.m
//  JRRouterDemo
//
//  Created by sky on 2017/8/30.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "LoginViewController.h"
#import "HHRouter.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

@end

@implementation LoginViewController
- (IBAction)loginOnClicked:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LoginModuleDidLoginNotification" object:@{
                                                                                                           @"user" : self.userTextField.text, @"pwd" : self.pwdTextField.text}];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (void)load {
    [[HHRouter shared] map:@"/loginModule" toControllerClass:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.params);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}



@end
