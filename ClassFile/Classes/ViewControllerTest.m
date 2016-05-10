//
//  ViewControllerTest.m
//  YBBackTransitionDemo
//
//  Created by YangBin-Mac on 16/5/10.
//  Copyright © 2016年 YangBin. All rights reserved.
//

#import "ViewControllerTest.h"

@interface ViewControllerTest ()
@property(nonatomic,weak) UIButton * button;
@end

@implementation ViewControllerTest

-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setTitle:@"测试"];
    [self.view addSubview:self.button];
}

-(UIButton *)button{
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.bounds = CGRectMake(0,0, 100, 50);
    _button.center = CGPointMake(self.view.frame.size.width/2, 100);
    [_button setTitle:@"进入" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(gotoNextController:) forControlEvents:UIControlEventTouchUpInside];
    return _button;
}

-(void)gotoNextController:(UIButton *)button{
    
    ViewControllerTest * testVC = [ViewControllerTest new];
    
    testVC.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:testVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
