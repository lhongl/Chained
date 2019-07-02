//
//  UITextView+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/2.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UITextView+Chained.h"

@implementation UITextView (Chained)

+ (UITextView *(^)(void))initTextView{
    return ^(void){
        UITextView *textView = [[UITextView alloc] init];
        return textView;
    };
}

+ (UITextView *(^)(CGRect rect))initRectTextView{
    
    return ^(CGRect rect){
        UITextView *textView = [[UITextView alloc] init];
        return textView;
    };
}

- (UITextView *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UITextView *(^)(NSString *text))fdText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))fdKeyboardDismissMode{
    
    return ^(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

- (UITextView *(^)(UIKeyboardType keyboardType))fdKeyboardType{
    
    return ^(UIKeyboardType keyboardType){
        self.keyboardType = keyboardType;
        return self;
    };
}

- (UITextView *(^)(UIColor *textColor))fdTextColor{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (UITextView *(^)(UIColor *backColor))fdBackColor{
    
    return ^(UIColor *backColor){
        self.backgroundColor = backColor;
        return self;
    };
}

- (UITextView *(^)(NSTextAlignment textAlignment))fdTextAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextView *(^)(CGFloat fontSize))fdFont{
    
    return ^(CGFloat fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UITextView *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled{
    
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}


- (UITextView *(^)(id<UITextViewDelegate> delegate))fdDelegate{
    
    return ^(id<UITextViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITextView *(^)(BOOL secureTextEntry))fdSecureTextEntry{
    return ^(BOOL secureTextEntry){
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

- (UITextView *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (UITextView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
