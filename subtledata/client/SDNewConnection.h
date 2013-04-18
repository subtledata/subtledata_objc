#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewConnection : NIKSwaggerObject

@property(nonatomic) NSNumber* cover_number;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSString* additional_user_name;
@property(nonatomic) NSNumber* longitude;
@property(nonatomic) NSNumber* latitude;
@property(nonatomic) NSNumber* device_id;
- (id) cover_number: (NSNumber*) cover_number
     user_id: (NSNumber*) user_id
     additional_user_name: (NSString*) additional_user_name
     longitude: (NSNumber*) longitude
     latitude: (NSNumber*) latitude
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

