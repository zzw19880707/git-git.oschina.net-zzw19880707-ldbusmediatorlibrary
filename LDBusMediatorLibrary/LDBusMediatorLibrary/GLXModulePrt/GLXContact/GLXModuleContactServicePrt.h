//
//  GLXModuleContactServicePtr.h
//  Pods
//
//  Created by zhengzw on 2016/11/4.
//
//

#import <Foundation/Foundation.h>
#import "GLXModuleContactVOPrt.h"
@protocol GLXModuleContactServicePrt <NSObject>
///通过手机号，获取联系人名称
-(id<GLXModuleContactVOPrt>)moduleContact_getContactNameByPhoneNumber:(NSString *)phoneNumber;
@end
