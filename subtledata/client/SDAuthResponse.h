#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDAuthResponse : NIKSwaggerObject

@property(nonatomic) NSNumber* device_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSString* result;
@property(nonatomic) NSNumber* success;
@property(nonatomic) NSString* error;
- (id) device_id: (NSNumber*) device_id
     user_id: (NSNumber*) user_id
     result: (NSString*) result
     success: (NSNumber*) success
     error: (NSString*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

