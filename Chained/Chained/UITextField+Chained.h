//
//  UITextField+Chained.h
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Chained)

+ (__kindof UITextField *)initTextField;

+ (__kindof UITextField *(^)(CGRect rect))initRectTextField;

- (__kindof UITextField *(^)(NSString *text))fdText;

- (__kindof UITextField *(^)(UIColor *textColor))fdTextColor;

- (__kindof UITextField *(^)(UIColor *backColor))fdBackColor;

- (__kindof UITextField *(^)(CGRect rect))fdRect;

- (__kindof UITextField *(^)(NSTextAlignment textAlignment))fdTextAlignment;

- (__kindof UITextField *(^)(CGFloat fontSize))fdFont;

- (__kindof UITextField *(^)(UIKeyboardType keyboardType))fdKeyboardType;

- (__kindof UITextField *(^)(BOOL enabled))fdEnabled;

- (__kindof UITextField *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled;

- (__kindof UITextField *(^)(NSAttributedString *attributedText))fdAttributedText;

- (__kindof UITextField *(^)(UITextBorderStyle borderStyle))fdBorderStyle;

- (__kindof UITextField *(^)(NSString *placeholder))fdPlaceholder;

- (__kindof UITextField *(^)(BOOL clearsOnBeginEditing))fdClearsOnBeginEditing;

- (__kindof UITextField *(^)(id<UITextFieldDelegate> delegate))fdDelegate;

- (__kindof UITextField *(^)(CGFloat radius))fdRadius;

- (__kindof UITextField *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

@end

NS_ASSUME_NONNULL_END
