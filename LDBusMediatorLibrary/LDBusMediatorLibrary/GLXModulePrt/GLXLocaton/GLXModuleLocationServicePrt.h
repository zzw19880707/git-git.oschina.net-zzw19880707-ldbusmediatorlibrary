//
//  GLXModuleLocationServicePrt.h
//  Pods
//
//  Created by zhengzw on 2016/11/3.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "GLXModuleLocationVOPrt.h"
#import <CoreLocation/CoreLocation.h>

@protocol GLXModuleLocationServicePrt <NSObject>


@optional

//服务接口2: 提供外部组件一个协议化对象
//获取当前位置
-(id<GLXModuleLocationVOPrt>)moduleLocation_getCurrentLocation;
///通过坐标编译位置
-(id<GLXModuleLocationVOPrt>)moduleLocation_reverseGeocode:(CLLocationCoordinate2D) coordinate;
//用户选取地点
-(id<GLXModuleLocationVOPrt>)moduleLocation_getLocation:(UIViewController *)rootController;

@end
