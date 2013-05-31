#import "NIKDate.h"
#import "SDCardPayment.h"

@implementation SDCardPayment

-(id)name_on_card: (NSString*) name_on_card
    tip_amount: (NSNumber*) tip_amount
    expiration_year: (NSString*) expiration_year
    amount_before_tip: (NSNumber*) amount_before_tip
    tip_type: (NSNumber*) tip_type
    card_id: (NSNumber*) card_id
    expiration_month: (NSString*) expiration_month
    mag_track_2: (NSString*) mag_track_2
    mag_track_1: (NSString*) mag_track_1
    signature_image: (NSString*) signature_image
    tender_type_id: (NSNumber*) tender_type_id
    billing_zip: (NSString*) billing_zip
    card_number: (NSString*) card_number
{
  _name_on_card = name_on_card;
  _tip_amount = tip_amount;
  _expiration_year = expiration_year;
  _amount_before_tip = amount_before_tip;
  _tip_type = tip_type;
  _card_id = card_id;
  _expiration_month = expiration_month;
  _mag_track_2 = mag_track_2;
  _mag_track_1 = mag_track_1;
  _signature_image = signature_image;
  _tender_type_id = tender_type_id;
  _billing_zip = billing_zip;
  _card_number = card_number;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name_on_card = dict[@"name_on_card"]; 
        _tip_amount = dict[@"tip_amount"]; 
        _expiration_year = dict[@"expiration_year"]; 
        _amount_before_tip = dict[@"amount_before_tip"]; 
        _tip_type = dict[@"tip_type"]; 
        _card_id = dict[@"card_id"]; 
        _expiration_month = dict[@"expiration_month"]; 
        _mag_track_2 = dict[@"mag_track_2"]; 
        _mag_track_1 = dict[@"mag_track_1"]; 
        _signature_image = dict[@"signature_image"]; 
        _tender_type_id = dict[@"tender_type_id"]; 
        _billing_zip = dict[@"billing_zip"]; 
        _card_number = dict[@"card_number"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name_on_card != nil) dict[@"name_on_card"] = _name_on_card ;
    if(_tip_amount != nil) dict[@"tip_amount"] = _tip_amount ;
    if(_expiration_year != nil) dict[@"expiration_year"] = _expiration_year ;
    if(_amount_before_tip != nil) dict[@"amount_before_tip"] = _amount_before_tip ;
    if(_tip_type != nil) dict[@"tip_type"] = _tip_type ;
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_expiration_month != nil) dict[@"expiration_month"] = _expiration_month ;
    if(_mag_track_2 != nil) dict[@"mag_track_2"] = _mag_track_2 ;
    if(_mag_track_1 != nil) dict[@"mag_track_1"] = _mag_track_1 ;
    if(_signature_image != nil) dict[@"signature_image"] = _signature_image ;
    if(_tender_type_id != nil) dict[@"tender_type_id"] = _tender_type_id ;
    if(_billing_zip != nil) dict[@"billing_zip"] = _billing_zip ;
    if(_card_number != nil) dict[@"card_number"] = _card_number ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

