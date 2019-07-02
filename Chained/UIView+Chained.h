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

+ (UIView *(^)(void))initView;

+ (UIView *(^)(CGRect rect))initRectView;

- (UIView *(^)(CGRect rect))fdRect;

- (UIView *(^)(UIColor *color))fdBackColor;

- (UIView *(^)(UIView *subView))fdAddSubView;

- (UIView *(^)(CGFloat radius))fdRadius;

- (UIView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

- (UIView *(^)(SEL action))fdAddTagerAction;

- (void)fdAddTargetAction:(void(^)(UITapGestureRecognizer *TapGest))action;

@end

NS_ASSUME_NONNULL_END
