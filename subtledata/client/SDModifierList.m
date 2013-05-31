#import "NIKDate.h"
#import "SDModifierList.h"

@implementation SDModifierList

-(id)price: (NSNumber*) price
    name: (NSString*) name
    modifier_id: (NSNumber*) modifier_id
    description: (NSString*) description
{
  _price = price;
  _name = name;
  _modifier_id = modifier_id;
  _description = description;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _price = dict[@"price"]; 
        _name = dict[@"name"]; 
        _modifier_id = dict[@"modifier_id"]; 
        _description = dict[@"description"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_price != nil) dict[@"price"] = _price ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_modifier_id != nil) dict[@"modifier_id"] = _modifier_id ;
    if(_description != nil) dict[@"description"] = _description ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

