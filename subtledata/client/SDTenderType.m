#import "NIKDate.h"
#import "SDTenderType.h"

@implementation SDTenderType

-(id)tender_type_id: (NSNumber*) tender_type_id
    identifier: (NSNumber*) identifier
    name: (NSString*) name
{
  _tender_type_id = tender_type_id;
  _identifier = identifier;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _tender_type_id = dict[@"tender_type_id"]; 
        _identifier = dict[@"identifier"]; 
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_tender_type_id != nil) dict[@"tender_type_id"] = _tender_type_id ;
    if(_identifier != nil) dict[@"identifier"] = _identifier ;
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

