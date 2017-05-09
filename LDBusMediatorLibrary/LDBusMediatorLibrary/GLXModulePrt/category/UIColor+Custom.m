//
//  UIColor+Custom.m
//
//
//  Created by 刘洪伟 on 15/9/16.
//
//

#import "UIColor+Custom.h"

@implementation UIColor (Custom)

#pragma mark - 背景主色调

/**
 *  主题色：黑（2f2e34）
 */
+(UIColor *)fetchThemeColor {
    return  [self getcolor:@"2f2e34"];
//     return  [self getcolor:@"207cd0"];//工程项目
}

/**
 *  主题色：浅绿（8be596）
 */
+(UIColor *)fetchThemeLightGreenColor{
    return  [self getcolor:@"8be596"];
}

/**
 *  主题色：深绿（46b453）
 */
+(UIColor *)fetchThemeDarkGreenColor{
    return  [self getcolor:@"46b453"];
}

#pragma mark - 字体主色调

/**
 *  字体色：黑（333333）
 */
+(UIColor *)fetchThemeFontColor {
    return  [self getcolor:@"333333"];
}

/**
 *  字体色：深灰（666666）
 */
+(UIColor *)fetchThemeGrayColor {
    return  [self getcolor:@"666666"];
}

/**
 *  字体色：浅灰（999999）
 */
+(UIColor *)fetchThemeLightGrayColor {
    return  [self getcolor:@"999999"];
}

/**
 *  不可用颜色（系统浅灰）
 */
+(UIColor *)fetchDisableColor {
    return [UIColor lightGrayColor];
}

+(UIColor*)getcolor:(NSString *)str{
    long r=strtoul([[str substringWithRange:NSMakeRange(0, 2)] UTF8String], 0, 16);
    long g=strtoul([[str substringWithRange:NSMakeRange(2, 2)] UTF8String], 0, 16);
    long b=strtoul([[str substringWithRange:NSMakeRange(4, 2)] UTF8String], 0, 16);
    UIColor *color=[UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
    return color;
}

+(UIColor *)bgViewColor
{
    return [self getcolor:@"f4f4f4"];
}

@end
