#import "NIKDate.h"
#import "SDPaymentStatus.h"

@implementation SDPaymentStatus

-(id)user_id: (NSNumber*) user_id
    success: (NSNumber*) success
    card_id: (NSString*) card_id
    result: (NSString*) result
    error: (NSString*) error
    device_id: (NSNumber*) device_id
{
  _user_id = user_id;
  _success = success;
  _card_id = card_id;
  _result = result;
  _error = error;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _user_id = dict[@"user_id"]; 
        _success = dict[@"success"]; 
        _card_id = dict[@"card_id"]; 
        _result = dict[@"result"]; 
        _error = dict[@"error"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_result != nil) dict[@"result"] = _result ;
    if(_error != nil) dict[@"error"] = _error ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

