//
//  UIView+Chained.h
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Chained)

+ (__kindof UIView *)initView;

+ (__kindof UIView *(^)(CGRect rect))initRectView;

- (__kindof UIView *(^)(CGRect rect))fdRect;

- (__kindof UIView *(^)(UIColor *color))fdBackColor;

- (__kindof UIView *(^)(UIView *subView))fdAddSubView;

- (__kindof UIView *(^)(CGFloat radius))fdRadius;

- (__kindof UIView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

- (__kindof UIView *(^)(SEL action))fdAddTagerAction;

- (void)fdAddTargetAction:(void(^)(UITapGestureRecognizer *TapGest))action;

@end

NS_ASSUME_NONNULL_END
