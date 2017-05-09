//
//  NSString+Custom.h
//  justObjectC
//
//  Created by 刘洪伟 on 15/10/3.
//  Copyright © 2015年 刘洪伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString(Custom)


/**
 *  获得文字在指定宽度和字体下的高度值
 *
 *  @param width    指定宽度
 *  @param fontSize 字体大小
 *
 *  @return 文本的高度
 */
-(CGFloat)heightOfRectForWidth:(CGFloat)width fontSize:(CGFloat)fontSize;

/**
 *  获得文字在指定高度和字体下的宽度值
 *
 *  @param height   高度
 *  @param fontSize 字体大小
 *
 *  @return <#return value description#>
 */
-(CGFloat)widthOfRectForHeight:(CGFloat)height fontSize:(CGFloat)fontSize;

/**
 *  判断字符串是否为url
 *
 *  @return
 */
- (BOOL)isURL;

/**
 *  判断字符串非空
 *
 *  @return 非空：Yes。空或者nil：NO
 */
- (BOOL)isNotEmpty;

/**
 *  获取文件后缀名
 *
 *  @return 后缀名
 */
- (NSString *)suffixForFile;

/**
 *  设置字符串颜色
 *
 *  @param originStr
 *  @param searchStr
 *
 *  @return
 */
+ (NSMutableAttributedString *)configTextColorWithOriginStr:(NSString *)originStr searchStr:(NSString *)searchStr;
/**
 *  json字符串转换成NSDictionary
 *
 *  @return
 */
-(NSDictionary *)toDictionary;
@end
