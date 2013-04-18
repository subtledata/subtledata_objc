#import "NIKDate.h"
#import "SDNewTicket.h"

@implementation SDNewTicket

-(id)employee_id: (NSNumber*) employee_id
    user_id: (NSNumber*) user_id
    number_of_people_in_party: (NSNumber*) number_of_people_in_party
    custom_ticket_name: (NSString*) custom_ticket_name
    table_id: (NSNumber*) table_id
    revenue_center_id: (NSNumber*) revenue_center_id
    device_id: (NSNumber*) device_id
{
  _employee_id = employee_id;
  _user_id = user_id;
  _number_of_people_in_party = number_of_people_in_party;
  _custom_ticket_name = custom_ticket_name;
  _table_id = table_id;
  _revenue_center_id = revenue_center_id;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _employee_id = dict[@"employee_id"]; 
        _user_id = dict[@"user_id"]; 
        _number_of_people_in_party = dict[@"number_of_people_in_party"]; 
        _custom_ticket_name = dict[@"custom_ticket_name"]; 
        _table_id = dict[@"table_id"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_number_of_people_in_party != nil) dict[@"number_of_people_in_party"] = _number_of_people_in_party ;
    if(_custom_ticket_name != nil) dict[@"custom_ticket_name"] = _custom_ticket_name ;
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

