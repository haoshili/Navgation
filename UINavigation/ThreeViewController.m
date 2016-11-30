//
//  ThreeViewController.m
//  UINavigation
//
//  Created by Shengjun Hao on 2016/11/29.
//  Copyright © 2016年 spuxpu. All rights reserved.
//

#import "ThreeViewController.h"
#import "OneViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"Test";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)home:(id)sender {
    
    //传递一个空的背景--设置bar的背景
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    UILabel *lable = [[UILabel alloc] init];
    lable.text =  @"test";
    lable.textColor = [UIColor clearColor];
    [lable sizeToFit];
    
    [self.navigationItem setTitleView:lable];
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
