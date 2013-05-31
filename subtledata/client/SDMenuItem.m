#import "NIKDate.h"
#import "SDMenuItem.h"

@implementation SDMenuItem

-(id)sku: (NSString*) sku
    food_flag: (NSNumber*) food_flag
    alcohol_flag: (NSNumber*) alcohol_flag
    display_name: (NSString*) display_name
    name: (NSString*) name
    merchandise_flag: (NSNumber*) merchandise_flag
    available_for_order: (NSNumber*) available_for_order
    price: (NSNumber*) price
    description: (NSString*) description
    UPC: (NSString*) UPC
    ModifierTypes: (NSArray*) ModifierTypes
    item_images: (NSArray*) item_images
    cost: (NSNumber*) cost
    revenue_center_id: (NSNumber*) revenue_center_id
    item_id: (NSNumber*) item_id
    local_pos_id: (NSNumber*) local_pos_id
    out_of_stock_flag: (NSNumber*) out_of_stock_flag
{
  _sku = sku;
  _food_flag = food_flag;
  _alcohol_flag = alcohol_flag;
  _display_name = display_name;
  _name = name;
  _merchandise_flag = merchandise_flag;
  _available_for_order = available_for_order;
  _price = price;
  _description = description;
  _UPC = UPC;
  _ModifierTypes = ModifierTypes;
  _item_images = item_images;
  _cost = cost;
  _revenue_center_id = revenue_center_id;
  _item_id = item_id;
  _local_pos_id = local_pos_id;
  _out_of_stock_flag = out_of_stock_flag;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _sku = dict[@"sku"]; 
        _food_flag = dict[@"food_flag"]; 
        _alcohol_flag = dict[@"alcohol_flag"]; 
        _display_name = dict[@"display_name"]; 
        _name = dict[@"name"]; 
        _merchandise_flag = dict[@"merchandise_flag"]; 
        _available_for_order = dict[@"available_for_order"]; 
        _price = dict[@"price"]; 
        _description = dict[@"description"]; 
        _UPC = dict[@"UPC"]; 
        id ModifierTypes_dict = dict[@"ModifierTypes"];
        if([ModifierTypes_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)ModifierTypes_dict count]];

            if([(NSArray*)ModifierTypes_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)ModifierTypes_dict) {
                    SDModifiertype* d = [[SDModifiertype alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _ModifierTypes = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _ModifierTypes = [[NSArray alloc] init];
            }
        }
        else {
            _ModifierTypes = [[NSArray alloc] init];
        }
        id item_images_dict = dict[@"item_images"];
        if([item_images_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)item_images_dict count]];

            if([(NSArray*)item_images_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)item_images_dict) {
                    SDItemImage* d = [[SDItemImage alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _item_images = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _item_images = [[NSArray alloc] init];
            }
        }
        else {
            _item_images = [[NSArray alloc] init];
        }
        _cost = dict[@"cost"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _item_id = dict[@"item_id"]; 
        _local_pos_id = dict[@"local_pos_id"]; 
        _out_of_stock_flag = dict[@"out_of_stock_flag"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_sku != nil) dict[@"sku"] = _sku ;
    if(_food_flag != nil) dict[@"food_flag"] = _food_flag ;
    if(_alcohol_flag != nil) dict[@"alcohol_flag"] = _alcohol_flag ;
    if(_display_name != nil) dict[@"display_name"] = _display_name ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_merchandise_flag != nil) dict[@"merchandise_flag"] = _merchandise_flag ;
    if(_available_for_order != nil) dict[@"available_for_order"] = _available_for_order ;
    if(_price != nil) dict[@"price"] = _price ;
    if(_description != nil) dict[@"description"] = _description ;
    if(_UPC != nil) dict[@"UPC"] = _UPC ;
    if(_ModifierTypes != nil){
        if([_ModifierTypes isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDModifiertype *ModifierTypes in (NSArray*)_ModifierTypes) {
                [array addObject:[(NIKSwaggerObject*)ModifierTypes asDictionary]];
            }
            dict[@"ModifierTypes"] = array;
        }
        else if(_ModifierTypes && [_ModifierTypes isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_ModifierTypes toString];
            if(dateString){
                dict[@"ModifierTypes"] = dateString;
            }
        }
    }
    else {
    if(_ModifierTypes != nil) dict[@"ModifierTypes"] = [(NIKSwaggerObject*)_ModifierTypes asDictionary];
    }
    if(_item_images != nil){
        if([_item_images isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDItemImage *item_images in (NSArray*)_item_images) {
                [array addObject:[(NIKSwaggerObject*)item_images asDictionary]];
            }
            dict[@"item_images"] = array;
        }
        else if(_item_images && [_item_images isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_item_images toString];
            if(dateString){
                dict[@"item_images"] = dateString;
            }
        }
    }
    else {
    if(_item_images != nil) dict[@"item_images"] = [(NIKSwaggerObject*)_item_images asDictionary];
    }
    if(_cost != nil) dict[@"cost"] = _cost ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_item_id != nil) dict[@"item_id"] = _item_id ;
    if(_local_pos_id != nil) dict[@"local_pos_id"] = _local_pos_id ;
    if(_out_of_stock_flag != nil) dict[@"out_of_stock_flag"] = _out_of_stock_flag ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

