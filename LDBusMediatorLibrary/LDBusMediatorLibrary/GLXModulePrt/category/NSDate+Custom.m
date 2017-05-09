

#import "NSDate+Custom.h"

@implementation NSDate (Custom)

- (NSString *)stringDateWithStyle:(YTDateStyle)dateStyle
{
    NSString *formatter;
    switch (dateStyle) {
        case DateStyleOfMYDR:
            formatter = @"M月d日";
            break;
            
        case DateStyleOfYYYYHMMHDD:
            formatter = @"yyyy-MM-dd";
            break;
            
        case DateStyleOfYYYYMMDD:
            formatter = @"yyyyMMdd";
            break;
            
        case DateStyleOfYYYYNMMYDDR:
            formatter = @"yyyy年MM月dd日";
            break;
            
        case DateStyleOfYYYYNMY:
            formatter = @"yyyy年M月";
            break;
        case DateStyleOfHHMM:
            formatter = @"HH:mm";
            break;
        case DateStyleFull:
            formatter = @"yyyy-MM-dd HH:mm:ss";
            break;
            
        default:
            formatter = @"yyyy-MM-dd";
            break;
    }
    
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    formater.dateFormat = formatter;
    return [formater stringFromDate:self];
}

- (BOOL)isTimeLaterThan:(NSDate *)date {
    return [self compare:date] == NSOrderedDescending ? YES : NO;
}

+(NSNumber *)timestamp {
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970] * 1000;
    long long dTime = [[NSNumber numberWithDouble:time] unsignedLongLongValue]; // 将double转为long long型
    return [NSNumber numberWithLongLong:dTime];
}

+ (NSNumber *)timeStampWithDate:(NSDate *)date{
    NSTimeInterval time = [date timeIntervalSince1970] * 1000;
    long long dTime = [[NSNumber numberWithDouble:time] unsignedLongLongValue]; // 将double转为long long型
    return [NSNumber numberWithLongLong:dTime];
}

+ (NSDate *)dateWithTimeStamp:(NSNumber *)timeStamp{
    NSTimeInterval interval = [timeStamp doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
    return date;
}

+ (NSMutableArray *)timeStrWithtimeList:(NSArray *)timeList
{
    NSMutableArray *timeArray = [NSMutableArray array];
    int index = 0;
    long long firstTime = 0;
    long long timeSpace = 5 * 60 * 1000;
    if (timeList.count) {
        firstTime = [timeList[0] unsignedLongLongValue];
        [timeArray addObject:[NSDate formatWithTime:firstTime]];
        
        for (NSNumber *time in timeList) {
            if ([time unsignedLongLongValue] - firstTime > timeSpace) {
                [timeArray addObject:[NSDate formatWithTime:[time unsignedLongLongValue]]];
                firstTime = [time unsignedLongLongValue];
            } else {
                if (index == 0) {
                    
                } else {
                    [timeArray addObject:@""];
                }
                index++;
            }
        }
    }
    return timeArray;
}

+ (NSString *)formatWithTime:(long long)time
{
    // 创建日历对象
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // 将NSNumber转为long long型
    NSDate *msgDate = [NSDate dateWithTimeIntervalSince1970:time / 1000.0];
    
    // 获取当前时间
    NSDate *currentDate = [NSDate date];
    
    // 获取当前时间的年、月、日
    NSDateComponents *currentComponents = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday fromDate:currentDate];
    NSInteger currentDay = currentComponents.day;
    
    //一周以前时间
    [currentComponents setDay:currentDay - 6];
    NSDate *tempDate = [calendar dateFromComponents:currentComponents];
    NSDateComponents *tempComponents = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday fromDate:tempDate];
    NSInteger tempYear = tempComponents.year;
    NSInteger tempMonth = tempComponents.month;
    NSInteger tempDay = tempComponents.day;
    
    //消息时间
    NSDateComponents *msgComponents = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour fromDate:msgDate];
    NSInteger msgYear = msgComponents.year;
    NSInteger msgMonth = msgComponents.month;
    NSInteger msgDay = msgComponents.day;
    NSInteger msgHour = msgComponents.hour;
    
    BOOL isOutAWeek = NO;
    if (msgYear < tempYear) {
        isOutAWeek = YES;
    } else if (msgYear > tempYear) {
        isOutAWeek = NO;
    } else {
        if (msgMonth < tempMonth) {
            isOutAWeek = YES;
        } else if (msgMonth > tempMonth) {
            isOutAWeek = NO;
        } else {
            if (msgDay < tempDay) {
                isOutAWeek = YES;
            } else if (msgDay > tempDay) {
                isOutAWeek = NO;
            } else {
                isOutAWeek = NO;
            }
        }
    }
    
    BOOL isToday = [calendar isDateInToday:msgDate];
    BOOL isYesterday = [calendar isDateInYesterday:msgDate];
    
    // 进行判断
    NSDateFormatter *dateFmt = [[NSDateFormatter alloc] init];
    
    if (isToday) {
        //今天
        if (msgHour > 12) {
            dateFmt.dateFormat = @"下午h:mm   ";
        } else {
            dateFmt.dateFormat = @"上午h:mm   ";
        }
    } else if (isYesterday) {
        //昨天
        if (msgHour > 12) {
            dateFmt.dateFormat = @"昨天 下午h:mm   ";
        } else {
            dateFmt.dateFormat = @"昨天 上午h:mm   ";
        }
    } else if (!isToday && !isYesterday && !isOutAWeek) {
        //昨天以前 一周以内
        if (msgHour > 12) {
            dateFmt.dateFormat = @"EEEE 下午h:mm   ";
        } else {
            dateFmt.dateFormat = @"EEEE 上午h:mm   ";
        }
    } else {
        //一周以外
        if (msgHour > 12) {
            dateFmt.dateFormat = @"YYYY年MM月dd日 下午h:mm   ";
        } else {
            dateFmt.dateFormat = @"YYYY年MM月dd日 上午h:mm   ";
        }
    }
    
    long long nowTime = [[NSDate timestamp] unsignedLongLongValue];
    if (nowTime < time) {
        if (msgHour > 12) {
            dateFmt.dateFormat = @"YYYY年MM月dd日 下午h:mm   ";
        } else {
            dateFmt.dateFormat = @"YYYY年MM月dd日 上午h:mm   ";
        }
    }
    return [dateFmt stringFromDate:msgDate];
}

/**
 *  判断时间是否在今天
 *
 *  @param time
 *
 *  @return
 */
+ (BOOL)isTodayWithTime:(long long)time
{
    // 创建日历对象
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // 将NSNumber转为long long型
    NSDate *msgDate = [NSDate dateWithTimeIntervalSince1970:time / 1000.0];
    return [calendar isDateInToday:msgDate];
}

@end
