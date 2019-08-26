//
//  UITextView+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/2.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UITextView+Chained.h"

@implementation UITextView (Chained)

+ (__kindof UITextView *)initTextView{

    return [[self alloc] init];;
}

+ (__kindof UITextView *(^)(CGRect rect))initRectTextView{
    
    return ^(CGRect rect){

        return [[self alloc] initWithFrame:rect];
    };
}

- (__kindof UITextView *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (__kindof UITextView *(^)(NSString *text))fdText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (__kindof UITextView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))fdKeyboardDismissMode{
    
    return ^(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

- (__kindof UITextView *(^)(UIKeyboardType keyboardType))fdKeyboardType{
    
    return ^(UIKeyboardType keyboardType){
        self.keyboardType = keyboardType;
        return self;
    };
}

- (__kindof UITextView *(^)(UIColor *textColor))fdTextColor{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (__kindof UITextView *(^)(UIColor *backColor))fdBackColor{
    
    return ^(UIColor *backColor){
        self.backgroundColor = backColor;
        return self;
    };
}

- (__kindof UITextView *(^)(NSTextAlignment textAlignment))fdTextAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (__kindof UITextView *(^)(CGFloat fontSize))fdFont{
    
    return ^(CGFloat fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (__kindof UITextView *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled{
    
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}


- (__kindof UITextView *(^)(id<UITextViewDelegate> delegate))fdDelegate{
    
    return ^(id<UITextViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (__kindof UITextView *(^)(BOOL secureTextEntry))fdSecureTextEntry{
    return ^(BOOL secureTextEntry){
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

- (__kindof UITextView *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (__kindof UITextView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
