#import "NIKDate.h"
#import "SDNewUserDetails.h"

@implementation SDNewUserDetails

-(id)first_name: (NSString*) first_name
    last_name: (NSString*) last_name
    middle_name: (NSString*) middle_name
    device_uuid: (NSString*) device_uuid
    dob: (NSString*) dob
    email_address: (NSString*) email_address
    longitude: (NSNumber*) longitude
    cell_phone: (NSString*) cell_phone
    latitude: (NSNumber*) latitude
    password: (NSString*) password
    user_name: (NSString*) user_name
{
  _first_name = first_name;
  _last_name = last_name;
  _middle_name = middle_name;
  _device_uuid = device_uuid;
  _dob = dob;
  _email_address = email_address;
  _longitude = longitude;
  _cell_phone = cell_phone;
  _latitude = latitude;
  _password = password;
  _user_name = user_name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _first_name = dict[@"first_name"]; 
        _last_name = dict[@"last_name"]; 
        _middle_name = dict[@"middle_name"]; 
        _device_uuid = dict[@"device_uuid"]; 
        _dob = dict[@"dob"]; 
        _email_address = dict[@"email_address"]; 
        _longitude = dict[@"longitude"]; 
        _cell_phone = dict[@"cell_phone"]; 
        _latitude = dict[@"latitude"]; 
        _password = dict[@"password"]; 
        _user_name = dict[@"user_name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_first_name != nil) dict[@"first_name"] = _first_name ;
    if(_last_name != nil) dict[@"last_name"] = _last_name ;
    if(_middle_name != nil) dict[@"middle_name"] = _middle_name ;
    if(_device_uuid != nil) dict[@"device_uuid"] = _device_uuid ;
    if(_dob != nil) dict[@"dob"] = _dob ;
    if(_email_address != nil) dict[@"email_address"] = _email_address ;
    if(_longitude != nil) dict[@"longitude"] = _longitude ;
    if(_cell_phone != nil) dict[@"cell_phone"] = _cell_phone ;
    if(_latitude != nil) dict[@"latitude"] = _latitude ;
    if(_password != nil) dict[@"password"] = _password ;
    if(_user_name != nil) dict[@"user_name"] = _user_name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

