#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDEmployee : NIKSwaggerObject

@property(nonatomic) NSString* ssn;
@property(nonatomic) NSString* last_name;
@property(nonatomic) NSString* middle_name;
@property(nonatomic) NSString* emergency_contact_number;
@property(nonatomic) NSString* date_terminated;
@property(nonatomic) NSString* dob;
@property(nonatomic) NSString* alcohol_commission_number;
@property(nonatomic) NSString* alcohol_commission_expiration_date;
@property(nonatomic) NSString* first_name;
@property(nonatomic) NSNumber* is_manager;
@property(nonatomic) NSString* health_cert_number;
@property(nonatomic) NSString* mobile_phone;
@property(nonatomic) NSString* date_hired;
@property(nonatomic) NSString* home_phone;
@property(nonatomic) NSString* country_of_nationality;
@property(nonatomic) NSString* emergency_contact_name;
@property(nonatomic) NSString* health_cert_expiration_date;
@property(nonatomic) NSString* date_last_review;
@property(nonatomic) NSString* user_name;
@property(nonatomic) NSString* email;
@property(nonatomic) NSNumber* employee_id;
- (id) ssn: (NSString*) ssn
     last_name: (NSString*) last_name
     middle_name: (NSString*) middle_name
     emergency_contact_number: (NSString*) emergency_contact_number
     date_terminated: (NSString*) date_terminated
     dob: (NSString*) dob
     alcohol_commission_number: (NSString*) alcohol_commission_number
     alcohol_commission_expiration_date: (NSString*) alcohol_commission_expiration_date
     first_name: (NSString*) first_name
     is_manager: (NSNumber*) is_manager
     health_cert_number: (NSString*) health_cert_number
     mobile_phone: (NSString*) mobile_phone
     date_hired: (NSString*) date_hired
     home_phone: (NSString*) home_phone
     country_of_nationality: (NSString*) country_of_nationality
     emergency_contact_name: (NSString*) emergency_contact_name
     health_cert_expiration_date: (NSString*) health_cert_expiration_date
     date_last_review: (NSString*) date_last_review
     user_name: (NSString*) user_name
     email: (NSString*) email
     employee_id: (NSNumber*) employee_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

