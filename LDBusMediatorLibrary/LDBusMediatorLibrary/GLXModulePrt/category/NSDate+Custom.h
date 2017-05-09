

#import <Foundation/Foundation.h>


typedef enum {
    DateStyleOfYYYYMMDD = 0,
    DateStyleOfYYYYNMMYDDR = 1,
    DateStyleOfYYYYHMMHDD = 2,
    DateStyleOfMYDR = 3,
    DateStyleOfYYYYNMY = 4,
    DateStyleOfHHMM = 5,
    DateStyleFull, //@"yyyy-MM-dd HH:mm:ss"
    
}YTDateStyle;

@interface NSDate (Custom)
/**
 *  转换成字符串
 *
 *  @param dateStyle 日期格式
 *
 *  @return 转换后的字符串
 */
- (NSString *)stringDateWithStyle:(YTDateStyle)dateStyle;
/**
 *  判断日期是否晚于指定日期
 *
 *  @param date 比较的时间
 *
 *  @return 晚于date 返回YES，否则NO
 */
- (BOOL)isTimeLaterThan:(NSDate *)date;

/**
 *  返回当前时间的时间戳
 *
 *  @return 当前时间的数值表示
 */
+(NSNumber *)timestamp;

/**
 *  根据date返回时间戳
 */
+ (NSNumber *)timeStampWithDate:(NSDate *)date;

/**
 *  根据时间戳返回date
 */
+ (NSDate *)dateWithTimeStamp:(NSNumber *)timeStamp;

/**
 *  时间转换
 *
 *  @param timeList 时间数组
 *
 *  @return 返回转换完成的时间
 */
+ (NSMutableArray *)timeStrWithtimeList:(NSArray *)timeList;

/**
 *  判断时间是否在今天
 *
 *  @param time
 *
 *  @return
 */
+ (BOOL)isTodayWithTime:(long long)time;

/**
 *  时间转换成规定字符串格式
 *
 *  @param time
 *
 *  @return 
 */
+ (NSString *)formatWithTime:(long long)time;

@end
