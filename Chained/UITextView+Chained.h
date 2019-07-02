//
//  UITextView+Chained.h
//  Chained
//
//  Created by 飞渡 on 2019/7/2.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (Chained)

+ (UITextView *(^)(void))initTextView;

+ (UITextView *(^)(CGRect rect))initRectTextView;

- (UITextView *(^)(CGRect rect))fdRect;

- (UITextView *(^)(NSString *text))fdText;

- (UITextView *(^)(UIColor *textColor))fdTextColor;

- (UITextView *(^)(UIColor *backColor))fdBackColor;

- (UITextView *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled;

- (UITextView *(^)(CGFloat fontSize))fdFont;

- (UITextView *(^)(NSTextAlignment textAlignment))fdTextAlignment;

- (UITextView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

- (UITextView *(^)(CGFloat radius))fdRadius;

- (UITextView *(^)(BOOL secureTextEntry))fdSecureTextEntry;

- (UITextView *(^)(id<UITextViewDelegate> delegate))fdDelegate;

@end

NS_ASSUME_NONNULL_END
