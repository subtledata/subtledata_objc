#import "NIKDate.h"
#import "SDDiscountType.h"

@implementation SDDiscountType

-(id)default_discount: (NSNumber*) default_discount
    discount_type_id: (NSNumber*) discount_type_id
    name: (NSString*) name
{
  _default_discount = default_discount;
  _discount_type_id = discount_type_id;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _default_discount = dict[@"default_discount"]; 
        _discount_type_id = dict[@"discount_type_id"]; 
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_default_discount != nil) dict[@"default_discount"] = _default_discount ;
    if(_discount_type_id != nil) dict[@"discount_type_id"] = _discount_type_id ;
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

