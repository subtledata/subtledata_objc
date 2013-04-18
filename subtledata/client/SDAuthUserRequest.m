#import "NIKDate.h"
#import "SDAuthUserRequest.h"

@implementation SDAuthUserRequest

-(id)username: (NSString*) username
    user_id: (NSNumber*) user_id
    device_uuid: (NSString*) device_uuid
    longitude: (NSNumber*) longitude
    latitude: (NSNumber*) latitude
    password: (NSString*) password
{
  _username = username;
  _user_id = user_id;
  _device_uuid = device_uuid;
  _longitude = longitude;
  _latitude = latitude;
  _password = password;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _username = dict[@"username"]; 
        _user_id = dict[@"user_id"]; 
        _device_uuid = dict[@"device_uuid"]; 
        _longitude = dict[@"longitude"]; 
        _latitude = dict[@"latitude"]; 
        _password = dict[@"password"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_username != nil) dict[@"username"] = _username ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_device_uuid != nil) dict[@"device_uuid"] = _device_uuid ;
    if(_longitude != nil) dict[@"longitude"] = _longitude ;
    if(_latitude != nil) dict[@"latitude"] = _latitude ;
    if(_password != nil) dict[@"password"] = _password ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

