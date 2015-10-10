//
//  UITabBar+badge.h
//  MutTask
//
//  Created by 周景隆 on 15/10/10.
//  Copyright © 2015年 周景隆. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)


- (void) showBadgeOnItemIndex:(int) index;

- (void) hideBadgeOnItemIndex:(int)index;

@end
