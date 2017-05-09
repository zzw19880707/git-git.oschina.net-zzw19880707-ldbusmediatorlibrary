//
//  GLXPopMenuVO.h
//  glksChat
//
//  Created by 刘洪伟 on 16/8/30.
//  Copyright © 2016年 北京盖勒克丝环保科技有限公司. All rights reserved.
//

@interface GLXPopMenuVO : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *imageUrl;
@property(nonatomic, strong) void (^handler)(void) ;//点击cell的处理函数
@end
