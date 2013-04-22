#import "NIKDate.h"
#import "SDOpenTicket.h"

@implementation SDOpenTicket

-(id)employee_id: (NSNumber*) employee_id
    user_id: (NSNumber*) user_id
    number_of_guests: (NSNumber*) number_of_guests
    items: (NSArray*) items
    tax: (NSNumber*) tax
    discount: (NSNumber*) discount
    pos_ticket_id: (NSNumber*) pos_ticket_id
    remaining_balance: (NSNumber*) remaining_balance
    table_id: (NSNumber*) table_id
    ticket_id: (NSNumber*) ticket_id
    date_opened: (NSString*) date_opened
    table_name: (NSString*) table_name
    total: (NSNumber*) total
    subtotal: (NSNumber*) subtotal
    service_charge: (NSNumber*) service_charge
{
  _employee_id = employee_id;
  _user_id = user_id;
  _number_of_guests = number_of_guests;
  _items = items;
  _tax = tax;
  _discount = discount;
  _pos_ticket_id = pos_ticket_id;
  _remaining_balance = remaining_balance;
  _table_id = table_id;
  _ticket_id = ticket_id;
  _date_opened = date_opened;
  _table_name = table_name;
  _total = total;
  _subtotal = subtotal;
  _service_charge = service_charge;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _employee_id = dict[@"employee_id"]; 
        _user_id = dict[@"user_id"]; 
        _number_of_guests = dict[@"number_of_guests"]; 
        id items_dict = dict[@"items"];
        if([items_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];

            if([(NSArray*)items_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)items_dict) {
                    SDItem* d = [[SDItem alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _items = [[NSArray alloc] init];
            }
        }
        else {
            _items = [[NSArray alloc] init];
        }
        _tax = dict[@"tax"]; 
        _discount = dict[@"discount"]; 
        _pos_ticket_id = dict[@"pos_ticket_id"]; 
        _remaining_balance = dict[@"remaining_balance"]; 
        _table_id = dict[@"table_id"]; 
        _ticket_id = dict[@"ticket_id"]; 
        _date_opened = dict[@"date_opened"]; 
        _table_name = dict[@"table_name"]; 
        _total = dict[@"total"]; 
        _subtotal = dict[@"subtotal"]; 
        _service_charge = dict[@"service_charge"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_number_of_guests != nil) dict[@"number_of_guests"] = _number_of_guests ;
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDItem *items in (NSArray*)_items) {
                [array addObject:[(NIKSwaggerObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
    }
    else {
    if(_items != nil) dict[@"items"] = [(NIKSwaggerObject*)_items asDictionary];
    }
    if(_tax != nil) dict[@"tax"] = _tax ;
    if(_discount != nil) dict[@"discount"] = _discount ;
    if(_pos_ticket_id != nil) dict[@"pos_ticket_id"] = _pos_ticket_id ;
    if(_remaining_balance != nil) dict[@"remaining_balance"] = _remaining_balance ;
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_date_opened != nil) dict[@"date_opened"] = _date_opened ;
    if(_table_name != nil) dict[@"table_name"] = _table_name ;
    if(_total != nil) dict[@"total"] = _total ;
    if(_subtotal != nil) dict[@"subtotal"] = _subtotal ;
    if(_service_charge != nil) dict[@"service_charge"] = _service_charge ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

