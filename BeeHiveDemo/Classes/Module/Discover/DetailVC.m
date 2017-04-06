//
//  DetailVC.m
//  BeeHiveDemo
//
//  Created by JasonZhang on 2017/4/6.
//  Copyright © 2017年 wscn. All rights reserved.
//

#import "DetailVC.h"
#import "BeeHive.h"
#import "DetailServiceProtocol.h"

@BeeHiveService(DetailServiceProtocol,DetailVC)

@interface DetailVC ()<DetailServiceProtocol>

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation DetailVC

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 200.f) / 2.f, 100.f, 200.f, 50.f)];
        self.titleLabel.backgroundColor = [UIColor redColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self configSubViews];
}

- (void)configSubViews
{
    [self.view addSubview:self.titleLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- Protocol
- (void)setTitleLabelText:(NSString *)text
{
    self.titleLabel.text = text;
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
