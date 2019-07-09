//
//  UIButton+Chained.h
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Chained)

+ (UIButton *(^)(UIButtonType buttonType))initButton;

- (UIButton *(^)(CGRect rect))fdRect;

- (UIButton *(^)(UIColor *color))fdBackColor;

- (UIButton *(^)(NSString *title,UIControlState state))fdTitle;

- (UIButton *(^)(UIImage *image,UIControlState state))fdImage;

- (UIButton *(^)(NSString *imageName,UIControlState state))fdImageName;

- (UIButton *(^)(UIColor *color,UIControlState state))fdTitleColor;

- (UIButton *(^)(NSString *imageName,UIControlState state))fdBackgroundImageName;

- (UIButton *(^)(UIImage *image,UIControlState state))fdBackgroundImage;

- (UIButton *(^)(CGFloat fontSize))fdFontSize;

- (UIButton *(^)(SEL action,UIControlEvents controlEvents))addTargetAction;

- (UIButton *(^)(CGFloat radius))fdRadius;

- (UIButton *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

- (void)fdAddTargetAction:(UIControlEvents)controlEvents buttonAction:(void(^)(UIButton *button))action;

@end

NS_ASSUME_NONNULL_END
