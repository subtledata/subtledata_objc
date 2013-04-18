#import "NIKDate.h"
#import "SDNewPayment.h"

@implementation SDNewPayment

-(id)tip_amount: (NSNumber*) tip_amount
    tip_type: (NSNumber*) tip_type
    testing: (NSNumber*) testing
    card_cvv: (NSString*) card_cvv
    card_id: (NSNumber*) card_id
    amount_before_tip: (NSNumber*) amount_before_tip
    user_id: (NSNumber*) user_id
{
  _tip_amount = tip_amount;
  _tip_type = tip_type;
  _testing = testing;
  _card_cvv = card_cvv;
  _card_id = card_id;
  _amount_before_tip = amount_before_tip;
  _user_id = user_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _tip_amount = dict[@"tip_amount"]; 
        _tip_type = dict[@"tip_type"]; 
        _testing = dict[@"testing"]; 
        _card_cvv = dict[@"card_cvv"]; 
        _card_id = dict[@"card_id"]; 
        _amount_before_tip = dict[@"amount_before_tip"]; 
        _user_id = dict[@"user_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_tip_amount != nil) dict[@"tip_amount"] = _tip_amount ;
    if(_tip_type != nil) dict[@"tip_type"] = _tip_type ;
    if(_testing != nil) dict[@"testing"] = _testing ;
    if(_card_cvv != nil) dict[@"card_cvv"] = _card_cvv ;
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_amount_before_tip != nil) dict[@"amount_before_tip"] = _amount_before_tip ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

