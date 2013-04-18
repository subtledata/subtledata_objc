#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDConnectedUser : NIKSwaggerObject

@property(nonatomic) NSString* first_name;
@property(nonatomic) NSString* last_name;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSString* dob;
@property(nonatomic) NSString* email_address;
@property(nonatomic) NSNumber* cover_number;
@property(nonatomic) NSString* middle_name;
@property(nonatomic) NSString* cell_phone;
@property(nonatomic) NSString* user_name;
- (id) first_name: (NSString*) first_name
     last_name: (NSString*) last_name
     user_id: (NSNumber*) user_id
     dob: (NSString*) dob
     email_address: (NSString*) email_address
     cover_number: (NSNumber*) cover_number
     middle_name: (NSString*) middle_name
     cell_phone: (NSString*) cell_phone
     user_name: (NSString*) user_name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

