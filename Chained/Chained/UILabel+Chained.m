//
//  UILabel+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UILabel+Chained.h"

@implementation UILabel (Chained)

+ (UILabel *(^)(void))initLabel{
    
    return ^(void){
        
        return [[UILabel alloc] init];
    };
}

+ (UILabel *(^)(CGRect rect))initRectLabel{
    
    return ^(CGRect rect){
        
        return [[UILabel alloc] initWithFrame:rect];
    };
}

- (UILabel *(^)(NSString *text))fdText{
    
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *textColor))fdTextColor{
    
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}

- (UILabel *(^)(UIColor *backColor))fdBackColor{
   
    return ^(UIColor *backColor){
        self.backgroundColor = backColor;
        return self;
    };
}

- (UILabel *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment textAlignment))fdTextAlignment{
    
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel *(^)(CGFloat fontSize))fdFont{
    
    return ^(CGFloat fontSize){
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UILabel *(^)(BOOL enabled))fdEnabled{
    
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UILabel *(^)(BOOL userInteractionEnabled))fdUserInteractionEnabled{
    
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UILabel *(^)(NSInteger numberOfLines))fdNumberOfLines{
    
    return ^(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *attributedText))fdAttributedText{
    
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (UILabel *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
