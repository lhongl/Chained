//
//  UIButton+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UIButton+Chained.h"

@implementation UIButton (Chained)

+ (UIButton *(^)(UIButtonType buttonType))initButton{
    
    return ^(UIButtonType buttonType){
        
        return [UIButton buttonWithType:buttonType];
    };
}
                
- (UIButton *(^)(NSString *title,UIControlState state))fdTitle{
    return ^(NSString *title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *image,UIControlState state))fdImage{
    
    return ^(UIImage *image,UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(NSString *imageName,UIControlState state))fdImageName{
    return  ^(NSString *imageName,UIControlState state){
        [self setImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *color,UIControlState state))fdTitleColor{
    return  ^(UIColor *color,UIControlState state){
           [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(NSString *imageName,UIControlState state))fdBackgroundImageName{
    return  ^(NSString *imageName,UIControlState state){
        [self setBackgroundImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *image,UIControlState state))fdBackgroundImage{
    return  ^(UIImage *image,UIControlState state){
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(CGFloat fontSize))fdFontSize{
    
    return ^(CGFloat fontSize){
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UIButton *(^)(SEL action,UIControlEvents controlEvents))addTargetAction{
    return ^(SEL action,UIControlEvents controlEvents){
        [self addTarget:self action:action forControlEvents:controlEvents];
        return self;
    };
}

- (UIButton *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (UIButton *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

@end
