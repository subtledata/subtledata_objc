#import "NIKDate.h"
#import "SDEmployee.h"

@implementation SDEmployee

-(id)ssn: (NSString*) ssn
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
    employee_id: (NSNumber*) employee_id
{
  _ssn = ssn;
  _last_name = last_name;
  _middle_name = middle_name;
  _emergency_contact_number = emergency_contact_number;
  _date_terminated = date_terminated;
  _dob = dob;
  _alcohol_commission_number = alcohol_commission_number;
  _alcohol_commission_expiration_date = alcohol_commission_expiration_date;
  _first_name = first_name;
  _is_manager = is_manager;
  _health_cert_number = health_cert_number;
  _mobile_phone = mobile_phone;
  _date_hired = date_hired;
  _home_phone = home_phone;
  _country_of_nationality = country_of_nationality;
  _emergency_contact_name = emergency_contact_name;
  _health_cert_expiration_date = health_cert_expiration_date;
  _date_last_review = date_last_review;
  _user_name = user_name;
  _email = email;
  _employee_id = employee_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _ssn = dict[@"ssn"]; 
        _last_name = dict[@"last_name"]; 
        _middle_name = dict[@"middle_name"]; 
        _emergency_contact_number = dict[@"emergency_contact_number"]; 
        _date_terminated = dict[@"date_terminated"]; 
        _dob = dict[@"dob"]; 
        _alcohol_commission_number = dict[@"alcohol_commission_number"]; 
        _alcohol_commission_expiration_date = dict[@"alcohol_commission_expiration_date"]; 
        _first_name = dict[@"first_name"]; 
        _is_manager = dict[@"is_manager"]; 
        _health_cert_number = dict[@"health_cert_number"]; 
        _mobile_phone = dict[@"mobile_phone"]; 
        _date_hired = dict[@"date_hired"]; 
        _home_phone = dict[@"home_phone"]; 
        _country_of_nationality = dict[@"country_of_nationality"]; 
        _emergency_contact_name = dict[@"emergency_contact_name"]; 
        _health_cert_expiration_date = dict[@"health_cert_expiration_date"]; 
        _date_last_review = dict[@"date_last_review"]; 
        _user_name = dict[@"user_name"]; 
        _email = dict[@"email"]; 
        _employee_id = dict[@"employee_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_ssn != nil) dict[@"ssn"] = _ssn ;
    if(_last_name != nil) dict[@"last_name"] = _last_name ;
    if(_middle_name != nil) dict[@"middle_name"] = _middle_name ;
    if(_emergency_contact_number != nil) dict[@"emergency_contact_number"] = _emergency_contact_number ;
    if(_date_terminated != nil) dict[@"date_terminated"] = _date_terminated ;
    if(_dob != nil) dict[@"dob"] = _dob ;
    if(_alcohol_commission_number != nil) dict[@"alcohol_commission_number"] = _alcohol_commission_number ;
    if(_alcohol_commission_expiration_date != nil) dict[@"alcohol_commission_expiration_date"] = _alcohol_commission_expiration_date ;
    if(_first_name != nil) dict[@"first_name"] = _first_name ;
    if(_is_manager != nil) dict[@"is_manager"] = _is_manager ;
    if(_health_cert_number != nil) dict[@"health_cert_number"] = _health_cert_number ;
    if(_mobile_phone != nil) dict[@"mobile_phone"] = _mobile_phone ;
    if(_date_hired != nil) dict[@"date_hired"] = _date_hired ;
    if(_home_phone != nil) dict[@"home_phone"] = _home_phone ;
    if(_country_of_nationality != nil) dict[@"country_of_nationality"] = _country_of_nationality ;
    if(_emergency_contact_name != nil) dict[@"emergency_contact_name"] = _emergency_contact_name ;
    if(_health_cert_expiration_date != nil) dict[@"health_cert_expiration_date"] = _health_cert_expiration_date ;
    if(_date_last_review != nil) dict[@"date_last_review"] = _date_last_review ;
    if(_user_name != nil) dict[@"user_name"] = _user_name ;
    if(_email != nil) dict[@"email"] = _email ;
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

