//
//  ViewController.m
//  ZZYPlaceholderTextView
//
//  Created by admin on 16/7/14.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ViewController.h"
#import "ZZYPlaceholderTextView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ZZYPlaceholderTextView *placeholderView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.placeholderView.placeholder = @"请输入信息";
    
    ZZYPlaceholderTextView * placeView = [[ZZYPlaceholderTextView alloc]initWithFrame:CGRectMake(20, 350, self.view.frame.size.width - 40 , 100)];
    placeView.placeholder = @"请输入描述文字";
    [self.view addSubview:placeView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
