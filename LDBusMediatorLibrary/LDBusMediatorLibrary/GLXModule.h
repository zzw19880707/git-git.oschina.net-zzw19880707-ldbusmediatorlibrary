//
//  GLXModule.h
//  Pods
//
//  Created by zhengzw on 2016/11/3.
//
//

//web壳
static NSString *const module_webview = @"productScheme://WebView";
#pragma mark -- webview
#import "GLXModuleWebViewVOPrt.h"
#import "GLXModuleWebViewServicePrt.h"


//定位
static NSString *const module_location = @"productScheme://Location";
#pragma mark -- location
#import "GLXModuleLocationVOPrt.h"
#import "GLXModuleLocationServicePrt.h"

//文件管理
static NSString *const module_filemanager = @"productScheme://FileManager";
#pragma mark -- filemanager
#import "GLXModuleFileManagerServicePrt.h"
#import "GLXModuleFileManagerVOPrt.h"

//用户信息
static NSString *const module_userInfo = @"productScheme://UserInfo";
#pragma mark -- userInfo
#import "GLXModuleUserInfoServicePrt.h"
#import "GLXModuleUserInfoVOPrt.h"

//成员
static NSString *const module_memeber = @"productScheme://Member";
#pragma mark -- member
#import "GLXModuleMemberServicePrt.h"
#import "GLXModuleMemberVOPrt.h"

//联系人
static NSString *const module_contact = @"productScheme://Contact";
#pragma mark -- contact
#import "GLXModuleContactServicePrt.h"
#import "GLXModuleContactVOPrt.h"

//网络
static NSString *const module_network = @"productScheme://Network";
#pragma mark -- contact
#import "GLXModuleNetworkServicePrt.h"
#import "GLXModuleNetworkVOPrt.h"
