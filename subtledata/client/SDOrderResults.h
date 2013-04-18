#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDOrderResults : NIKSwaggerObject

@property(nonatomic) NSNumber* seconds_to_wait;
@property(nonatomic) NSString* ad_url;
@property(nonatomic) NSString* result;
@property(nonatomic) NSNumber* success;
- (id) seconds_to_wait: (NSNumber*) seconds_to_wait
     ad_url: (NSString*) ad_url
     result: (NSString*) result
     success: (NSNumber*) success;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

