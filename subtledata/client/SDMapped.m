#import "NIKDate.h"
#import "SDMapped.h"

@implementation SDMapped

-(id)minimum_order: (NSNumber*) minimum_order
    name: (NSString*) name
    AvailableModifiers: (NSArray*) AvailableModifiers
    maximum_order: (NSNumber*) maximum_order
    category_id: (NSNumber*) category_id
    description: (NSString*) description
{
  _minimum_order = minimum_order;
  _name = name;
  _AvailableModifiers = AvailableModifiers;
  _maximum_order = maximum_order;
  _category_id = category_id;
  _description = description;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _minimum_order = dict[@"minimum_order"]; 
        _name = dict[@"name"]; 
        id AvailableModifiers_dict = dict[@"AvailableModifiers"];
        if([AvailableModifiers_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)AvailableModifiers_dict count]];

            if([(NSArray*)AvailableModifiers_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)AvailableModifiers_dict) {
                    SDAvailablemodifier* d = [[SDAvailablemodifier alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _AvailableModifiers = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _AvailableModifiers = [[NSArray alloc] init];
            }
        }
        else {
            _AvailableModifiers = [[NSArray alloc] init];
        }
        _maximum_order = dict[@"maximum_order"]; 
        _category_id = dict[@"category_id"]; 
        _description = dict[@"description"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_minimum_order != nil) dict[@"minimum_order"] = _minimum_order ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_AvailableModifiers != nil){
        if([_AvailableModifiers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDAvailablemodifier *AvailableModifiers in (NSArray*)_AvailableModifiers) {
                [array addObject:[(NIKSwaggerObject*)AvailableModifiers asDictionary]];
            }
            dict[@"AvailableModifiers"] = array;
        }
        else if(_AvailableModifiers && [_AvailableModifiers isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_AvailableModifiers toString];
            if(dateString){
                dict[@"AvailableModifiers"] = dateString;
            }
        }
    }
    else {
    if(_AvailableModifiers != nil) dict[@"AvailableModifiers"] = [(NIKSwaggerObject*)_AvailableModifiers asDictionary];
    }
    if(_maximum_order != nil) dict[@"maximum_order"] = _maximum_order ;
    if(_category_id != nil) dict[@"category_id"] = _category_id ;
    if(_description != nil) dict[@"description"] = _description ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

