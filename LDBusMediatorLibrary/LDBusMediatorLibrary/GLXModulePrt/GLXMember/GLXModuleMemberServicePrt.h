//
//  GLXModuleMemberServicePtr.h
//  Pods
//
//  Created by zhengzw on 2016/11/4.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "GLXModuleMemberVOPrt.h"
@protocol GLXModuleMemberServicePrt <NSObject>

//通过团队号获取成员
-(id<GLXModuleMemberVOPrt>)moduleMember_getEmployeeMemberByTeamId:(NSString *)teamId  rootViewController:(UIViewController *)controller;

@end
