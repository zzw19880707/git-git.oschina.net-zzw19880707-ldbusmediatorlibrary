//
//  GLXPopMenuView.m
//  glksChat
//
//  Created by 刘洪伟 on 16/8/30.
//  Copyright © 2016年 北京盖勒克丝环保科技有限公司. All rights reserved.
//

#import "GLXPopMenuView.h"
#import "UIView+Custom.h"
#import "UIColor+Custom.h"

@interface GLXPopMenuView ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) UITableView *tableView;
@end

@implementation GLXPopMenuView

-(instancetype)initWithArray:(NSArray *)array frame:(CGRect)frame menuWidth:(CGFloat)menuWidth {
    self = [super initWithFrame:frame];
    if (self) {
        //设置背景view
        UIView *backView = [[UIView alloc] initWithFrame:frame];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [backView addGestureRecognizer:tap];
        [self addSubview:backView];
        //设置箭头
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSURL *url = [bundle URLForResource:@"common" withExtension:@"bundle"];
        NSBundle *fileBundle = [NSBundle bundleWithURL:url];
        UIImage *arrowImage = [UIImage imageWithContentsOfFile:[fileBundle pathForResource:@"pup-menu-arrow" ofType:@"png"]];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:arrowImage];
        CGFloat imageX = self.frame.size.width - 30;
        imageView.frame = CGRectMake(imageX, 0, 13, 13);
        [self addSubview:imageView];
        //设置tableview
        CGFloat tableHeight = array.count * 44;
        CGFloat tableX = self.frame.size.width - menuWidth - 2;
        CGRect tableRect = CGRectMake(tableX, 13, menuWidth, tableHeight);
        self.tableView = [[UITableView alloc] initWithFrame:tableRect];
        self.tableView.backgroundColor = [UIColor fetchThemeColor];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.tableView setCornerRadius:5];
        [self addSubview:self.tableView];
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.itemArray = [ NSArray arrayWithArray:array];
        [self.tableView reloadData];
        
    }
    return self;
}

/**
 *  点击背景隐藏视图
 */
-(void)tap{
    [self toggle];
}

/**
 *  切换视图显示与隐藏
 */
-(void)toggle {
    [UIView animateWithDuration:0.25 animations:^{
        self.hidden = !self.hidden;
    } completion:nil];
}

-(void)setItemArray:(NSArray *)itemArray{
    _itemArray = itemArray;
    NSInteger count = itemArray.count ;
    self.tableView.scrollEnabled = count > 7 ? YES : NO;
    self.tableView.height = count > 7 ? 44 * 7 : count * 44;
    [self.tableView reloadData];
}

#pragma mark -- tableview delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //首页
    return [self configPopMenuCell:tableView indexPath:indexPath];

}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    GLXPopMenuVO *vo = self.itemArray[indexPath.row];
    if (vo.handler) {
        vo.handler();
    }
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - config cell

-(UITableViewCell *) configPopMenuCell :(UITableView *)tableView indexPath :(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    GLXPopMenuVO *vo = self.itemArray[indexPath.row];
    cell.backgroundColor = [UIColor fetchThemeColor];
    cell.textLabel.text = vo.name;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.imageView.image = [UIImage imageNamed:vo.imageUrl];
    return cell;
}

@end
