#import "NIKDate.h"
#import "SDNewConnection.h"

@implementation SDNewConnection

-(id)cover_number: (NSNumber*) cover_number
    user_id: (NSNumber*) user_id
    additional_user_name: (NSString*) additional_user_name
    longitude: (NSNumber*) longitude
    latitude: (NSNumber*) latitude
    device_id: (NSNumber*) device_id
{
  _cover_number = cover_number;
  _user_id = user_id;
  _additional_user_name = additional_user_name;
  _longitude = longitude;
  _latitude = latitude;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _cover_number = dict[@"cover_number"]; 
        _user_id = dict[@"user_id"]; 
        _additional_user_name = dict[@"additional_user_name"]; 
        _longitude = dict[@"longitude"]; 
        _latitude = dict[@"latitude"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_cover_number != nil) dict[@"cover_number"] = _cover_number ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_additional_user_name != nil) dict[@"additional_user_name"] = _additional_user_name ;
    if(_longitude != nil) dict[@"longitude"] = _longitude ;
    if(_latitude != nil) dict[@"latitude"] = _latitude ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

