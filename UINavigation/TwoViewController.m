//
//  TwoViewController.m
//  UINavigation
//
//  Created by Shengjun Hao on 2016/11/29.
//  Copyright © 2016年 spuxpu. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //导航条右边的内容
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"JJ" style:UIBarButtonItemStyleDone target:self action:@selector(click)];
    
    self.navigationItem.rightBarButtonItem = item;
    
    UIImage *image = [UIImage imageNamed:@"navigationbar_friendsearch"];
    
    // 返回一个最原始的图片
    //    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 导航条左边内容
    //    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleDone target:nil action:nil];
    
    // 创建一个按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"navigationbar_friendsearch_highlighted"] forState:UIControlStateHighlighted];
    // 导航条上按钮尺寸可以由自己决定
    // 导航条上的内容位置由系统决定
    btn.frame = CGRectMake(2000, 0, 35, 35);
    
    // 导航条的内容显示两张图片
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    item1.title = @"test";
    self.navigationItem.leftBarButtonItem = item1;
    
    
    //按钮添加成为图片，大概有三种方法
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jumpThree:(id)sender {
    
    ThreeViewController *threeCon = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:threeCon animated:YES];
}

- (void) click{

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
