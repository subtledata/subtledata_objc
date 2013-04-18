#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewUser : NIKSwaggerObject

@property(nonatomic) NSString* first_name;
@property(nonatomic) NSString* last_name;
@property(nonatomic) NSString* middle_name;
@property(nonatomic) NSString* dob;
@property(nonatomic) NSString* email_address;
@property(nonatomic) NSNumber* longitude;
@property(nonatomic) NSString* cell_phone;
@property(nonatomic) NSNumber* latitude;
@property(nonatomic) NSString* password;
@property(nonatomic) NSString* user_name;
@property(nonatomic) NSString* device_id;
- (id) first_name: (NSString*) first_name
     last_name: (NSString*) last_name
     middle_name: (NSString*) middle_name
     dob: (NSString*) dob
     email_address: (NSString*) email_address
     longitude: (NSNumber*) longitude
     cell_phone: (NSString*) cell_phone
     latitude: (NSNumber*) latitude
     password: (NSString*) password
     user_name: (NSString*) user_name
     device_id: (NSString*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

