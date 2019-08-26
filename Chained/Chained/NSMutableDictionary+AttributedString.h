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

+ (__kindof NSMutableDictionary *)initAttributeDictionary ;

- (__kindof NSMutableDictionary *(^)(CGFloat fontSize))fdTextFont;

- (__kindof NSMutableDictionary *(^)(UIColor *textColor))fdTextColor;

- (__kindof NSMutableDictionary *(^)(UIColor *textColor))fdBackgroundColor;

//样式
- (__kindof NSMutableDictionary *(^)(NSMutableParagraphStyle *style))fdParagraphStyle;

//连字符：ios中有0和1两个值；0表示没有连字符，而1是默认的连字符
- (__kindof NSMutableDictionary *(^)(BOOL isLigature))fdLigature;

//字符间距：默认0（禁用）
- (__kindof NSMutableDictionary *(^)(NSNumber *kern))fdKern;

//删除线：默认0（无删除线）
- (__kindof NSMutableDictionary *(^)(NSUnderlineStyle strikethroughStyle))fdStrikethroughStyle;

//删除线颜色
- (__kindof NSMutableDictionary *(^)(UIColor *color))fdStrikethroughColor;

//下划线：默认0（无下划线）
- (__kindof NSMutableDictionary *(^)(NSUnderlineStyle underlineStyle))fdUnderlineStyle;

//下划线颜色
- (__kindof NSMutableDictionary *(^)(UIColor *color))fdUnderlineColor;

//描边颜色：nil（和文字的 foregroundColor一致
- (__kindof NSMutableDictionary *(^)(UIColor *color))fdStrokeColor;

//描边宽度：正值空心描边，负值实心描边，默认0(不描边)
- (__kindof NSMutableDictionary *(^)(NSNumber *width))fdStrokeWidth;

@end

NS_ASSUME_NONNULL_END
