#import "NIKDate.h"
#import "SDModifier.h"

@implementation SDModifier

-(id)modifier_id: (NSNumber*) modifier_id
{
  _modifier_id = modifier_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _modifier_id = dict[@"modifier_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_modifier_id != nil) dict[@"modifier_id"] = _modifier_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

