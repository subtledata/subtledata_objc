#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDUser : NIKSwaggerObject

@property(nonatomic) NSString* first_name;
@property(nonatomic) NSString* last_name;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* last_known_lon;
@property(nonatomic) NSString* email_address;
@property(nonatomic) NSString* dob;
@property(nonatomic) NSNumber* last_known_lat;
@property(nonatomic) NSString* middle_name;
@property(nonatomic) NSString* cell_phone;
@property(nonatomic) NSString* user_name;
- (id) first_name: (NSString*) first_name
     last_name: (NSString*) last_name
     user_id: (NSNumber*) user_id
     last_known_lon: (NSNumber*) last_known_lon
     email_address: (NSString*) email_address
     dob: (NSString*) dob
     last_known_lat: (NSNumber*) last_known_lat
     middle_name: (NSString*) middle_name
     cell_phone: (NSString*) cell_phone
     user_name: (NSString*) user_name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

