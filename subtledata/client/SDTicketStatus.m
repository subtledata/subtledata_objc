#import "NIKDate.h"
#import "SDTicketStatus.h"

@implementation SDTicketStatus

-(id)error: (NSString*) error
    ticket_id: (NSString*) ticket_id
    success: (NSNumber*) success
    result: (NSString*) result
{
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
        _error = dict[@"error"]; 
        _ticket_id = dict[@"ticket_id"]; 
        _success = dict[@"success"]; 
        _result = dict[@"result"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_error != nil) dict[@"error"] = _error ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_success != nil) dict[@"success"] = _success ;
    if(_result != nil) dict[@"result"] = _result ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

