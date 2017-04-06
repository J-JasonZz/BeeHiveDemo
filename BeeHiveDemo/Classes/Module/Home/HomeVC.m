//
//  HomeVC.m
//  BeeHiveDemo
//
//  Created by JasonZhang on 2017/4/5.
//  Copyright © 2017年 wscn. All rights reserved.
//

#import "HomeVC.h"
#import "BeeHive.h"
#import "Service.h"

@BeeHiveService(HomeServiceProtocol,HomeVC)
@interface HomeVC () <HomeServiceProtocol>

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createViewControllers];
}

- (void)createViewControllers
{
    NSMutableArray *viewControllers = [NSMutableArray array];
    id<DiscoverServiceProtocol> discoverVC = [[BeeHive shareInstance] createService:@protocol(DiscoverServiceProtocol)];
    if ([discoverVC isKindOfClass:[UIViewController class]]) {
        UIViewController *controller = (UIViewController *)discoverVC;
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
        nav.tabBarItem.title = @"Discover";
        [viewControllers addObject:nav];
    }
    
    id<MessageServiceProtocol> messageVC = [[BeeHive shareInstance] createService:@protocol(MessageServiceProtocol)];
    if ([messageVC isKindOfClass:[UIViewController class]]) {
        UIViewController *controller = (UIViewController *)messageVC;
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
        nav.tabBarItem.title = @"Message";
        [viewControllers addObject:nav];
    }
    
    self.viewControllers = viewControllers;
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
