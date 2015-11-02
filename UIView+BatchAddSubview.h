//
//  UIView+AddSubview.h
//  MBuyGo
//
//  Created by qiukai on 15/8/4.
//  Copyright (c) 2015年 m6go.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BatchAddSubview)

- (void)batchAddSubview:(UIView *)subview, ... NS_REQUIRES_NIL_TERMINATION;
- (void)batchAddSubviews:(NSArray *)subviews;

@end
