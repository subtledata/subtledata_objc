#import "NIKDate.h"
#import "SDTableDetails.h"

@implementation SDTableDetails

-(id)pos_table_id: (NSString*) pos_table_id
    subtledata_id: (NSNumber*) subtledata_id
    revenue_center_name: (NSString*) revenue_center_name
    revenue_center_id: (NSNumber*) revenue_center_id
    open_tickets: (NSArray*) open_tickets
    name: (NSString*) name
{
  _pos_table_id = pos_table_id;
  _subtledata_id = subtledata_id;
  _revenue_center_name = revenue_center_name;
  _revenue_center_id = revenue_center_id;
  _open_tickets = open_tickets;
  _name = name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _pos_table_id = dict[@"pos_table_id"]; 
        _subtledata_id = dict[@"subtledata_id"]; 
        _revenue_center_name = dict[@"revenue_center_name"]; 
        _revenue_center_id = dict[@"revenue_center_id"]; 
        id open_tickets_dict = dict[@"open_tickets"];
        if([open_tickets_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)open_tickets_dict count]];

            if([(NSArray*)open_tickets_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)open_tickets_dict) {
                    SDOpenTicket* d = [[SDOpenTicket alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _open_tickets = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _open_tickets = [[NSArray alloc] init];
            }
        }
        else {
            _open_tickets = [[NSArray alloc] init];
        }
        _name = dict[@"name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_pos_table_id != nil) dict[@"pos_table_id"] = _pos_table_id ;
    if(_subtledata_id != nil) dict[@"subtledata_id"] = _subtledata_id ;
    if(_revenue_center_name != nil) dict[@"revenue_center_name"] = _revenue_center_name ;
    if(_revenue_center_id != nil) dict[@"revenue_center_id"] = _revenue_center_id ;
    if(_open_tickets != nil){
        if([_open_tickets isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDOpenTicket *open_tickets in (NSArray*)_open_tickets) {
                [array addObject:[(NIKSwaggerObject*)open_tickets asDictionary]];
            }
            dict[@"open_tickets"] = array;
        }
        else if(_open_tickets && [_open_tickets isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_open_tickets toString];
            if(dateString){
                dict[@"open_tickets"] = dateString;
            }
        }
    }
    else {
    if(_open_tickets != nil) dict[@"open_tickets"] = [(NIKSwaggerObject*)_open_tickets asDictionary];
    }
    if(_name != nil) dict[@"name"] = _name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

