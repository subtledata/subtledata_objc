#import "NIKDate.h"
#import "SDConcessionTicketDetails.h"

@implementation SDConcessionTicketDetails

-(id)employee_id: (NSNumber*) employee_id
    user_id: (NSNumber*) user_id
    number_of_people_in_party: (NSNumber*) number_of_people_in_party
    ticket_notes: (NSString*) ticket_notes
    items: (NSArray*) items
    terminal_id: (NSNumber*) terminal_id
    table_id: (NSNumber*) table_id
    revenue_center_id: (NSNumber*) revenue_center_id
    card_payments: (NSArray*) card_payments
    device_id: (NSNumber*) device_id
{
  _employee_id = employee_id;
  _user_id = user_id;
  _number_of_people_in_party = number_of_people_in_party;
  _ticket_notes = ticket_notes;
  _items = items;
  _terminal_id = terminal_id;
  _table_id = table_id;
  _revenue_center_id = revenue_center_id;
  _card_payments = card_payments;
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
        _ticket_notes = dict[@"ticket_notes"]; 
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
        _terminal_id = dict[@"terminal_id"]; 
        _table_id = dict[@"table_id"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        id card_payments_dict = dict[@"card_payments"];
        if([card_payments_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)card_payments_dict count]];

            if([(NSArray*)card_payments_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)card_payments_dict) {
                    SDCardPayment* d = [[SDCardPayment alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _card_payments = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _card_payments = [[NSArray alloc] init];
            }
        }
        else {
            _card_payments = [[NSArray alloc] init];
        }
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_employee_id != nil) dict[@"employee_id"] = _employee_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_number_of_people_in_party != nil) dict[@"number_of_people_in_party"] = _number_of_people_in_party ;
    if(_ticket_notes != nil) dict[@"ticket_notes"] = _ticket_notes ;
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
    if(_terminal_id != nil) dict[@"terminal_id"] = _terminal_id ;
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_card_payments != nil){
        if([_card_payments isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDCardPayment *card_payments in (NSArray*)_card_payments) {
                [array addObject:[(NIKSwaggerObject*)card_payments asDictionary]];
            }
            dict[@"card_payments"] = array;
        }
        else if(_card_payments && [_card_payments isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_card_payments toString];
            if(dateString){
                dict[@"card_payments"] = dateString;
            }
        }
    }
    else {
    if(_card_payments != nil) dict[@"card_payments"] = [(NIKSwaggerObject*)_card_payments asDictionary];
    }
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

