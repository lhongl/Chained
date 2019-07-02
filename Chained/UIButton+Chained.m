//
//  UIButton+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UIButton+Chained.h"
#import <objc/runtime.h>

static const NSString *buttonActionKey = @"buttonActionKey";

typedef void(^ButtonAction)(UIButton *button);

@interface UIButton ()

@property (nonatomic, copy)ButtonAction action;

@end
@implementation UIButton (Chained)

+ (UIButton *(^)(UIButtonType buttonType))initButton{
    
    return ^(UIButtonType buttonType){
        
        return [UIButton buttonWithType:buttonType];
    };
}

- (UIButton *(^)(CGRect rect))fdRect{
    
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}
                
- (UIButton *(^)(NSString *title,UIControlState state))fdTitle{
    return ^(NSString *title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *color))fdBackColor{
    
    return ^(UIColor *color){
        self.backgroundColor = color;
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


- (void)fdAddTargetAction:(UIControlEvents)controlEvents buttonAction:(void(^)(UIButton *button))action{
    self.action  = action;
    [self addTarget:self action:@selector(buttonAction:) forControlEvents:controlEvents];
}

- (void)buttonAction:(UIButton *)button{
    if (self.action) {
        self.action(button);
    }
}

- (void)setButtonAction:(void (^)(UIButton *))buttonAction{
    
    objc_setAssociatedObject(self, &buttonActionKey, buttonAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (ButtonAction)action{
    
    return objc_getAssociatedObject(self, &buttonActionKey);
}

@end
