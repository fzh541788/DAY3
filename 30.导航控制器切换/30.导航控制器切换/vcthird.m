//
//  vcthird.m
//  30.导航控制器切换
//
//  Created by young_jerry on 2020/7/15.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "vcthird.h"

@interface vcthird ()

@end

@implementation vcthird

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.title = @"第三级";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    //当自己设定左侧按钮时 返回按钮会自动替代
    self.navigationItem.leftBarButtonItem = btnLeft;
    // Do any additional setup after loading the view.
       UIBarButtonItem* btnR = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressRight)];
    self.navigationItem.rightBarButtonItem = btnR;
}
-(void)pressRight{
    //直接返回根视图
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)pressBack{
    //将当前视图控制器弹出 返回上一级
    [self.navigationController popViewControllerAnimated:YES];
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
