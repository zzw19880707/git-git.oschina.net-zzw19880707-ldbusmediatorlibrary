

#import <Foundation/Foundation.h>

@interface NSDictionary (CustomGetMethod)

- (id)safeObjectForKey:(NSString *)aKey;

// convert time (格式:"yyyy年mm月dd日") to NSDate
// nil for default
- (NSString *)safeDateStrForKey:(NSString *)aKey;

// convert time (格式:"yyyymmddhhmmss") to NSDate
// nil for default
- (NSDate *)safeDateForKey:(NSString *)aKey;

// covert string to integer
// 0 for default
- (NSInteger)safeIntegerForKey:(NSString *)aKey;

// covert string to double
// 0.0 for default
- (double)safeDoubleForKey:(NSString *)aKey;

// covert string to BOOL
// NO for default
- (BOOL)safeBoolForKey:(NSString *)aKey;

// covert string to NSTimeInterval
// 0 for default
- (NSTimeInterval)safeTimeIntervalForKey:(NSString *)aKey;


- (NSString *) safeNumberForKey:(NSString *)aKey;


- (NSArray *)safeArrayForKey:(NSString *)aKey;
/**
 *  json转换成字符串
 *
 *  @return json串
 */
-(NSString*)toJsonString;

@end
