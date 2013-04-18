#import "NIKDate.h"
#import "SDPayment.h"

@implementation SDPayment

-(id)payment_id: (NSNumber*) payment_id
    card_type: (NSString*) card_type
    tip_amount: (NSNumber*) tip_amount
    total_amount: (NSNumber*) total_amount
    expiration_year: (NSString*) expiration_year
    card_nickname: (NSString*) card_nickname
    name_on_tender: (NSString*) name_on_tender
    expiration_month: (NSString*) expiration_month
    amount_before_tip: (NSNumber*) amount_before_tip
    credit_card_id: (NSNumber*) credit_card_id
    last_4_digits: (NSString*) last_4_digits
{
  _payment_id = payment_id;
  _card_type = card_type;
  _tip_amount = tip_amount;
  _total_amount = total_amount;
  _expiration_year = expiration_year;
  _card_nickname = card_nickname;
  _name_on_tender = name_on_tender;
  _expiration_month = expiration_month;
  _amount_before_tip = amount_before_tip;
  _credit_card_id = credit_card_id;
  _last_4_digits = last_4_digits;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _payment_id = dict[@"payment_id"]; 
        _card_type = dict[@"card_type"]; 
        _tip_amount = dict[@"tip_amount"]; 
        _total_amount = dict[@"total_amount"]; 
        _expiration_year = dict[@"expiration_year"]; 
        _card_nickname = dict[@"card_nickname"]; 
        _name_on_tender = dict[@"name_on_tender"]; 
        _expiration_month = dict[@"expiration_month"]; 
        _amount_before_tip = dict[@"amount_before_tip"]; 
        _credit_card_id = dict[@"credit_card_id"]; 
        _last_4_digits = dict[@"last_4_digits"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_payment_id != nil) dict[@"payment_id"] = _payment_id ;
    if(_card_type != nil) dict[@"card_type"] = _card_type ;
    if(_tip_amount != nil) dict[@"tip_amount"] = _tip_amount ;
    if(_total_amount != nil) dict[@"total_amount"] = _total_amount ;
    if(_expiration_year != nil) dict[@"expiration_year"] = _expiration_year ;
    if(_card_nickname != nil) dict[@"card_nickname"] = _card_nickname ;
    if(_name_on_tender != nil) dict[@"name_on_tender"] = _name_on_tender ;
    if(_expiration_month != nil) dict[@"expiration_month"] = _expiration_month ;
    if(_amount_before_tip != nil) dict[@"amount_before_tip"] = _amount_before_tip ;
    if(_credit_card_id != nil) dict[@"credit_card_id"] = _credit_card_id ;
    if(_last_4_digits != nil) dict[@"last_4_digits"] = _last_4_digits ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

