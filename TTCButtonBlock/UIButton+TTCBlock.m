//
//  UIButton+TTCButton.m
//  TTCButtonBlockDemo
//
//  Created by TT_Cindy on 2017/10/25.
//  Copyright © 2017年 TT_Cindy. All rights reserved.
//

#import "UIButton+TTCBlock.h"
#import <objc/runtime.h>
typedef void(^TTC_ButtonEventsBlock)(void);
@interface UIButton ()
/** 事件回调的block */
@property (nonatomic, copy) TTC_ButtonEventsBlock TTC_buttonEventsBlock;
@end


@implementation UIButton (TTCBlock)
//------- 添加属性 -------//

static void *TTC_buttonEventsBlockKey = &TTC_buttonEventsBlockKey;

- (TTC_ButtonEventsBlock)TTC_buttonEventsBlock {
    return objc_getAssociatedObject(self, &TTC_buttonEventsBlockKey);
}

- (void)setTTC_buttonEventsBlock:(TTC_ButtonEventsBlock)TTC_buttonEventsBlock {
    objc_setAssociatedObject(self, &TTC_buttonEventsBlockKey, TTC_buttonEventsBlock, OBJC_ASSOCIATION_COPY);
}

/**
 给按钮绑定事件回调block
 
 @param block 回调的block
 @param controlEvents 回调block的事件
 */
- (void)TTC_addEventHandler:(void (^)(void))block forControlEvents:(UIControlEvents)controlEvents {
    self.enabled = NO;
    self.TTC_buttonEventsBlock = block;
    [self addTarget:self action:@selector(TTC_blcokButtonClicked) forControlEvents:controlEvents];
}

// 按钮点击
- (void)TTC_blcokButtonClicked {
    self.userInteractionEnabled = NO;
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(btnClickedOperations) object:nil];
    
    [self performSelector:@selector(btnClickedOperations) withObject:nil afterDelay:0.3];
    
    !self.TTC_buttonEventsBlock ?: self.TTC_buttonEventsBlock();
}
- (void)btnClickedOperations {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"btnClickedOperations");
        self.userInteractionEnabled = YES;
    });
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
