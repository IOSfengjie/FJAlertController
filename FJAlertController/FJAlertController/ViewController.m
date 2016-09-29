//
//  ViewController.m
//  FJAlertController
//
//  Created by fengjie on 2016/9/29.
//  Copyright © 2016年 FengJie. All rights reserved.
//

#import "ViewController.h"
#import "FJAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame =CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)buttonAction{
    [self alert];
}
-(void)alert{
    //ios 8.3以上系统
    FJAlertController *alertController = [FJAlertController alertControllerWithTitle:@"你确定要退出吗?" message:nil preferredStyle:UIAlertControllerStyleAlert];
    //    alertController.tintColor = [UIColor redColor]; //这里统一设置各个按钮的颜色都为红色.
    //    //当然,你还可以自定义某一个按钮的颜色.比如下面的取消按钮
    //    alertController.titleColor = [UIColor redColor];
    
    
    //退出
    FJAlertAction *exitAction = [FJAlertAction actionWithTitle:@"退出" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    exitAction.textColor=[UIColor lightGrayColor];
    [alertController addAction:exitAction];
    
    //取消
    FJAlertAction *cancelAction = [FJAlertAction actionWithTitle:@"我不想退出" style:UIAlertActionStyleCancel handler:nil];
    
    //单独修改一个按钮的颜色
    cancelAction.textColor = [UIColor greenColor];
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}
-(void)actionSheet{
    FJAlertController *alertController = [FJAlertController alertControllerWithTitle:@"你确定要退出吗?" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    alertController.tintColor = [UIColor redColor]; //这里统一设置各个按钮的颜色都为红色.
    //当然,你还可以自定义某一个按钮的颜色.比如下面的取消按钮
    alertController.titleColor = [UIColor redColor];
    
    //取消
    FJAlertAction *cancelAction = [FJAlertAction actionWithTitle:@"我不想退出" style:UIAlertActionStyleCancel handler:nil];
    
    //单独修改一个按钮的颜色
    cancelAction.textColor = [UIColor greenColor];
    [alertController addAction:cancelAction];
    
    //退出
    FJAlertAction *exitAction = [FJAlertAction actionWithTitle:@"退出" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:exitAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}
@end
