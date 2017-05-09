

#import "NSDictionary+CustomGetMethod.h"
#import "NSDate+Custom.h"

static NSString * kDateFormatString = @"yyyyMMddHHmmss";

@implementation NSDictionary (CustomGetMethod)

- (id) safeObjectForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if ([value isEqual:[NSNull null]]) {
        return nil;
    }
    return value;
}


- (NSString *)safeDateStrForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        NSTimeInterval time = [value doubleValue] / 1000.0f;
        return [[NSDate dateWithTimeIntervalSince1970:time] stringDateWithStyle:DateStyleOfYYYYNMMYDDR];
    }
    return nil;
}

- (NSDate *) safeDateForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if ([value isKindOfClass:[NSString class]]) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = [kDateFormatString copy];
        dateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:60 * 60 * 9];
        return [dateFormatter dateFromString:value];
    }
    
    return nil;
}

- (NSTimeInterval) safeTimeIntervalForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        return [value doubleValue] / 1000.0f;
    }
    return 0;
}

- (NSInteger) safeIntegerForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        return [value integerValue];
    }
    else {
        return 0;
    }
}

- (double)safeDoubleForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        return [value doubleValue];
    }
    else {
        return 0.0;
    }
}

- (BOOL) safeBoolForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        return [value boolValue];
    } else {
        return NO;
    }
}

- (NSString *) safeNumberForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        NSInteger intValue = [[NSString stringWithFormat:@"%@", value] integerValue];
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        formatter.numberStyle = (NSNumberFormatterStyle)kCFNumberFormatterDecimalStyle;
        NSString *result =  [formatter stringFromNumber:[NSNumber numberWithInteger:intValue]];
        return result;
    }
    else {
        return 0;
    }
}

- (NSArray *)safeArrayForKey:(NSString *)aKey
{
    id value = [self objectForKey:aKey];
    if (![value isEqual:[NSNull null]]) {
        return [NSArray arrayWithArray:value];
    } else {
        return nil;
    }
}

/**
 *  json转换成字符串
 *
 *  @return json串
 */
-(NSString*)toJsonString
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    if (parseError) {
        return nil;
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
