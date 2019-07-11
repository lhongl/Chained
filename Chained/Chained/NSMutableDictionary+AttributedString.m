//
//  NSMutableDictionary+AttributedString.m
//  MeasurementDemo
//
//  Created by 飞渡 on 2019/7/9.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "NSMutableDictionary+AttributedString.h"

@implementation NSMutableDictionary (AttributedString)

+ (NSMutableDictionary <NSAttributedStringKey, id> *(^)(void))initAttributeDictionary{
    
    return ^(void) {
        NSMutableDictionary <NSAttributedStringKey, id> *attributeDic = [[self alloc] init];

        return attributeDic;
    };
}

- (NSMutableDictionary *(^)(CGFloat fontSize))fdTextFont{
    
    return ^(CGFloat fontSize){
        [self setValue:[UIFont systemFontOfSize:fontSize] forKey:NSFontAttributeName ];
        return self;
    };
}

- (NSMutableDictionary *(^)(UIColor *color))fdTextColor{
    return ^(UIColor *color){
        [self setValue:color forKey:NSForegroundColorAttributeName ];
        return self;
    };
}

- (NSMutableDictionary *(^)(NSMutableParagraphStyle *style))fdParagraphStyle{
    return ^(NSMutableParagraphStyle *style){
        [self setValue:style forKey:NSParagraphStyleAttributeName];
        return self;
    };
}


- (NSMutableDictionary *(^)(UIColor *color))fdBackgroundColor{
    return ^(UIColor *color){
        [self setValue:textColor forKey:NSBackgroundColorAttributeName ];
        return self;
    };
}


//连字符：ios中有0和1两个值；0表示没有连字符，而1是默认的连字符
- (NSMutableDictionary *(^)(BOOL isLigature))fdLigature{
    
    return ^(BOOL isLigature){
        [self setValue:@(isLigature) forKey:NSLigatureAttributeName ];
        return self;
    };
}

//字符间距：默认0（禁用）
- (NSMutableDictionary *(^)(NSNumber *kern))fdKern{
    return ^(NSNumber *kern){
        [self setValue:kern forKey:NSKernAttributeName];
        return self;
    };
}

//删除线：默认0（无删除线）
- (NSMutableDictionary *(^)(NSUnderlineStyle strikethroughStyle))fdStrikethroughStyle{
    return ^(NSUnderlineStyle strikethroughStyle){
        [self setValue:@(strikethroughStyle) forKey:NSStrikethroughStyleAttributeName];
        return self;
    };
}

//下划线：默认0（无下划线）
- (NSMutableDictionary *(^)(NSUnderlineStyle underlineStyle))fdUnderlineStyle{
    return ^(NSUnderlineStyle underlineStyle){
        [self setValue:@(underlineStyle) forKey:NSUnderlineStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(UIColor *color))fdStrikethroughColor{
    return ^(UIColor *color){
        [self setValue:color forKey:NSStrikethroughColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(UIColor *color))fdUnderlineColor{
    return ^(UIColor *color){
        [self setValue:color forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(UIColor *color))fdStrokeColor{
    return ^(UIColor *color){
        [self setValue:color forKey:NSStrokeColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(NSNumber *width))fdStrokeWidth{
    return ^(NSNumber *width){
        [self setValue:width forKey:NSStrokeWidthAttributeName];
        return self;
    };
}
@end
