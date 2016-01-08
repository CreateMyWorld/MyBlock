//
//  ViewController.m
//  Block
//
//  Created by qinlin on 15/12/23.
//  Copyright © 2015年 qinlinkeji. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    
    int multiplier = 7;
    
    int (^myBlock)(int) = ^(int num){
        
        return num * multiplier;
    };
    
    NSLog(@"%d",myBlock(3));
    
    void(^printBlock)()= ^(){
    
        printf("no number");
    };
    
    printBlock();
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor redColor];
    
    btn.frame = CGRectMake(100, 100, 100, 100);
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
//    NSArray *arr = @[@"af",@"adf"];
//    
//    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//       
//        NSLog(@"%zi--%@",idx,obj);
//    }];
}

-(void)btnClick
{
    NextViewController *nextVC = [[NextViewController alloc] init];
    
    nextVC.NextViewControllerBlock = ^(NSString *text){
        
        NSLog(@"%@",text);
    };
    
    [self presentViewController:nextVC animated:YES completion:^{
        
    }];
    
    NSArray *arr=@[@"123"];
    
    NSString *string = arr[2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
