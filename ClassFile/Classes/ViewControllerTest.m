//
//  ViewControllerTest.m
//  YBBackTransitionDemo
//
//  Created by YangBin-Mac on 16/5/10.
//  Copyright © 2016年 YangBin. All rights reserved.
//

#import "ViewControllerTest.h"
// #import "GoNextButton.h"
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

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
    
    [self setNavBar];
    
    [self dataInit];
    
    [self viewInit];
    
}
-(void)setNavBar{
    [self setTitle:@"测试"];
}
-(void)dataInit{
    
}
-(void)viewInit{
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.button];
}
-(UIButton *)button{
    if (!_button) {
        _button = [self creatButtonWithType:UIButtonTypeCustom
                                   andFrame:CGRectMake(SCREEN_WIDTH/2-50, 100,100,50)
                                   andTitle:@"进入"
                              andTitleColor:[UIColor blueColor]
                                  andAction:@selector(gotoNextController:)];
        
    }
    return _button;
}
-(UIButton *)creatButtonWithType:(UIButtonType)type
                        andFrame:(CGRect)frame
                        andTitle:(NSString *)title
                   andTitleColor:(UIColor *)color
                       andAction:(SEL)sel{
    UIButton * button = [UIButton buttonWithType:type];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    return  button;
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
