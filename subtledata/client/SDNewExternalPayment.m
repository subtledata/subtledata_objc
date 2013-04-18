#import "NIKDate.h"
#import "SDNewExternalPayment.h"

@implementation SDNewExternalPayment

-(id)payment_source_name: (NSString*) payment_source_name
    tip_amount: (NSNumber*) tip_amount
    payment_response_tracking_2: (NSString*) payment_response_tracking_2
    payment_response_tracking_3: (NSString*) payment_response_tracking_3
    payment_response_tracking_1: (NSString*) payment_response_tracking_1
    payment_response_tracking_4: (NSString*) payment_response_tracking_4
    amount_before_tip: (NSNumber*) amount_before_tip
    tender_type_id: (NSNumber*) tender_type_id
    user_id: (NSNumber*) user_id
    device_id: (NSNumber*) device_id
{
  _payment_source_name = payment_source_name;
  _tip_amount = tip_amount;
  _payment_response_tracking_2 = payment_response_tracking_2;
  _payment_response_tracking_3 = payment_response_tracking_3;
  _payment_response_tracking_1 = payment_response_tracking_1;
  _payment_response_tracking_4 = payment_response_tracking_4;
  _amount_before_tip = amount_before_tip;
  _tender_type_id = tender_type_id;
  _user_id = user_id;
  _device_id = device_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _payment_source_name = dict[@"payment_source_name"]; 
        _tip_amount = dict[@"tip_amount"]; 
        _payment_response_tracking_2 = dict[@"payment_response_tracking_2"]; 
        _payment_response_tracking_3 = dict[@"payment_response_tracking_3"]; 
        _payment_response_tracking_1 = dict[@"payment_response_tracking_1"]; 
        _payment_response_tracking_4 = dict[@"payment_response_tracking_4"]; 
        _amount_before_tip = dict[@"amount_before_tip"]; 
        _tender_type_id = dict[@"tender_type_id"]; 
        _user_id = dict[@"user_id"]; 
        _device_id = dict[@"device_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_payment_source_name != nil) dict[@"payment_source_name"] = _payment_source_name ;
    if(_tip_amount != nil) dict[@"tip_amount"] = _tip_amount ;
    if(_payment_response_tracking_2 != nil) dict[@"payment_response_tracking_2"] = _payment_response_tracking_2 ;
    if(_payment_response_tracking_3 != nil) dict[@"payment_response_tracking_3"] = _payment_response_tracking_3 ;
    if(_payment_response_tracking_1 != nil) dict[@"payment_response_tracking_1"] = _payment_response_tracking_1 ;
    if(_payment_response_tracking_4 != nil) dict[@"payment_response_tracking_4"] = _payment_response_tracking_4 ;
    if(_amount_before_tip != nil) dict[@"amount_before_tip"] = _amount_before_tip ;
    if(_tender_type_id != nil) dict[@"tender_type_id"] = _tender_type_id ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_device_id != nil) dict[@"device_id"] = _device_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

