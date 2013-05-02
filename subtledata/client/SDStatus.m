#import "NIKDate.h"
#import "SDStatus.h"

@implementation SDStatus

-(id)result: (NSString*) result
    success: (NSNumber*) success
    error: (NSString*) error
{
  _result = result;
  _success = success;
  _error = error;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _result = dict[@"result"]; 
        _success = dict[@"success"]; 
        _error = dict[@"error"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_result != nil) dict[@"result"] = _result ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_error != nil) dict[@"error"] = _error ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

