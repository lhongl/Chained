//
//  UIView+Chained.m
//  Chained
//
//  Created by 飞渡 on 2019/7/1.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "UIView+Chained.h"
#import <objc/runtime.h>
static  NSString *tapGestKey = @"tapGestKey";

@interface UIView ()

@property (nonatomic, copy) TapAction tapGest;

@end
@implementation UIView (Chained)

+ (UIView *(^)(void))initView{
    
    return ^(void){
        
        return [[UIView alloc] init];
    };
}

+ (UIView *(^)(CGRect rect))initRectView{
    
    return ^(CGRect rect){
        
        return [[UIView alloc] initWithFrame:rect];
    };
}

- (UIView *(^)(CGRect rect))fdRect{
    UIView *(^addFrame)(CGRect) = ^(CGRect rect){
        self.frame = rect;
        return self;
    };
    return addFrame;
}

- (UIView *(^)(UIColor *color))fdBackColor{
   
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(UIView *subView))fdAddSubView{
    
    return ^(UIView *subView){
        [self addSubview:subView];
        return self;
    };
}

- (UIView *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (UIView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}


- (UIView *(^)(TapAction))fdAddTapGestureRecognizer{
    
    return ^(TapAction tapAc){
        self.tapGest =  tapAc;
        UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestAction:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tapGest];
        return self;
    };
}

- (void)tapGestAction:(UITapGestureRecognizer *)tapGest{
    if (self.tapGest) {
        self.tapGest(tapGest);
    }
}

- (void)setTapGest:(void (^)(UITapGestureRecognizer *))tapGest{
    
    objc_setAssociatedObject(self, &tapGestKey, tapGest, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TapAction)tapGest{
    
    return objc_getAssociatedObject(self, &tapGestKey);
}


@end