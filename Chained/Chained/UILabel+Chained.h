//
//  UILabel+Chained.h
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Chained)

+ (UILabel *(^)(void))initLabel;

+ (UILabel *(^)(CGRect rect))initRectLabel;

- (UILabel *(^)(NSString *text))fdText;

- (UILabel *(^)(UIColor *textColor))fdTextColor;

- (UILabel *(^)(UIColor *backColor))fdBackColor;

- (UILabel *(^)(CGRect rect))fdRect;

- (UILabel *(^)(NSTextAlignment textAlignment))fdTextAlignment;

- (UILabel *(^)(CGFloat fontSize))fdFont;

- (UILabel *(^)(BOOL enabled))fdEnabled;

- (UILabel *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled;

- (UILabel *(^)(NSInteger numberOfLines))fdNumberOfLines;

- (UILabel *(^)(NSAttributedString *attributedText))fdAttributedText;

- (UILabel *(^)(CGFloat radius))fdRadius;

- (UILabel *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

@end

NS_ASSUME_NONNULL_END
