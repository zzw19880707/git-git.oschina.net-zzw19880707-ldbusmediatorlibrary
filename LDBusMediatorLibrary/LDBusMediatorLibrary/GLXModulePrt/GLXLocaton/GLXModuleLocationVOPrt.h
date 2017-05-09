//
//  GLXModuleLocationVOPrt.h
//  Pods
//
//  Created by zhengzw on 2016/11/3.
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol GLXModuleLocationVOPrt <NSObject>

//坐标
@property (nonatomic , readwrite , assign) CLLocationCoordinate2D coordinate;
//地点名
@property (nonatomic , readwrite , strong) NSString *placeName;

@end
