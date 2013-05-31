#import "NIKDate.h"
#import "SDItem.h"

@implementation SDItem

-(id)item_id: (NSNumber*) item_id
    instructions: (NSString*) instructions
    modifiers: (NSArray*) modifiers
    quantity: (NSNumber*) quantity
{
  _item_id = item_id;
  _instructions = instructions;
  _modifiers = modifiers;
  _quantity = quantity;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _item_id = dict[@"item_id"]; 
        _instructions = dict[@"instructions"]; 
        id modifiers_dict = dict[@"modifiers"];
        if([modifiers_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)modifiers_dict count]];

            if([(NSArray*)modifiers_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)modifiers_dict) {
                    SDModifier* d = [[SDModifier alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _modifiers = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _modifiers = [[NSArray alloc] init];
            }
        }
        else {
            _modifiers = [[NSArray alloc] init];
        }
        _quantity = dict[@"quantity"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_item_id != nil) dict[@"item_id"] = _item_id ;
    if(_instructions != nil) dict[@"instructions"] = _instructions ;
    if(_modifiers != nil){
        if([_modifiers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDModifier *modifiers in (NSArray*)_modifiers) {
                [array addObject:[(NIKSwaggerObject*)modifiers asDictionary]];
            }
            dict[@"modifiers"] = array;
        }
        else if(_modifiers && [_modifiers isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_modifiers toString];
            if(dateString){
                dict[@"modifiers"] = dateString;
            }
        }
    }
    else {
    if(_modifiers != nil) dict[@"modifiers"] = [(NIKSwaggerObject*)_modifiers asDictionary];
    }
    if(_quantity != nil) dict[@"quantity"] = _quantity ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

