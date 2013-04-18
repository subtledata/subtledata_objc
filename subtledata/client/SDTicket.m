#import "NIKDate.h"
#import "SDTicket.h"

@implementation SDTicket

-(id)employee_id: (NSNumber*) employee_id
    ticket_open: (NSNumber*) ticket_open
    items: (NSArray*) items
    tax: (NSNumber*) tax
    table_id: (NSNumber*) table_id
    discount: (NSNumber*) discount
    pos_ticket_id: (NSNumber*) pos_ticket_id
    remaining_balance: (NSNumber*) remaining_balance
    table_name: (NSString*) table_name
    ticket_id: (NSNumber*) ticket_id
    connected_users: (NSArray*) connected_users
    user_id: (NSNumber*) user_id
    total: (NSNumber*) total
    subtotal: (NSNumber*) subtotal
    service_charge: (NSNumber*) service_charge
    payments: (NSArray*) payments
{
  _employee_id = employee_id;
  _ticket_open = ticket_open;
  _items = items;
  _tax = tax;
  _table_id = table_id;
  _discount = discount;
  _pos_ticket_id = pos_ticket_id;
  _remaining_balance = remaining_balance;
  _table_name = table_name;
  _ticket_id = ticket_id;
  _connected_users = connected_users;
  _user_id = user_id;
  _total = total;
  _subtotal = subtotal;
  _service_charge = service_charge;
  _payments = payments;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _employee_id = dict[@"employee_id"]; 
        _ticket_open = dict[@"ticket_open"]; 
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
        _table_id = dict[@"table_id"]; 
        _discount = dict[@"discount"]; 
        _pos_ticket_id = dict[@"pos_ticket_id"]; 
        _remaining_balance = dict[@"remaining_balance"]; 
        _table_name = dict[@"table_name"]; 
        _ticket_id = dict[@"ticket_id"]; 
        id connected_users_dict = dict[@"connected_users"];
        if([connected_users_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)connected_users_dict count]];

            if([(NSArray*)connected_users_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)connected_users_dict) {
                    SDConnectedUser* d = [[SDConnectedUser alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _connected_users = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _connected_users = [[NSArray alloc] init];
            }
        }
        else {
            _connected_users = [[NSArray alloc] init];
        }
        _user_id = dict[@"user_id"]; 
        _total = dict[@"total"]; 
        _subtotal = dict[@"subtotal"]; 
        _service_charge = dict[@"service_charge"]; 
        id payments_dict = dict[@"payments"];
        if([payments_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)payments_dict count]];

            if([(NSArray*)payments_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)payments_dict) {
                    SDPayment* d = [[SDPayment alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _payments = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _payments = [[NSArray alloc] init];
            }
        }
        else {
            _payments = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    if(_ticket_open != nil) dict[@"ticket_open"] = _ticket_open ;
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
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
    if(_discount != nil) dict[@"discount"] = _discount ;
    if(_pos_ticket_id != nil) dict[@"pos_ticket_id"] = _pos_ticket_id ;
    if(_remaining_balance != nil) dict[@"remaining_balance"] = _remaining_balance ;
    if(_table_name != nil) dict[@"table_name"] = _table_name ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_connected_users != nil){
        if([_connected_users isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDConnectedUser *connected_users in (NSArray*)_connected_users) {
                [array addObject:[(NIKSwaggerObject*)connected_users asDictionary]];
            }
            dict[@"connected_users"] = array;
        }
        else if(_connected_users && [_connected_users isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_connected_users toString];
            if(dateString){
                dict[@"connected_users"] = dateString;
            }
        }
    }
    else {
    if(_connected_users != nil) dict[@"connected_users"] = [(NIKSwaggerObject*)_connected_users asDictionary];
    }
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_total != nil) dict[@"total"] = _total ;
    if(_subtotal != nil) dict[@"subtotal"] = _subtotal ;
    if(_service_charge != nil) dict[@"service_charge"] = _service_charge ;
    if(_payments != nil){
        if([_payments isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDPayment *payments in (NSArray*)_payments) {
                [array addObject:[(NIKSwaggerObject*)payments asDictionary]];
            }
            dict[@"payments"] = array;
        }
        else if(_payments && [_payments isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_payments toString];
            if(dateString){
                dict[@"payments"] = dateString;
            }
        }
    }
    else {
    if(_payments != nil) dict[@"payments"] = [(NIKSwaggerObject*)_payments asDictionary];
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

