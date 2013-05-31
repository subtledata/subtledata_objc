#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewUser : NIKSwaggerObject

@property(nonatomic) NSString* user_guid;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* device_id;
- (id) user_guid: (NSString*) user_guid
     user_id: (NSNumber*) user_id
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

