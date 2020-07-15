//
//  VCROOT.m
//  31.导航栏和工具栏
//
//  Created by young_jerry on 2020/7/15.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "VCROOT.h"

@interface VCROOT ()

@end

@implementation VCROOT

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    //按钮风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
//    隐藏导航栏
    self.navigationController.navigationBar.hidden = NO;
    
    
    self.title = @"根视图";
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc]initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    //显示工具栏对象
    //默认隐藏
    self.navigationController.toolbarHidden = NO;
    //工具栏透明否
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem* btn01 = [[UIBarButtonItem alloc]initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem* btn02 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    
    UIBarButtonItem* btni = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btni.accessibilityFrame = CGRectMake(0, 0, 60, 60);
    
    
    
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
