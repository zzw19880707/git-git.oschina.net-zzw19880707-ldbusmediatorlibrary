//
//  GLXModuleFileManagerServicePtr.h
//  Pods
//
//  Created by zhengzw on 2016/11/4.
//
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "GLXModuleFileManagerVOPrt.h"
@protocol GLXModuleFileManagerServicePrt <NSObject>
-(id<GLXModuleFileManagerVOPrt>)moduleFileManager_selectPhotoFromViewController:(UIViewController *)viewController;

@end
