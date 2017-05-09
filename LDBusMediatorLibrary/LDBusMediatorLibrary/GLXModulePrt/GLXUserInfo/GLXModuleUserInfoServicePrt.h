//
//  GLXModuleUserInfoServicePtr.h
//  Pods
//
//  Created by zhengzw on 2016/11/4.
//
//

#import <Foundation/Foundation.h>
#import "GLXModuleUserInfoVOPrt.h"
@protocol GLXModuleUserInfoServicePtr <NSObject>
///获取用户token
-(id<GLXModuleUserInfoVOPtr>)moduleUserInfo_getUserToken;


@end
