//
//  NextViewController.m
//  Block
//
//  Created by qinlin on 15/12/24.
//  Copyright © 2015年 qinlinkeji. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor yellowColor];
    
    btn.frame = CGRectMake(100, 100, 100, 100);
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClick
{
    if (self.NextViewControllerBlock) {

        self.NextViewControllerBlock(@"123木头人");
    }
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
    NSArray *arr;
    
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
    }];
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
