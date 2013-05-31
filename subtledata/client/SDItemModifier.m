#import "NIKDate.h"
#import "SDItemModifier.h"

@implementation SDItemModifier

-(id)name: (NSString*) name
    modifier_id: (NSNumber*) modifier_id
    instructions: (NSString*) instructions
{
  _name = name;
  _modifier_id = modifier_id;
  _instructions = instructions;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _modifier_id = dict[@"modifier_id"]; 
        _instructions = dict[@"instructions"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
    if(_modifier_id != nil) dict[@"modifier_id"] = _modifier_id ;
    if(_instructions != nil) dict[@"instructions"] = _instructions ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

