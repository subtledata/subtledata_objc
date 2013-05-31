#import "NIKDate.h"
#import "SDTableMinimal.h"

@implementation SDTableMinimal

-(id)pos_table_id: (NSString*) pos_table_id
    subtledata_id: (NSNumber*) subtledata_id
    revenue_center_name: (NSString*) revenue_center_name
    name: (NSString*) name
    revenue_center_id: (NSNumber*) revenue_center_id
{
  _pos_table_id = pos_table_id;
  _subtledata_id = subtledata_id;
  _revenue_center_name = revenue_center_name;
  _name = name;
  _revenue_center_id = revenue_center_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _pos_table_id = dict[@"pos_table_id"]; 
        _subtledata_id = dict[@"subtledata_id"]; 
        _revenue_center_name = dict[@"revenue_center_name"]; 
        _name = dict[@"name"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_pos_table_id != nil) dict[@"pos_table_id"] = _pos_table_id ;
    if(_subtledata_id != nil) dict[@"subtledata_id"] = _subtledata_id ;
    if(_revenue_center_name != nil) dict[@"revenue_center_name"] = _revenue_center_name ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

