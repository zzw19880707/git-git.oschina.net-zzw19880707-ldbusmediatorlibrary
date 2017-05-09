//
//  UIScrollView+touch.h
//
//
//  Created by 刘洪伟 on 15-4-24.
//  Copyright (c) 2015年 quickhigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(touch)
/**
 *  设置view的x，y，widht，height
 *
 */
-(CGFloat)x;
-(void)setX:(CGFloat)x;

-(CGFloat)y;
-(void)setY:(CGFloat)y;

-(CGFloat)width;
-(void)setWidth:(CGFloat)width;

-(CGFloat)height;
-(void)setHeight:(CGFloat)height;

/**
 *  设置圆角view
 *
 *  @param cornerRadius <#cornerRadius description#>
 */
- (void) setCornerRadius:(CGFloat)cornerRadius;

@end
