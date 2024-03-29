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

typedef void(^TapAction)(UITapGestureRecognizer *tapgest);

@interface UIView ()

@property (nonatomic, copy) TapAction tapGest;

@end
@implementation UIView (Chained)

+ (__kindof UIView *)initView{
    
    return [[self alloc] init];
}

+ (__kindof UIView *(^)(CGRect rect))initRectView{
    
    return ^(CGRect rect){
        
        return [[self alloc] initWithFrame:rect];
    };
}

- (__kindof UIView *(^)(CGRect rect))fdRect{
    UIView *(^addFrame)(CGRect) = ^(CGRect rect){
        self.frame = rect;
        return self;
    };
    return addFrame;
}

- (__kindof UIView *(^)(UIColor *color))fdBackColor{
   
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (__kindof UIView *(^)(UIView *subView))fdAddSubView{
    
    return ^(UIView *subView){
        [self addSubview:subView];
        return self;
    };
}

- (__kindof UIView *(^)(CGFloat radius))fdRadius{
    return ^(CGFloat radius){
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}

- (__kindof UIView *(^)(CGFloat width, UIColor *color,CGFloat radius))fdRadiusOrBorder{
    return ^(CGFloat width, UIColor *color,CGFloat radius){
        [self.layer setBorderWidth:width];
        [self.layer setBorderColor:color.CGColor];
        [self.layer setCornerRadius:radius];
        [self.layer setMasksToBounds:YES];
        return self;
    };
}


- (__kindof UIView *(^)(SEL action))fdAddTagerAction{
    return ^(SEL action){
        UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:action];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tapGest];
        return self;
    };
}


- (void)fdAddTargetAction:(void(^)(UITapGestureRecognizer *TapGest))action{
    self.tapGest =  action;
    UITapGestureRecognizer *tapGest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestAction:)];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tapGest];
}

- (void)tapGestAction:(UITapGestureRecognizer *)tapGest{
    if (self.tapGest) {
        self.tapGest(tapGest);
    }
}

- (void)setTapGest:(TapAction)tapGest{
    
     objc_setAssociatedObject(self, &tapGestKey, tapGest, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TapAction)tapGest{
    
    return objc_getAssociatedObject(self, &tapGestKey);
}


@end
