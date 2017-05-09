//
//  GLXPopMenuView.h
//  glksChat
//
//  Created by 刘洪伟 on 16/8/30.
//  Copyright © 2016年 北京盖勒克丝环保科技有限公司. All rights reserved.
//

#import  <UIKit/UIKit.h>
#import "GLXPopMenuVO.h"



@interface GLXPopMenuView : UIView

@property (nonatomic, strong) NSArray *itemArray;//菜单项数组

/**
 *  初始化
 *
 *  @param array     GLXPopMenuVO数组，作为cell的datasource
 *  @param frame     视图的frame，一般为覆盖整个视图
 *  @param menuWidth 菜单宽度，根据文字多少调整
 *
 *  @return <#return value description#>
 */
-(instancetype)initWithArray:(NSArray *)array frame:(CGRect)frame menuWidth:(CGFloat)menuWidth;

/**
 *  切换视图显示与隐藏
 */
-(void)toggle;

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
@end
