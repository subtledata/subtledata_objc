#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDAuthUserRequest : NIKSwaggerObject

@property(nonatomic) NSString* username;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSString* device_uuid;
@property(nonatomic) NSNumber* longitude;
@property(nonatomic) NSNumber* latitude;
@property(nonatomic) NSString* password;
- (id) username: (NSString*) username
     user_id: (NSNumber*) user_id
     device_uuid: (NSString*) device_uuid
     longitude: (NSNumber*) longitude
     latitude: (NSNumber*) latitude
     password: (NSString*) password;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

