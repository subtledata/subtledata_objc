#import "NIKDate.h"
#import "SDCardStatus.h"

@implementation SDCardStatus

-(id)card_id: (NSString*) card_id
    result: (NSString*) result
    success: (NSNumber*) success
    error: (NSString*) error
{
  _card_id = card_id;
  _result = result;
  _success = success;
  _error = error;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _card_id = dict[@"card_id"]; 
        _result = dict[@"result"]; 
        _success = dict[@"success"]; 
        _error = dict[@"error"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_result != nil) dict[@"result"] = _result ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_error != nil) dict[@"error"] = _error ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

