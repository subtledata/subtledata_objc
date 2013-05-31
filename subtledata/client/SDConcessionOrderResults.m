#import "NIKDate.h"
#import "SDConcessionOrderResults.h"

@implementation SDConcessionOrderResults

-(id)payment_success: (NSNumber*) payment_success
    error: (NSString*) error
    ticket_id: (NSNumber*) ticket_id
    success: (NSNumber*) success
    result: (NSString*) result
{
  _payment_success = payment_success;
  _error = error;
  _ticket_id = ticket_id;
  _success = success;
  _result = result;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _payment_success = dict[@"payment_success"]; 
        _error = dict[@"error"]; 
        _ticket_id = dict[@"ticket_id"]; 
        _success = dict[@"success"]; 
        _result = dict[@"result"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_payment_success != nil) dict[@"payment_success"] = _payment_success ;
    if(_error != nil) dict[@"error"] = _error ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_result != nil) dict[@"result"] = _result ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

