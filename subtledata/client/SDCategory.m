#import "NIKDate.h"
#import "SDCategory.h"

@implementation SDCategory

-(id)items: (NSArray*) items
    has_items: (NSNumber*) has_items
    instructional_text: (NSString*) instructional_text
    category_images: (NSArray*) category_images
    category_id: (NSNumber*) category_id
    has_subcategories: (NSNumber*) has_subcategories
    category_name: (NSString*) category_name
{
  _items = items;
  _has_items = has_items;
  _instructional_text = instructional_text;
  _category_images = category_images;
  _category_id = category_id;
  _has_subcategories = has_subcategories;
  _category_name = category_name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        id items_dict = dict[@"items"];
        if([items_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];

            if([(NSArray*)items_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)items_dict) {
                    SDMenuItemDetail* d = [[SDMenuItemDetail alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _items = [[NSArray alloc] init];
            }
        }
        else {
            _items = [[NSArray alloc] init];
        }
        _has_items = dict[@"has_items"]; 
        _instructional_text = dict[@"instructional_text"]; 
        id category_images_dict = dict[@"category_images"];
        if([category_images_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)category_images_dict count]];

            if([(NSArray*)category_images_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)category_images_dict) {
                    SDCategoryImage* d = [[SDCategoryImage alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _category_images = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _category_images = [[NSArray alloc] init];
            }
        }
        else {
            _category_images = [[NSArray alloc] init];
        }
        _category_id = dict[@"category_id"]; 
        _has_subcategories = dict[@"has_subcategories"]; 
        _category_name = dict[@"category_name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDMenuItemDetail *items in (NSArray*)_items) {
                [array addObject:[(NIKSwaggerObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
    }
    else {
    if(_items != nil) dict[@"items"] = [(NIKSwaggerObject*)_items asDictionary];
    }
    if(_has_items != nil) dict[@"has_items"] = _has_items ;
    if(_instructional_text != nil) dict[@"instructional_text"] = _instructional_text ;
    if(_category_images != nil){
        if([_category_images isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDCategoryImage *category_images in (NSArray*)_category_images) {
                [array addObject:[(NIKSwaggerObject*)category_images asDictionary]];
            }
            dict[@"category_images"] = array;
        }
        else if(_category_images && [_category_images isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_category_images toString];
            if(dateString){
                dict[@"category_images"] = dateString;
            }
        }
    }
    else {
    if(_category_images != nil) dict[@"category_images"] = [(NIKSwaggerObject*)_category_images asDictionary];
    }
    if(_category_id != nil) dict[@"category_id"] = _category_id ;
    if(_has_subcategories != nil) dict[@"has_subcategories"] = _has_subcategories ;
    if(_category_name != nil) dict[@"category_name"] = _category_name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

