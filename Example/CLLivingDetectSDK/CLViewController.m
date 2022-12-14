//
//  CLViewController.m
//  CLLivingDetectSDK
//
//  Created by tttsymq on 12/14/2022.
//  Copyright (c) 2022 tttsymq. All rights reserved.
//

#import "CLViewController.h"
#import <CLLivingDetectSDK/CLLivingDetectSDK.h>

@interface CLViewController ()

@end

@implementation CLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [CLLivingDetectManager setPrintConsoleEnable:YES];
    [CLLivingDetectManager initWithAppId:@"QYLLRZK6"];
    [CLLivingDetectManager setLivingConfig:[CLLvingConfig defaultConfig]];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 120, self.view.frame.size.width-100, 50);
    [button setTitle:@"活体测试" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [button setBackgroundColor:UIColor.blueColor];
    [button addTarget:self action:@selector(clickEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickEvent:(UIButton *)sender{
    [CLLivingDetectManager startVerifyWithViewController:self completion:^(CLLivingResult * _Nonnull result) {
        NSLog(@"");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
