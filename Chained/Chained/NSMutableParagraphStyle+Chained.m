//
//  NSMutableParagraphStyle+Chained.m
//  MeasurementDemo
//
//  Created by 飞渡 on 2019/7/9.
//  Copyright © 2019 freedo. All rights reserved.
//

#import "NSMutableParagraphStyle+Chained.h"

@implementation NSMutableParagraphStyle (Chained)

+ (NSMutableParagraphStyle *(^)(void))initParagraphStyle{
    return ^(){
        return [[self alloc] init];
    };
}


/**
 首行缩进
 */
- (NSMutableParagraphStyle *(^)(CGFloat lineSpacing))fdLineSpacing{
    return ^(CGFloat lineSpacing){
        self.lineSpacing = lineSpacing;
        return self;
    };
}

/**
 首行缩进
 */
- (NSMutableParagraphStyle *(^)(CGFloat firstLineHeadIndent))fdFirstLineHeadIndent{
    return ^(CGFloat firstLineHeadIndent){
        self.firstLineHeadIndent = firstLineHeadIndent;
        return self;
    };
}

/**
 整体缩进(首行除外
 */
- (NSMutableParagraphStyle *(^)(CGFloat headIndent))fdHeadIndent{
    return ^(CGFloat headIndent){
        self.headIndent = headIndent;
        return self;
    };
}

/**
 
 */
- (NSMutableParagraphStyle *(^)(CGFloat tailIndent))fdTailIndent{
    return ^(CGFloat tailIndent){
        self.tailIndent = tailIndent;
        return self;
    };
}

/**
 最低行高
 */
- (NSMutableParagraphStyle *(^)(CGFloat minimumLineHeight))fdMinimumLineHeight{
    return ^(CGFloat minimumLineHeight){
        self.minimumLineHeight = minimumLineHeight;
        return self;
    };
}

/**
 最大行高
 */
- (NSMutableParagraphStyle *(^)(CGFloat maximumLineHeight))fdMaximumLineHeight{
    return ^(CGFloat maximumLineHeight){
        self.maximumLineHeight = maximumLineHeight;
        return self;
    };
}

/**
 段与段之间的间距
 */
- (NSMutableParagraphStyle *(^)(CGFloat paragraphSpacing))fdParagraphSpacing{
    return ^(CGFloat paragraphSpacing){
        self.paragraphSpacing = paragraphSpacing;
        return self;
    };
}

/**
 段首行空白空间
 */
- (NSMutableParagraphStyle *(^)(CGFloat paragraphSpacingBefore))fdParagraphSpacingBefore{
    return ^(CGFloat paragraphSpacingBefore){
        self.paragraphSpacingBefore = paragraphSpacingBefore;
        return self;
    };
}

/**
 
 */
- (NSMutableParagraphStyle *(^)(CGFloat lineHeightMultiple))fdLineHeightMultiple{
    return ^(CGFloat lineHeightMultiple){
        self.lineHeightMultiple = lineHeightMultiple;
        return self;
    };
}

/**
 连字属性 在iOS，唯一支持的值分别为0和1
 */
- (NSMutableParagraphStyle *(^)(CGFloat hyphenationFactor))fdHyphenationFactor{
    return ^(CGFloat hyphenationFactor){
        self.hyphenationFactor = hyphenationFactor;
        return self;
    };
}

/**
 从左到右的书写方向
 */
- (NSMutableParagraphStyle *(^)(NSWritingDirection baseWritingDirection))fdBaseWritingDirection{
    return ^(NSWritingDirection baseWritingDirection){
        self.baseWritingDirection = baseWritingDirection;
        return self;
    };
}

/**
 结尾部分的内容以……方式省略
 */
- (NSMutableParagraphStyle *(^)(NSLineBreakMode lineBreakMode))fdLineBreakMode{
    return ^(NSLineBreakMode lineBreakMode){
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

/**
 （两端对齐的）文本对齐方式：（左，中，右，两端对齐，自然）
 */
- (NSMutableParagraphStyle *(^)(NSTextAlignment alignment))fdalignment{
    return ^(NSTextAlignment alignment){
        self.alignment = alignment;
        return self;
    };
}

@end
