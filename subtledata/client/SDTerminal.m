#import "NIKDate.h"
#import "SDTerminal.h"

@implementation SDTerminal

-(id)revenue_center_name: (NSString*) revenue_center_name
    default_device: (NSNumber*) default_device
    terminal_id: (NSNumber*) terminal_id
    revenue_center_id: (NSNumber*) revenue_center_id
    ip_address: (NSString*) ip_address
    name: (NSString*) name
{
  _revenue_center_name = revenue_center_name;
  _default_device = default_device;
  _terminal_id = terminal_id;
  _revenue_center_id = revenue_center_id;
  _ip_address = ip_address;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _revenue_center_name = dict[@"revenue_center_name"]; 
        _default_device = dict[@"default_device"]; 
        _terminal_id = dict[@"terminal_id"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _ip_address = dict[@"ip_address"]; 
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_revenue_center_name != nil) dict[@"revenue_center_name"] = _revenue_center_name ;
    if(_default_device != nil) dict[@"default_device"] = _default_device ;
    if(_terminal_id != nil) dict[@"terminal_id"] = _terminal_id ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_ip_address != nil) dict[@"ip_address"] = _ip_address ;
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

