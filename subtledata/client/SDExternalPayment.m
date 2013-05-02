#import "NIKDate.h"
#import "SDExternalPayment.h"

@implementation SDExternalPayment

-(id)status: (NSNumber*) status
    tip_amount: (NSNumber*) tip_amount
    total_amount: (NSNumber*) total_amount
    amount_before_tip: (NSNumber*) amount_before_tip
    payment_source: (NSString*) payment_source
    external_payment_id: (NSNumber*) external_payment_id
    external_response_field_1: (NSString*) external_response_field_1
    tender_type_name: (NSString*) tender_type_name
    external_response_field_2: (NSString*) external_response_field_2
    external_response_field_3: (NSString*) external_response_field_3
    external_response_field_4: (NSString*) external_response_field_4
{
  _status = status;
  _tip_amount = tip_amount;
  _total_amount = total_amount;
  _amount_before_tip = amount_before_tip;
  _payment_source = payment_source;
  _external_payment_id = external_payment_id;
  _external_response_field_1 = external_response_field_1;
  _tender_type_name = tender_type_name;
  _external_response_field_2 = external_response_field_2;
  _external_response_field_3 = external_response_field_3;
  _external_response_field_4 = external_response_field_4;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _status = dict[@"status"]; 
        _tip_amount = dict[@"tip_amount"]; 
        _total_amount = dict[@"total_amount"]; 
        _amount_before_tip = dict[@"amount_before_tip"]; 
        _payment_source = dict[@"payment_source"]; 
        _external_payment_id = dict[@"external_payment_id"]; 
        _external_response_field_1 = dict[@"external_response_field_1"]; 
        _tender_type_name = dict[@"tender_type_name"]; 
        _external_response_field_2 = dict[@"external_response_field_2"]; 
        _external_response_field_3 = dict[@"external_response_field_3"]; 
        _external_response_field_4 = dict[@"external_response_field_4"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_status != nil) dict[@"status"] = _status ;
    if(_tip_amount != nil) dict[@"tip_amount"] = _tip_amount ;
    if(_total_amount != nil) dict[@"total_amount"] = _total_amount ;
    if(_amount_before_tip != nil) dict[@"amount_before_tip"] = _amount_before_tip ;
    if(_payment_source != nil) dict[@"payment_source"] = _payment_source ;
    if(_external_payment_id != nil) dict[@"external_payment_id"] = _external_payment_id ;
    if(_external_response_field_1 != nil) dict[@"external_response_field_1"] = _external_response_field_1 ;
    if(_tender_type_name != nil) dict[@"tender_type_name"] = _tender_type_name ;
    if(_external_response_field_2 != nil) dict[@"external_response_field_2"] = _external_response_field_2 ;
    if(_external_response_field_3 != nil) dict[@"external_response_field_3"] = _external_response_field_3 ;
    if(_external_response_field_4 != nil) dict[@"external_response_field_4"] = _external_response_field_4 ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

