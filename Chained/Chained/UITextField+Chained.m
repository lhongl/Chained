//
//  UITextField+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UITextField+Chained.h"

@implementation UITextField (Chained)

+ (__kindof UITextField *)initTextField{
    
    return [[self alloc] init];
}

+ (__kindof UITextField *(^)(CGRect rect))initRectTextField{
    
    return ^(CGRect rect){
        
        return [[self alloc] initWithFrame:rect];
    };
}

- (__kindof UITextField *(^)(NSString *text))fdText{
    
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (__kindof UITextField *(^)(UIColor *textColor))fdTextColor{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (__kindof UITextField *(^)(UIColor *backColor))fdBackColor{
    
    return ^(UIColor *backColor){
        self.backgroundColor = backColor;
        return self;
    };
}

- (__kindof UITextField *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (__kindof UITextField *(^)(UIKeyboardType keyboardType))fdKeyboardType{
    
    return ^(UIKeyboardType keyboardType){
        self.keyboardType = keyboardType;
        return self;
    };
}

- (__kindof UITextField *(^)(NSTextAlignment textAlignment))fdTextAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (__kindof UITextField *(^)(CGFloat fontSize))fdFont{
    
    return ^(CGFloat fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (__kindof UITextField *(^)(BOOL enabled))fdEnabled{
    
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (__kindof UITextField *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled{
    
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (__kindof UITextField *(^)(NSAttributedString *attributedText))fdAttributedText{
    
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (__kindof UITextField *(^)(UITextBorderStyle borderStyle))fdBorderStyle{
    
    return ^(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}

- (__kindof UITextField *(^)(NSString *placeholder))fdPlaceholder{
    
    return ^(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}

- (__kindof UITextField *(^)(BOOL clearsOnBeginEditing))fdClearsOnBeginEditing{
    
    return ^(BOOL clearsOnBeginEditing){
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (__kindof UITextField *(^)(id<UITextFieldDelegate> delegate))fdDelegate{
    
    return ^(id<UITextFieldDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (__kindof UITextField *(^)(BOOL secureTextEntry))fdSecureTextEntry{
    return ^(BOOL secureTextEntry){
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

- (__kindof UITextField *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (__kindof UITextField *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
