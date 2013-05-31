#import "NIKDate.h"
#import "SDLocal.h"

@implementation SDLocal

-(id)description: (NSString*) description
    category_id: (NSNumber*) category_id
    name: (NSString*) name
    modifier_list: (NSArray*) modifier_list
{
  _description = description;
  _category_id = category_id;
  _name = name;
  _modifier_list = modifier_list;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _description = dict[@"description"]; 
        _category_id = dict[@"category_id"]; 
        _name = dict[@"name"]; 
        id modifier_list_dict = dict[@"modifier_list"];
        if([modifier_list_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)modifier_list_dict count]];

            if([(NSArray*)modifier_list_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)modifier_list_dict) {
                    SDModifierList* d = [[SDModifierList alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _modifier_list = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _modifier_list = [[NSArray alloc] init];
            }
        }
        else {
            _modifier_list = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_description != nil) dict[@"description"] = _description ;
    if(_category_id != nil) dict[@"category_id"] = _category_id ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_modifier_list != nil){
        if([_modifier_list isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDModifierList *modifier_list in (NSArray*)_modifier_list) {
                [array addObject:[(NIKSwaggerObject*)modifier_list asDictionary]];
            }
            dict[@"modifier_list"] = array;
        }
        else if(_modifier_list && [_modifier_list isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_modifier_list toString];
            if(dateString){
                dict[@"modifier_list"] = dateString;
            }
        }
    }
    else {
    if(_modifier_list != nil) dict[@"modifier_list"] = [(NIKSwaggerObject*)_modifier_list asDictionary];
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

