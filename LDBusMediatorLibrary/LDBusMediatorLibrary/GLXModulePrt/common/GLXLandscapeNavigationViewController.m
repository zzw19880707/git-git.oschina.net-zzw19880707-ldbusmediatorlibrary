//
//  GLXLandscapeNavigationViewController.m
//  glksChat
//
//  Created by zhengzw on 2016/10/7.
//  Copyright © 2016年 北京盖勒克丝环保科技有限公司. All rights reserved.
//

#import "GLXLandscapeNavigationViewController.h"

@interface GLXLandscapeNavigationViewController ()

@end

@implementation GLXLandscapeNavigationViewController


//是否支持旋转
- (BOOL)shouldAutorotate
{
    return [self.topViewController shouldAutorotate];
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return [self.topViewController supportedInterfaceOrientations];
}
////开始屏幕的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

@end
