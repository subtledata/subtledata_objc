#import "NIKDate.h"
#import "SDAvailablemodifier.h"

@implementation SDAvailablemodifier

-(id)name: (NSString*) name
    date_updated: (NSString*) date_updated
    price: (NSNumber*) price
    available_to_order: (NSNumber*) available_to_order
    modifier_id: (NSNumber*) modifier_id
    description: (NSString*) description
{
  _name = name;
  _date_updated = date_updated;
  _price = price;
  _available_to_order = available_to_order;
  _modifier_id = modifier_id;
  _description = description;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _date_updated = dict[@"date_updated"]; 
        _price = dict[@"price"]; 
        _available_to_order = dict[@"available_to_order"]; 
        _modifier_id = dict[@"modifier_id"]; 
        _description = dict[@"description"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
    if(_date_updated != nil) dict[@"date_updated"] = _date_updated ;
    if(_price != nil) dict[@"price"] = _price ;
    if(_available_to_order != nil) dict[@"available_to_order"] = _available_to_order ;
    if(_modifier_id != nil) dict[@"modifier_id"] = _modifier_id ;
    if(_description != nil) dict[@"description"] = _description ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

