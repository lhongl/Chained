//
//  UITextField+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UITextField+Chained.h"

@implementation UITextField (Chained)

+ (UITextField *(^)(void))initTextField{
    
    return ^(void){
        
        return [[UITextField alloc] init];
    };
}

+ (UITextField *(^)(CGRect rect))initRectTextField{
    
    return ^(CGRect rect){
        
        return [[UITextField alloc] initWithFrame:rect];
    };
}

- (UITextField *(^)(NSString *text))fdText{
    
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(UIColor *textColor))fdTextColor{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (UITextField *(^)(UIColor *backColor))fdBackColor{
    
    return ^(UIColor *backColor){
        self.backgroundColor = backColor;
        return self;
    };
}

- (UITextField *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment textAlignment))fdTextAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextField *(^)(CGFloat fontSize))fdFont{
    
    return ^(CGFloat fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UITextField *(^)(BOOL enabled))fdEnabled{
    
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UITextField *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled{
    
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *attributedText))fdAttributedText{
    
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle borderStyle))fdBorderStyle{
    
    return ^(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}

- (UITextField *(^)(NSString *placeholder))fdPlaceholder{
    
    return ^(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}

- (UITextField *(^)(BOOL clearsOnBeginEditing))fdClearsOnBeginEditing{
    
    return ^(BOOL clearsOnBeginEditing){
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (UITextField *(^)(id<UITextFieldDelegate> delegate))fdDelegate{
    
    return ^(id<UITextFieldDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITextField *(^)(BOOL secureTextEntry))fdSecureTextEntry{
    return ^(BOOL secureTextEntry){
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

- (UITextField *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (UITextField *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
