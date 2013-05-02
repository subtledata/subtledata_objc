#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewConnection : NIKSwaggerObject

@property(nonatomic) NSNumber* latitude;
@property(nonatomic) NSNumber* cover_number;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* longitude;
@property(nonatomic) NSNumber* device_id;
- (id) latitude: (NSNumber*) latitude
     cover_number: (NSNumber*) cover_number
     user_id: (NSNumber*) user_id
     longitude: (NSNumber*) longitude
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

