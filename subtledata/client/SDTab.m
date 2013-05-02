#import "NIKDate.h"
#import "SDTab.h"

@implementation SDTab

-(id)payment_id: (NSNumber*) payment_id
    name_on_card: (NSString*) name_on_card
    card_type: (NSString*) card_type
    expiration_year: (NSString*) expiration_year
    card_nickname: (NSString*) card_nickname
    card_id: (NSNumber*) card_id
    expiration_month: (NSString*) expiration_month
    pos_ticket_id: (NSNumber*) pos_ticket_id
    table_id: (NSNumber*) table_id
    ticket_id: (NSNumber*) ticket_id
    table_name: (NSString*) table_name
    pre_auth_amount: (NSNumber*) pre_auth_amount
    last_4_digits: (NSString*) last_4_digits
{
  _payment_id = payment_id;
  _name_on_card = name_on_card;
  _card_type = card_type;
  _expiration_year = expiration_year;
  _card_nickname = card_nickname;
  _card_id = card_id;
  _expiration_month = expiration_month;
  _pos_ticket_id = pos_ticket_id;
  _table_id = table_id;
  _ticket_id = ticket_id;
  _table_name = table_name;
  _pre_auth_amount = pre_auth_amount;
  _last_4_digits = last_4_digits;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _payment_id = dict[@"payment_id"]; 
        _name_on_card = dict[@"name_on_card"]; 
        _card_type = dict[@"card_type"]; 
        _expiration_year = dict[@"expiration_year"]; 
        _card_nickname = dict[@"card_nickname"]; 
        _card_id = dict[@"card_id"]; 
        _expiration_month = dict[@"expiration_month"]; 
        _pos_ticket_id = dict[@"pos_ticket_id"]; 
        _table_id = dict[@"table_id"]; 
        _ticket_id = dict[@"ticket_id"]; 
        _table_name = dict[@"table_name"]; 
        _pre_auth_amount = dict[@"pre_auth_amount"]; 
        _last_4_digits = dict[@"last_4_digits"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_payment_id != nil) dict[@"payment_id"] = _payment_id ;
    if(_name_on_card != nil) dict[@"name_on_card"] = _name_on_card ;
    if(_card_type != nil) dict[@"card_type"] = _card_type ;
    if(_expiration_year != nil) dict[@"expiration_year"] = _expiration_year ;
    if(_card_nickname != nil) dict[@"card_nickname"] = _card_nickname ;
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_expiration_month != nil) dict[@"expiration_month"] = _expiration_month ;
    if(_pos_ticket_id != nil) dict[@"pos_ticket_id"] = _pos_ticket_id ;
    if(_table_id != nil) dict[@"table_id"] = _table_id ;
    if(_ticket_id != nil) dict[@"ticket_id"] = _ticket_id ;
    if(_table_name != nil) dict[@"table_name"] = _table_name ;
    if(_pre_auth_amount != nil) dict[@"pre_auth_amount"] = _pre_auth_amount ;
    if(_last_4_digits != nil) dict[@"last_4_digits"] = _last_4_digits ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

