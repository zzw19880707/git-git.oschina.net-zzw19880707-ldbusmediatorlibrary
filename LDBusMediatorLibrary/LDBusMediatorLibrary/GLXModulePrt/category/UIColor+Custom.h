//
//  UIColor+Custom.h
//
//
//  Created by 刘洪伟 on 15/9/16.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (Custom)

/**
 *  主题色：黑（2f2e34）
 */
+(UIColor *)fetchThemeColor;

/**
 *  主题色：浅绿（8be596）
 */
+(UIColor *)fetchThemeLightGreenColor;

/**
 *  主题色：深绿（46b453）
 */
+(UIColor *)fetchThemeDarkGreenColor;

#pragma mark - 字体主色调

/**
 *  字体色：黑（333333）
 */
+(UIColor *)fetchThemeFontColor;

/**
 *  字体色：深灰（666666）
 */
+(UIColor *)fetchThemeGrayColor;

/**
 *  字体色：浅灰（999999）
 */
+(UIColor *)fetchThemeLightGrayColor;

/**
 *  不可用颜色（系统浅灰）
 */
+(UIColor *)fetchDisableColor;

/**
 *  颜色转换
 *
 *  @param str
 */
+(UIColor*)getcolor:(NSString *)str;

/**
 *  返回view的背景颜色
 */
+(UIColor *)bgViewColor;

@end
