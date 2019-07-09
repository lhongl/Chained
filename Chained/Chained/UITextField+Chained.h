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

+ (UITextField *(^)(void))initTextField;

+ (UITextField *(^)(CGRect rect))initRectTextField;

- (UITextField *(^)(NSString *text))fdText;

- (UITextField *(^)(UIColor *textColor))fdTextColor;

- (UITextField *(^)(UIColor *backColor))fdBackColor;

- (UITextField *(^)(CGRect rect))fdRect;

- (UITextField *(^)(NSTextAlignment textAlignment))fdTextAlignment;

- (UITextField *(^)(CGFloat fontSize))fdFont;

- (UITextField *(^)(UIKeyboardType keyboardType))fdKeyboardType;

- (UITextField *(^)(BOOL enabled))fdEnabled;

- (UITextField *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled;

- (UITextField *(^)(NSAttributedString *attributedText))fdAttributedText;

- (UITextField *(^)(UITextBorderStyle borderStyle))fdBorderStyle;

- (UITextField *(^)(NSString *placeholder))fdPlaceholder;

- (UITextField *(^)(BOOL clearsOnBeginEditing))fdClearsOnBeginEditing;

- (UITextField *(^)(id<UITextFieldDelegate> delegate))fdDelegate;

- (UITextField *(^)(CGFloat radius))fdRadius;

- (UITextField *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder;

@end

NS_ASSUME_NONNULL_END
