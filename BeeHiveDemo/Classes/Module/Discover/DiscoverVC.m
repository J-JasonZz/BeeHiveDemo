//
//  DiscoverVC.m
//  BeeHiveDemo
//
//  Created by JasonZhang on 2017/4/5.
//  Copyright © 2017年 wscn. All rights reserved.
//

#import "DiscoverVC.h"
#import "Service.h"
#import "BeeHive.h"
#import "DiscoverServiceProtocol.h"

@BeeHiveService(DiscoverServiceProtocol,DiscoverVC)

@interface DiscoverVC ()<DiscoverServiceProtocol>

@property (nonatomic, strong) UIButton *pushButton;

@property (nonatomic, strong) UITextField *textFiled;

@end

@implementation DiscoverVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.pushButton.frame = CGRectMake((self.view.bounds.size.width - 50.f) / 2.f, 200.f, 50.f, 30.f);
    [self.pushButton setTitle:@"push" forState:UIControlStateNormal];
    [self.pushButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.pushButton addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.pushButton];
    
    self.textFiled = [[UITextField alloc] initWithFrame:CGRectMake((self.view.bounds.size.width - 200.f) / 2.f, 300.f, 200.f, 50.f)];
    self.textFiled.borderStyle = UITextBorderStyleLine;
    self.textFiled.placeholder = @"模块间的相互调用";
    [self.view addSubview:self.textFiled];
}

- (void)pushAction:(UIButton *)pushButton
{
    id<DetailServiceProtocol> detailVC = [[BeeHive shareInstance] createService:@protocol(DetailServiceProtocol)];
    if ([detailVC isKindOfClass:[UIViewController class]]) {
        [detailVC setTitleLabelText:self.textFiled.text];
        [(UIViewController *)detailVC setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:(UIViewController *)detailVC animated:YES];
    }
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
