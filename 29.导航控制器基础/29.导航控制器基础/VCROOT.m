//
//  VCROOT.m
//  29.导航控制器基础
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
    //设置导航栏的标题文字
    self.title = @"根视图";
    //设置导航元素项目的标题
    //如果没有设置.title 则为nil;系统会使用self.title做为标题
    self.navigationItem.title = @"title";
    
    //创建一个导航栏左侧的按钮
    //根据title文字来创建按钮
    //p1:按钮上的文字
    //p2:按钮风格
    //p3:事件拥有者
    //p4:按钮事件
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"左侧"  style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
     //将导航元素项按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    //右侧按钮
    //根据系统风格来创建按钮  只需要指定风格样式(此处为add加号风格)，按钮内容或文字不能改变
    //p1:按钮上的文字
    //p2:按钮风格
    //p3:事件拥有者
    //p4:按钮事件
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //标签对象
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 40)];
    
    label.text = @"test";
    
    label.textAlignment = NSTextAlignmentCenter;
    
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem* item03 = [[UIBarButtonItem alloc]initWithCustomView:label];
    
    //创建按钮数组
    NSArray* arrayBtn = [NSArray arrayWithObjects:rightBtn,item03, nil];
    
    //将右侧按钮组赋值
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
    
    
}
-(void)pressLeft{
    NSLog(@"左侧按钮被按下！");
}
-(void)pressRight{
    NSLog(@"右侧按钮被按下！");
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
