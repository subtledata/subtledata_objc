#import "NIKDate.h"
#import "SDTicket.h"

@implementation SDTicket

-(id)date_closed: (NSString*) date_closed
    tax: (NSNumber*) tax
    date_opened: (NSString*) date_opened
    total: (NSNumber*) total
    location_id: (NSNumber*) location_id
    employee_id: (NSNumber*) employee_id
    ticket_open: (NSNumber*) ticket_open
    pre_auth_payments: (NSArray*) pre_auth_payments
    remaining_balance: (NSNumber*) remaining_balance
    ticket_id: (NSNumber*) ticket_id
    table_name: (NSString*) table_name
    revenue_center_id: (NSNumber*) revenue_center_id
    user_id: (NSNumber*) user_id
    pre_auth_cards: (NSArray*) pre_auth_cards
    discount: (NSNumber*) discount
    external_payments: (NSArray*) external_payments
    cover_count: (NSNumber*) cover_count
    subtotal: (NSNumber*) subtotal
    service_charge: (NSNumber*) service_charge
    date_modified: (NSString*) date_modified
    items: (NSArray*) items
    pos_ticket_id: (NSNumber*) pos_ticket_id
    table_id: (NSNumber*) table_id
    payments: (NSArray*) payments
    connected_users: (NSArray*) connected_users
{
  _date_closed = date_closed;
  _tax = tax;
  _date_opened = date_opened;
  _total = total;
  _location_id = location_id;
  _employee_id = employee_id;
  _ticket_open = ticket_open;
  _pre_auth_payments = pre_auth_payments;
  _remaining_balance = remaining_balance;
  _ticket_id = ticket_id;
  _table_name = table_name;
  _revenue_center_id = revenue_center_id;
  _user_id = user_id;
  _pre_auth_cards = pre_auth_cards;
  _discount = discount;
  _external_payments = external_payments;
  _cover_count = cover_count;
  _subtotal = subtotal;
  _service_charge = service_charge;
  _date_modified = date_modified;
  _items = items;
  _pos_ticket_id = pos_ticket_id;
  _table_id = table_id;
  _payments = payments;
  _connected_users = connected_users;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _date_closed = dict[@"date_closed"]; 
        _tax = dict[@"tax"]; 
        _date_opened = dict[@"date_opened"]; 
        _total = dict[@"total"]; 
        _location_id = dict[@"location_id"]; 
        _employee_id = dict[@"employee_id"]; 
        _ticket_open = dict[@"ticket_open"]; 
        id pre_auth_payments_dict = dict[@"pre_auth_payments"];
        if([pre_auth_payments_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)pre_auth_payments_dict count]];

            if([(NSArray*)pre_auth_payments_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)pre_auth_payments_dict) {
                    SDPreAuthPayment* d = [[SDPreAuthPayment alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _pre_auth_payments = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _pre_auth_payments = [[NSArray alloc] init];
            }
        }
        else {
            _pre_auth_payments = [[NSArray alloc] init];
        }
        _remaining_balance = dict[@"remaining_balance"]; 
        _ticket_id = dict[@"ticket_id"]; 
        _table_name = dict[@"table_name"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _user_id = dict[@"user_id"]; 
        id pre_auth_cards_dict = dict[@"pre_auth_cards"];
        if([pre_auth_cards_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)pre_auth_cards_dict count]];

            if([(NSArray*)pre_auth_cards_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)pre_auth_cards_dict) {
                    SDPreAuthCard* d = [[SDPreAuthCard alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _pre_auth_cards = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _pre_auth_cards = [[NSArray alloc] init];
            }
        }
        else {
            _pre_auth_cards = [[NSArray alloc] init];
        }
        _discount = dict[@"discount"]; 
        id external_payments_dict = dict[@"external_payments"];
        if([external_payments_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)external_payments_dict count]];

            if([(NSArray*)external_payments_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)external_payments_dict) {
                    SDExternalPayment* d = [[SDExternalPayment alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _external_payments = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _external_payments = [[NSArray alloc] init];
            }
        }
        else {
            _external_payments = [[NSArray alloc] init];
        }
        _cover_count = dict[@"cover_count"]; 
        _subtotal = dict[@"subtotal"]; 
        _service_charge = dict[@"service_charge"]; 
        _date_modified = dict[@"date_modified"]; 
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
        _pos_ticket_id = dict[@"pos_ticket_id"]; 
        _table_id = dict[@"table_id"]; 
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
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_date_closed != nil) dict[@"date_closed"] = _date_closed ;
    if(_tax != nil) dict[@"tax"] = _tax ;
    if(_date_opened != nil) dict[@"date_opened"] = _date_opened ;
    if(_total != nil) dict[@"total"] = _total ;
    if(_location_id != nil) dict[@"location_id"] = _location_id ;
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    if(_ticket_open != nil) dict[@"ticket_open"] = _ticket_open ;
    if(_pre_auth_payments != nil){
        if([_pre_auth_payments isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDPreAuthPayment *pre_auth_payments in (NSArray*)_pre_auth_payments) {
                [array addObject:[(NIKSwaggerObject*)pre_auth_payments asDictionary]];
            }
            dict[@"pre_auth_payments"] = array;
        }
        else if(_pre_auth_payments && [_pre_auth_payments isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_pre_auth_payments toString];
            if(dateString){
                dict[@"pre_auth_payments"] = dateString;
            }
        }
    }
    else {
    if(_pre_auth_payments != nil) dict[@"pre_auth_payments"] = [(NIKSwaggerObject*)_pre_auth_payments asDictionary];
    }
    if(_remaining_balance != nil) dict[@"remaining_balance"] = _remaining_balance ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_table_name != nil) dict[@"table_name"] = _table_name ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_pre_auth_cards != nil){
        if([_pre_auth_cards isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDPreAuthCard *pre_auth_cards in (NSArray*)_pre_auth_cards) {
                [array addObject:[(NIKSwaggerObject*)pre_auth_cards asDictionary]];
            }
            dict[@"pre_auth_cards"] = array;
        }
        else if(_pre_auth_cards && [_pre_auth_cards isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_pre_auth_cards toString];
            if(dateString){
                dict[@"pre_auth_cards"] = dateString;
            }
        }
    }
    else {
    if(_pre_auth_cards != nil) dict[@"pre_auth_cards"] = [(NIKSwaggerObject*)_pre_auth_cards asDictionary];
    }
    if(_discount != nil) dict[@"discount"] = _discount ;
    if(_external_payments != nil){
        if([_external_payments isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDExternalPayment *external_payments in (NSArray*)_external_payments) {
                [array addObject:[(NIKSwaggerObject*)external_payments asDictionary]];
            }
            dict[@"external_payments"] = array;
        }
        else if(_external_payments && [_external_payments isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_external_payments toString];
            if(dateString){
                dict[@"external_payments"] = dateString;
            }
        }
    }
    else {
    if(_external_payments != nil) dict[@"external_payments"] = [(NIKSwaggerObject*)_external_payments asDictionary];
    }
    if(_cover_count != nil) dict[@"cover_count"] = _cover_count ;
    if(_subtotal != nil) dict[@"subtotal"] = _subtotal ;
    if(_service_charge != nil) dict[@"service_charge"] = _service_charge ;
    if(_date_modified != nil) dict[@"date_modified"] = _date_modified ;
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
    if(_pos_ticket_id != nil) dict[@"pos_ticket_id"] = _pos_ticket_id ;
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
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
    NSDictionary* output = [dict copy];
    return output;
}

@end

