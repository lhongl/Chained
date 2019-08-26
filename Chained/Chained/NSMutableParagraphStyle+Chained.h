//
//  NSMutableParagraphStyle+Chained.h
//  MeasurementDemo
//
//  Created by 飞渡 on 2019/7/9.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableParagraphStyle (Chained)

+ (__kindof NSMutableParagraphStyle *)initParagraphStyle;

/**
 字体的行间距
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat lineSpacing))fdLineSpacing;

/**
 首行缩进
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat firstLineHeadIndent))fdFirstLineHeadIndent;

/**
 整体缩进(首行除外）
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat headIndent))fdHeadIndent;

/**
 
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat tailIndent))fdTailIndent;

/**
 最低行高
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat minimumLineHeight))fdMinimumLineHeight;

/**
 最大行高
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat maximumLineHeight))fdMaximumLineHeight;

/**
 段与段之间的间距
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat paragraphSpacing))fdParagraphSpacing;

/**
 段首行空白空间
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat paragraphSpacingBefore))fdParagraphSpacingBefore;

/**
 
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat lineHeightMultiple))fdLineHeightMultiple;

/**
 连字属性 在iOS，唯一支持的值分别为0和1
 */
- (__kindof NSMutableParagraphStyle *(^)(CGFloat hyphenationFactor))fdHyphenationFactor;

/**
 从左到右的书写方向
 */
- (__kindof NSMutableParagraphStyle *(^)(NSWritingDirection baseWritingDirection))fdBaseWritingDirection;

/**
 结尾部分的内容以……方式省略
 */
- (__kindof NSMutableParagraphStyle *(^)(NSLineBreakMode lineBreakMode))fdLineBreakMode;

/**
 （两端对齐的）文本对齐方式：（左，中，右，两端对齐，自然）
 */
- (__kindof NSMutableParagraphStyle *(^)(NSTextAlignment alignment))fdalignment;
@end

NS_ASSUME_NONNULL_END
