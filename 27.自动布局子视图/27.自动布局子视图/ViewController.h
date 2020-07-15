//
//  ViewController.h
//  27.自动布局子视图
//
//  Created by young_jerry on 2020/7/15.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //创建父亲视图
    UIView* _superView;
    //  左上角
    UILabel* _label01;
    //  右上角
    UILabel* _label02;
    //右下角
    UILabel* _label03;
    //左下角
    UILabel* _label04;
    
    UIView* _viewCenter;
    
    
}

@end

