//
//  UIScrollView+touch.m
//  Test
//
//  Created by 刘洪伟 on 15-4-24.
//  Copyright (c) 2015年 quickhigh. All rights reserved.
//

#import "UIView+Custom.h"

@implementation UIView(Custom)

-(CGFloat)x{
    return self.frame.origin.x;
}

-(void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}

-(CGFloat)y {
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.x, y, self.width, self.height);
}

-(CGFloat)width {
    return self.frame.size.width;
}

-(void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.x, self.y, width, self.height);
}

-(CGFloat)height {
    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.x, self.y, self.width, height);
}

/**
 *  设置圆角view
 *
 *  @param cornerRadius 圆角半径
 */
- (void) setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

@end
