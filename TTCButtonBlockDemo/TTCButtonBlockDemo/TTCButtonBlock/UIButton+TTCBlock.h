//
//  UIButton+TTCButton.h
//  TTCButtonBlockDemo
//
//  Created by TT_Cindy on 2017/10/25.
//  Copyright © 2017年 TT_Cindy. All rights reserved.
//  引用自 蔡强 on 2017/10/18.自己敲了一遍，传上pods为了更方便的使用。
//  并非原创，谢谢。
//

#import <UIKit/UIKit.h>

@interface UIButton (TTCBlock)
/**
 绑定事件回调block
 @param block 回调的block
 @param controlEvents 回调block的事件
 */
- (void)TTC_addEventHandler:(void(^)(void))block forControlEvents:(UIControlEvents)controlEvents;

@end
