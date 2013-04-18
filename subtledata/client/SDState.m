#import "NIKDate.h"
#import "SDState.h"

@implementation SDState

-(id)abbreviation: (NSString*) abbreviation
    state_id: (NSNumber*) state_id
    country_id: (NSNumber*) country_id
{
  _abbreviation = abbreviation;
  _state_id = state_id;
  _country_id = country_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _abbreviation = dict[@"abbreviation"]; 
        _state_id = dict[@"state_id"]; 
        _country_id = dict[@"country_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_abbreviation != nil) dict[@"abbreviation"] = _abbreviation ;
    if(_state_id != nil) dict[@"state_id"] = _state_id ;
    if(_country_id != nil) dict[@"country_id"] = _country_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

