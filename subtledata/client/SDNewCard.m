#import "NIKDate.h"
#import "SDNewCard.h"

@implementation SDNewCard

-(id)name_on_card: (NSString*) name_on_card
    expiration_year: (NSString*) expiration_year
    card_nickname: (NSString*) card_nickname
    billing_zip: (NSString*) billing_zip
    expiration_month: (NSString*) expiration_month
    mag_track_2: (NSString*) mag_track_2
    mag_track_1: (NSString*) mag_track_1
    signature_image: (NSString*) signature_image
    card_number: (NSString*) card_number
{
  _name_on_card = name_on_card;
  _expiration_year = expiration_year;
  _card_nickname = card_nickname;
  _billing_zip = billing_zip;
  _expiration_month = expiration_month;
  _mag_track_2 = mag_track_2;
  _mag_track_1 = mag_track_1;
  _signature_image = signature_image;
  _card_number = card_number;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name_on_card = dict[@"name_on_card"]; 
        _expiration_year = dict[@"expiration_year"]; 
        _card_nickname = dict[@"card_nickname"]; 
        _billing_zip = dict[@"billing_zip"]; 
        _expiration_month = dict[@"expiration_month"]; 
        _mag_track_2 = dict[@"mag_track_2"]; 
        _mag_track_1 = dict[@"mag_track_1"]; 
        _signature_image = dict[@"signature_image"]; 
        _card_number = dict[@"card_number"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name_on_card != nil) dict[@"name_on_card"] = _name_on_card ;
    if(_expiration_year != nil) dict[@"expiration_year"] = _expiration_year ;
    if(_card_nickname != nil) dict[@"card_nickname"] = _card_nickname ;
    if(_billing_zip != nil) dict[@"billing_zip"] = _billing_zip ;
    if(_expiration_month != nil) dict[@"expiration_month"] = _expiration_month ;
    if(_mag_track_2 != nil) dict[@"mag_track_2"] = _mag_track_2 ;
    if(_mag_track_1 != nil) dict[@"mag_track_1"] = _mag_track_1 ;
    if(_signature_image != nil) dict[@"signature_image"] = _signature_image ;
    if(_card_number != nil) dict[@"card_number"] = _card_number ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

