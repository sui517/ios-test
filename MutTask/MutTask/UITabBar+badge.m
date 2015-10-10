//
//  UITabBar+badge.m
//  MutTask
//
//  Created by 周景隆 on 15/10/10.
//  Copyright © 2015年 周景隆. All rights reserved.
//

#import "UITabBar+badge.h"

#define TAB_BAR_NUMS 4.0;

@implementation UITabBar (badge)

-(void) showBadgeOnItemIndex:(int)index{
    //移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    //新建小红点
    UIView *badgeView = [[UIView alloc]init];
    badgeView.tag = 888 + index;
    badgeView.layer.cornerRadius = 5;//圆形
    badgeView.backgroundColor = [UIColor redColor];//颜色：红色
    CGRect tabFrame = self.frame;
    
    //确定小红点的位置
    float percentX = (index +0.6) / TAB_BAR_NUMS;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, y, 10, 10);//圆形大小为10
    [self addSubview:badgeView];
    
}

-(void) hideBadgeOnItemIndex:(int)index{
    [self removeBadgeOnItemIndex:index];
}

-(void)removeBadgeOnItemIndex:(int)index{
    for(UIView *subView in self.subviews){
        if(subView.tag==888+index){
            [subView removeFromSuperview];
        }
    }
}
@end
