//
//  GLXModuleNetworkServicePtr.h
//  Pods
//
//  Created by zhengzw on 2016/11/4.
//
//

#import <Foundation/Foundation.h>
#import "GLXModuleNetworkVOPrt.h"
@protocol GLXModuleNetworkServicePrt <NSObject>
//获取网络状态
-(id<GLXModuleNetworkVOPrt>)moduleNetwork_getNetworkInfo;
@end
