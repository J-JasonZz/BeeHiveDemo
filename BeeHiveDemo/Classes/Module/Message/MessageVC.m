//
//  MessageVC.m
//  BeeHiveDemo
//
//  Created by JasonZhang on 2017/4/5.
//  Copyright © 2017年 wscn. All rights reserved.
//

#import "MessageVC.h"
#import "BeeHive.h"
#import "MessageServiceProtocol.h"

@BeeHiveService(MessageServiceProtocol,MessageVC)

@interface MessageVC ()<MessageServiceProtocol>

@end

@implementation MessageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
