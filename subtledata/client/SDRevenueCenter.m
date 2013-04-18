#import "NIKDate.h"
#import "SDRevenueCenter.h"

@implementation SDRevenueCenter

-(id)default_center: (NSNumber*) default_center
    revenue_center_id: (NSNumber*) revenue_center_id
    name: (NSString*) name
{
  _default_center = default_center;
  _revenue_center_id = revenue_center_id;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _default_center = dict[@"default_center"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_default_center != nil) dict[@"default_center"] = _default_center ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

