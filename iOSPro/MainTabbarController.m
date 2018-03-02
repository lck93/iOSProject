//
//  MainTabbarController.m
//  iOSPro
//
//  Created by Tom on 2018/2/27.
//  Copyright © 2018年 Tom. All rights reserved.
//

#import "MainTabbarController.h"
#import "FunctionVC.h"
#import "BaseVC.h"
#import "OtherVC.h"
#import "MoreVC.h"
#import "ShareVC.h"
/**
 *  属性转字符串
 */
#define LMJKeyPath(obj, key) @(((void)obj.key, #key))
@interface MainTabbarController ()

@end

@implementation MainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.tabBarHeight = CYL_IS_IPHONE_X ? 65 : 44;
    UIEdgeInsets imageInsets = UIEdgeInsetsMake(0, 0, 0, 0);//UIEdgeInsetsMake(4.5, 0, -4.5, 0);
    UIOffset titlePositionAdjustment = UIOffsetZero;//UIOffsetMake(0, MAXFLOAT);
//    self.tabBarHeight= 40;
//
    [self setValue:[NSValue valueWithUIOffset:titlePositionAdjustment] forKey:@"titlePositionAdjustment"];
    [self setValue:[NSValue valueWithUIEdgeInsets:imageInsets] forKey:@"imageInsets"];

    [self setChild];
    [self addChild];
    
}

- (void)addChild
{
    UINavigationController *first = [[UINavigationController alloc] initWithRootViewController:[[FunctionVC alloc] init]];
    UINavigationController *second = [[UINavigationController alloc] initWithRootViewController:[[BaseVC alloc] init]];
    UINavigationController *third = [[UINavigationController alloc] initWithRootViewController:[[OtherVC alloc] init]];
    UINavigationController *firth = [[UINavigationController alloc] initWithRootViewController:[[MoreVC alloc] init]];
//    UINavigationController *fifth = [[UINavigationController alloc] initWithRootViewController:[[ShareVC alloc] init]];
   
    
    self.viewControllers = @[first,second,third,firth];
  
}

- (void)setChild
{
    NSDictionary *secondTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"基础",
                                                 CYLTabBarItemImage : @"tabBar_essence_icon",
                                                 CYLTabBarItemSelectedImage : @"tabBar_essence_click_icon",
                                                 };
    
    NSDictionary *firstTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"功能",
                                                  CYLTabBarItemImage : @"tabBar_friendTrends_icon",
                                                  CYLTabBarItemSelectedImage : @"tabBar_friendTrends_click_icon",
                                                  };
    NSDictionary *thirdTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"其他",
                                                 CYLTabBarItemImage : @"tabBar_new_icon",
                                                 CYLTabBarItemSelectedImage : @"tabBar_new_click_icon",
                                                 };
    NSDictionary *fifthTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"分享登录",
                                                  CYLTabBarItemImage : @"tabBar_me_icon",
                                                  CYLTabBarItemSelectedImage : @"tabBar_me_click_icon"
                                                  };
    NSDictionary *fourthTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"更多案例",
                                                 CYLTabBarItemImage : @"tabbar_discover",
                                                 CYLTabBarItemSelectedImage : @"tabbar_discover_highlighted"
                                                 };
    self.tabBarItemsAttributes = @[firstTabBarItemsAttributes,secondTabBarItemsAttributes,thirdTabBarItemsAttributes,fourthTabBarItemsAttributes];
    
   

    
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
