#import "NIKDate.h"
#import "SDMenuItemDetail.h"

@implementation SDMenuItemDetail

-(id)description: (NSString*) description
    price: (NSNumber*) price
    name: (NSString*) name
    revenue_center_id: (NSNumber*) revenue_center_id
    item_id: (NSNumber*) item_id
    item_images: (NSArray*) item_images
{
  _description = description;
  _price = price;
  _name = name;
  _revenue_center_id = revenue_center_id;
  _item_id = item_id;
  _item_images = item_images;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _description = dict[@"description"]; 
        _price = dict[@"price"]; 
        _name = dict[@"name"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _item_id = dict[@"item_id"]; 
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
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_description != nil) dict[@"description"] = _description ;
    if(_price != nil) dict[@"price"] = _price ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_item_id != nil) dict[@"item_id"] = _item_id ;
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
    NSDictionary* output = [dict copy];
    return output;
}

@end

