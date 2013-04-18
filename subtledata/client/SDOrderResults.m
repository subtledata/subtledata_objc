#import "NIKDate.h"
#import "SDOrderResults.h"

@implementation SDOrderResults

-(id)seconds_to_wait: (NSNumber*) seconds_to_wait
    ad_url: (NSString*) ad_url
    result: (NSString*) result
    success: (NSNumber*) success
{
  _seconds_to_wait = seconds_to_wait;
  _ad_url = ad_url;
  _result = result;
  _success = success;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _seconds_to_wait = dict[@"seconds_to_wait"]; 
        _ad_url = dict[@"ad_url"]; 
        _result = dict[@"result"]; 
        _success = dict[@"success"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_seconds_to_wait != nil) dict[@"seconds_to_wait"] = _seconds_to_wait ;
    if(_ad_url != nil) dict[@"ad_url"] = _ad_url ;
    if(_result != nil) dict[@"result"] = _result ;
    if(_success != nil) dict[@"success"] = _success ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

