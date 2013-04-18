#import "NIKDate.h"
#import "SDCard.h"

@implementation SDCard

-(id)name_on_card: (NSString*) name_on_card
    card_type: (NSString*) card_type
    expiration_year: (NSString*) expiration_year
    card_id: (NSNumber*) card_id
    expiration_month: (NSString*) expiration_month
    nickname: (NSString*) nickname
    last_4_digits: (NSString*) last_4_digits
{
  _name_on_card = name_on_card;
  _card_type = card_type;
  _expiration_year = expiration_year;
  _card_id = card_id;
  _expiration_month = expiration_month;
  _nickname = nickname;
  _last_4_digits = last_4_digits;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name_on_card = dict[@"name_on_card"]; 
        _card_type = dict[@"card_type"]; 
        _expiration_year = dict[@"expiration_year"]; 
        _card_id = dict[@"card_id"]; 
        _expiration_month = dict[@"expiration_month"]; 
        _nickname = dict[@"nickname"]; 
        _last_4_digits = dict[@"last_4_digits"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name_on_card != nil) dict[@"name_on_card"] = _name_on_card ;
    if(_card_type != nil) dict[@"card_type"] = _card_type ;
    if(_expiration_year != nil) dict[@"expiration_year"] = _expiration_year ;
    if(_card_id != nil) dict[@"card_id"] = _card_id ;
    if(_expiration_month != nil) dict[@"expiration_month"] = _expiration_month ;
    if(_nickname != nil) dict[@"nickname"] = _nickname ;
    if(_last_4_digits != nil) dict[@"last_4_digits"] = _last_4_digits ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

