//
//  VCRoot.m
//  30.导航控制器切换
//
//  Created by young_jerry on 2020/7/15.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "VCRoot.h"
#import "VCScond.h"
@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航栏透明度 yes可透明 no不透明
    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc]initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
}
-(void)pressNext{
    VCScond* vcSecond = [[VCScond alloc]init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:vcSecond animated:YES];
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
