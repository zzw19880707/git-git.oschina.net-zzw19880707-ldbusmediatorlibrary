
Pod::Spec.new do |s|
  s.name             = 'LDBusMediatorLibrary'
  s.version          = '0.1.2'
  s.summary          = 'Bus中间件，用于URL导航和服务调用'

  s.description      = '通过BusMediator＋connector进行业务组件的组件化通信，主要完成URL页面跳转，以及服务调用'

  s.homepage         = 'https://192.168.1.26/svn/chat_ios/trunk/modules/LDBusMediatorLibrary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zzw19880707' => 'zzw414851474@qq.com' }
  s.source           = { :svn => 'https://192.168.1.26/svn/chat_ios/trunk/modules/LDBusMediatorLibrary'}
  s.ios.deployment_target = '8.0'

  s.public_header_files =   'LDBusMediatorLibrary/LDBusConnectorPrt.h',
                            'LDBusMediatorLibrary/LDBusMediator.h',
                            'LDBusMediatorLibrary/LDBusNavigator.h',
                            'LDBusMediatorLibrary/UIViewController+NavigationTip.h',
                            'LDBusMediatorLibrary/GLXModule.h',
                            'LDBusMediatorLibrary/GLXModulePrt/**/*.h',
                            'LDBusMediatorLibrary/common/*.h',
                            'LDBusMediatorLibrary/category/*.h'

  s.source_files =  'LDBusMediatorLibrary/*.{h,m}' ,
                    'LDBusMediatorLibrary/GLXModulePrt/**/*.{h,m}',
                    'LDBusMediatorLibrary/common/*.{h,m}',
                    'LDBusMediatorLibrary/category/*.{h,m}'

  s.resources    = 'LDBusMediatorLibrary/common.bundle'

#s.prefix_header_contents =    '#import <LDBusMediatorLibrary/LDBusMediator.h>',
#                                '#import <LDBusMediatorLibrary/LDBusConnectorPrt.h>',
#                                '#import <LDBusMediatorLibrary/GLXModule.h>'

  s.frameworks = 'UIKit'

end
