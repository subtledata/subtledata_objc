#import "NIKDate.h"
#import "SDTable.h"

@implementation SDTable

-(id)pos_table_id: (NSNumber*) pos_table_id
    subtledata_id: (NSNumber*) subtledata_id
    revenue_center_id: (NSNumber*) revenue_center_id
    name: (NSString*) name
{
  _pos_table_id = pos_table_id;
  _subtledata_id = subtledata_id;
  _revenue_center_id = revenue_center_id;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _pos_table_id = dict[@"pos_table_id"]; 
        _subtledata_id = dict[@"subtledata_id"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_pos_table_id != nil) dict[@"pos_table_id"] = _pos_table_id ;
    if(_subtledata_id != nil) dict[@"subtledata_id"] = _subtledata_id ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

