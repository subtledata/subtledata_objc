#import "NIKDate.h"
#import "SDUser.h"

@implementation SDUser

-(id)user_guid: (NSString*) user_guid
    user_id: (NSNumber*) user_id
    device_id: (NSNumber*) device_id
{
  _user_guid = user_guid;
  _user_id = user_id;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _user_guid = dict[@"user_guid"]; 
        _user_id = dict[@"user_id"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_user_guid != nil) dict[@"user_guid"] = _user_guid ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

