//
//  NSMutableDictionary+AttributedString.h
//  MeasurementDemo
//
//  Created by 飞渡 on 2019/7/9.
//  Copyright © 2019 freedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (AttributedString)

+ (NSMutableDictionary <NSAttributedStringKey, id>*(^)(void))initAttributeDictionary ;

- (NSMutableDictionary *(^)(CGFloat fontSize))fdTextFont;

- (NSMutableDictionary *(^)(UIColor *textColor))fdTextColor;

- (NSMutableDictionary *(^)(UIColor *textColor))fdBackgroundColor;

//样式
- (NSMutableDictionary *(^)(NSMutableParagraphStyle *style))fdParagraphStyle;

//连字符：ios中有0和1两个值；0表示没有连字符，而1是默认的连字符
- (NSMutableDictionary *(^)(BOOL isLigature))fdLigature;

//字符间距：默认0（禁用）
- (NSMutableDictionary *(^)(NSNumber *kern))fdKern;

//删除线：默认0（无删除线）
- (NSMutableDictionary *(^)(NSUnderlineStyle strikethroughStyle))fdStrikethroughStyle;

//删除线颜色
- (NSMutableDictionary *(^)(UIColor *color))fdStrikethroughColor;

//下划线：默认0（无下划线）
- (NSMutableDictionary *(^)(NSUnderlineStyle underlineStyle))fdUnderlineStyle;

//下划线颜色
- (NSMutableDictionary *(^)(UIColor *color))fdUnderlineColor;

//描边颜色：nil（和文字的 foregroundColor一致
- (NSMutableDictionary *(^)(UIColor *color))fdStrokeColor;

//描边宽度：正值空心描边，负值实心描边，默认0(不描边)
- (NSMutableDictionary *(^)(NSNumber *width))fdStrokeWidth;

@end

NS_ASSUME_NONNULL_END
