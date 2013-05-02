#import "NIKDate.h"
#import "SDNewConnection.h"

@implementation SDNewConnection

-(id)latitude: (NSNumber*) latitude
    cover_number: (NSNumber*) cover_number
    user_id: (NSNumber*) user_id
    longitude: (NSNumber*) longitude
    device_id: (NSNumber*) device_id
{
  _latitude = latitude;
  _cover_number = cover_number;
  _user_id = user_id;
  _longitude = longitude;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _latitude = dict[@"latitude"]; 
        _cover_number = dict[@"cover_number"]; 
        _user_id = dict[@"user_id"]; 
        _longitude = dict[@"longitude"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_latitude != nil) dict[@"latitude"] = _latitude ;
    if(_cover_number != nil) dict[@"cover_number"] = _cover_number ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_longitude != nil) dict[@"longitude"] = _longitude ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

