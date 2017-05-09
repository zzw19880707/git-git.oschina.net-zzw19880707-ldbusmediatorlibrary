//
//  NSString+Custom.m
//  justObjectC
//
//  Created by 刘洪伟 on 15/10/3.
//  Copyright © 2015年 刘洪伟. All rights reserved.
//

#import "NSString+Custom.h"
//#import "UIColor+Custom.h"
//#import "MLEmojiLabel.h"
//
@implementation NSString(Custom)
//
//-(CGFloat)heightOfRectForWidth:(CGFloat)width fontSize:(CGFloat)fontSize {
//
//    MLEmojiLabel *lb = [MLEmojiLabel new];
//    lb.font = [UIFont systemFontOfSize:fontSize];
//    lb.text = self;
//    lb.customEmojiRegex = @"\\#[a-zA-Z0-9\\u4e00-\\u9fa5]+\\#";
//    lb.customEmojiBundleName = @"Emoji_Expression";
//    lb.customEmojiPlistName = @"expressionImageCode_custom";
//    CGSize textSize = [lb preferredSizeWithMaxWidth:width];
//    CGFloat textHeight = textSize.height;
//
//    return textHeight + 5;
//}
//
///**
// *  获得文字在指定高度和字体下的宽度值
// *
// *  @param height   高度
// *  @param fontSize 字体大小
// *
// *  @return
// */
//-(CGFloat)widthOfRectForHeight:(CGFloat)height fontSize:(CGFloat)fontSize {
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
//    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
//    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize], NSParagraphStyleAttributeName:paragraphStyle.copy};
//    
//    CGSize textSize = [self boundingRectWithSize:CGSizeMake(MAX_CANON, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
//    
//    CGFloat textWidth = textSize.width;
//    
//    return textWidth;
//}
//
///**
// *  判断字符串是否为url
// *
// *  @return
// */
//- (BOOL)isURL {
//    if (!self) {
//        return NO;
//    }
//    
//    NSString *pattern = @"^(http|https)://.*?$(net|com|.com.cn|org|me|)";
//    
//    NSPredicate *urlPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
//    
//    return [urlPredicate evaluateWithObject:self];
//}
//
///**
// *  判断字符串非空
// *
// *  @return 非空：Yes。空或者nil：NO
// */
//- (BOOL)isNotEmpty {
//    if (self) {
//        NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
//        NSString *trimSring = [self stringByTrimmingCharactersInSet:set];
//        if ([trimSring isEqualToString:@""]) {
//            return NO;
//        } else {
//            return YES;
//        }
//    } else {
//        return NO;
//    }
//}
//
///**
// *  获取文件后缀名
// *
// *  @return 后缀名
// */
//- (NSString *)suffixForFile {
//    return [self componentsSeparatedByString:@"."].lastObject;
//}
//
///**
// *  设置字符串颜色
// *
// *  @param originStr
// *  @param searchStr
// *
// *  @return
// */
//+ (NSMutableAttributedString *)configTextColorWithOriginStr:(NSString *)originStr searchStr:(NSString *)searchStr
//{
//    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:originStr];;
//    if(searchStr.length)
//    {
//        NSRange  range = [originStr rangeOfString:searchStr];
//        [attributedString addAttribute:NSForegroundColorAttributeName
//                                 value:[UIColor fetchThemeDarkGreenColor]
//                                 range:range];
//    }
//    return attributedString;
//}
//
/**
 *  json字符串转换成NSDictionary
 *
 *  @return
 */
-(NSDictionary *)toDictionary {
    NSData *JSONData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableLeaves error:nil];
    return responseJSON;
}

@end
