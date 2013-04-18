#import "NIKDate.h"
#import "SDItemToAdd.h"

@implementation SDItemToAdd

-(id)item_id: (NSNumber*) item_id
    instructions: (NSString*) instructions
    quantity: (NSNumber*) quantity
{
  _item_id = item_id;
  _instructions = instructions;
  _quantity = quantity;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _item_id = dict[@"item_id"]; 
        _instructions = dict[@"instructions"]; 
        _quantity = dict[@"quantity"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_item_id != nil) dict[@"item_id"] = _item_id ;
    if(_instructions != nil) dict[@"instructions"] = _instructions ;
    if(_quantity != nil) dict[@"quantity"] = _quantity ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

