//
//  UIView+AddSubview.m
//  MBuyGo
//
//  Created by qiukai on 15/8/4.
//  Copyright (c) 2015年 m6go.com. All rights reserved.
//

#import "UIView+BatchAddSubview.h"

#ifndef RandomColor
#define RandomColor [UIColor colorWithRed:(arc4random_uniform(256)) / 255.0 green:(arc4random_uniform(256)) / 255.0 blue:(arc4random_uniform(256)) / 255.0 alpha:1]
#endif

@implementation UIView (BatchAddSubview)

- (void)customAddSubview:(id)obj {
    if ([obj isKindOfClass:[UIView class]]) {
        [(UIView *)obj setBackgroundColor:RandomColor];
        [self addSubview:obj];
    } else {
        NSAssert(NO, @"obj必须是UIView类型");
    }
}

- (void)batchAddSubview:(UIView *)subview, ...
{
    va_list arguments;
    id eachObject;
    if (subview) {
        [self customAddSubview:subview];
        va_start(arguments, subview);
        while ((eachObject = va_arg(arguments, id))) {
            [self customAddSubview:eachObject];
        }
        va_end(arguments);
    }
}

- (void)batchAddSubviews:(NSArray *)subviews
{
    for (id obj in subviews) {
        [self customAddSubview:obj];
    }
}

@end
