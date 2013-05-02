#import "NIKDate.h"
#import "SDAuthResponse.h"

@implementation SDAuthResponse

-(id)device_id: (NSNumber*) device_id
    user_id: (NSNumber*) user_id
    result: (NSString*) result
    success: (NSNumber*) success
    error: (NSString*) error
{
  _device_id = device_id;
  _user_id = user_id;
  _result = result;
  _success = success;
  _error = error;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _device_id = dict[@"device_id"]; 
        _user_id = dict[@"user_id"]; 
        _result = dict[@"result"]; 
        _success = dict[@"success"]; 
        _error = dict[@"error"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_result != nil) dict[@"result"] = _result ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_error != nil) dict[@"error"] = _error ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

