#import "NIKDate.h"
#import "SDCountry.h"

@implementation SDCountry

-(id)country_name: (NSString*) country_name
    country_id: (NSNumber*) country_id
{
  _country_name = country_name;
  _country_id = country_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _country_name = dict[@"country_name"]; 
        _country_id = dict[@"country_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_country_name != nil) dict[@"country_name"] = _country_name ;
    if(_country_id != nil) dict[@"country_id"] = _country_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

