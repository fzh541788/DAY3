//
//  VCScond.m
//  30.导航控制器切换
//
//  Created by young_jerry on 2020/7/15.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "VCScond.h"
#import "vcthird.h"
@interface VCScond ()

@end

@implementation VCScond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"视图2";
    
    UIBarButtonItem* btnNext = [[UIBarButtonItem alloc]initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
   
    self.navigationItem.rightBarButtonItem = btnNext;
}
-(void)pressNext{
    vcthird* vc = [[vcthird alloc]init];
    //推入第三个视图控制器
    [self.navigationController pushViewController:vc animated:YES];
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
