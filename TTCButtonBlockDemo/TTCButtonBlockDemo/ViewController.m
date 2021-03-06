//
//  ViewController.m
//  TTCButtonBlockDemo
//
//  Created by TT_Cindy on 2017/10/25.
//  Copyright © 2017年 TT_Cindy. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+TTCBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    {
        UIButton *moveRedPacket = [UIButton buttonWithType:UIButtonTypeCustom];
        moveRedPacket.frame = CGRectMake(50, 64, 60, 60 );
        moveRedPacket.layer.cornerRadius = 60 / 2;
        moveRedPacket.backgroundColor = [UIColor redColor];
        [moveRedPacket setTitle:@"Block" forState:UIControlStateNormal];
        [self.view addSubview:moveRedPacket];
        
        //    __weak __typeof__(self) weakSelf = self;
        //点击事件，show日志
        [moveRedPacket TTC_addEventHandler:^{
            NSLog(@"点击" );
        } forControlEvents:UIControlEventTouchUpInside];
    }
    
   
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
