//
//  ViewController.m
//  Demo
//
//  Created by Gao on 16/2/17.
//  Copyright © 2016年 gjq. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalMenu.h"


@interface ViewController ()<HorizontalMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    HorizontalMenu *menu = [[HorizontalMenu alloc] initWithFrame:CGRectMake(0, 20, 375, 44) withTitles:@[@"距离最近", @"收入最高", @"待遇最好"]];
    menu.delegate = self;
    [self.view addSubview:menu];
    
}


#pragma mark - HorizontalMenuDelegate

- (void)clieckButton:(UIButton *)button
{
    NSLog(@"%ld", button.tag);
}

@end
