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

+ (__kindof UITextView *)initTextView;

+ (__kindof UITextView *(^)(CGRect rect))initRectTextView;

- (__kindof UITextView *(^)(CGRect rect))fdRect;

- (__kindof UITextView *(^)(NSString *text))fdText;

- (__kindof UITextView *(^)(UIColor *textColor))fdTextColor;

- (__kindof UITextView *(^)(UIColor *backColor))fdBackColor;

- (__kindof UITextView *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled;

- (__kindof UITextView *(^)(CGFloat fontSize))fdFont;

- (__kindof UITextView *(^)(UIKeyboardType keyboardType))fdKeyboardType;

- (__kindof UITextView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))fdKeyboardDismissMode;

- (__kindof UITextView *(^)(NSTextAlignment textAlignment))fdTextAlignment;

- (__kindof UITextView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

- (__kindof UITextView *(^)(CGFloat radius))fdRadius;

- (__kindof UITextView *(^)(BOOL secureTextEntry))fdSecureTextEntry;

- (__kindof UITextView *(^)(id<UITextViewDelegate> delegate))fdDelegate;

@end

NS_ASSUME_NONNULL_END
