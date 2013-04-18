#import "NIKDate.h"
#import "SDDiscountInfo.h"

@implementation SDDiscountInfo

-(id)discount_type: (NSNumber*) discount_type
    user_id: (NSNumber*) user_id
    discount_amount: (NSNumber*) discount_amount
{
  _discount_type = discount_type;
  _user_id = user_id;
  _discount_amount = discount_amount;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _discount_type = dict[@"discount_type"]; 
        _user_id = dict[@"user_id"]; 
        _discount_amount = dict[@"discount_amount"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_discount_type != nil) dict[@"discount_type"] = _discount_type ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_discount_amount != nil) dict[@"discount_amount"] = _discount_amount ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

