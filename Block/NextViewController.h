//
//  NextViewController.h
//  Block
//
//  Created by qinlin on 15/12/24.
//  Copyright © 2015年 qinlinkeji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

@property (nonatomic,copy) void (^NextViewControllerBlock)(NSString *text);

@end
