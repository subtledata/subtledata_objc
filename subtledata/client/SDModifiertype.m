#import "NIKDate.h"
#import "SDModifiertype.h"

@implementation SDModifiertype

-(id)local: (NSArray*) local
    mapped: (NSArray*) mapped
{
  _local = local;
  _mapped = mapped;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        id local_dict = dict[@"local"];
        if([local_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)local_dict count]];

            if([(NSArray*)local_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)local_dict) {
                    SDLocal* d = [[SDLocal alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _local = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _local = [[NSArray alloc] init];
            }
        }
        else {
            _local = [[NSArray alloc] init];
        }
        id mapped_dict = dict[@"mapped"];
        if([mapped_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)mapped_dict count]];

            if([(NSArray*)mapped_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)mapped_dict) {
                    SDMapped* d = [[SDMapped alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _mapped = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _mapped = [[NSArray alloc] init];
            }
        }
        else {
            _mapped = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_local != nil){
        if([_local isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDLocal *local in (NSArray*)_local) {
                [array addObject:[(NIKSwaggerObject*)local asDictionary]];
            }
            dict[@"local"] = array;
        }
        else if(_local && [_local isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_local toString];
            if(dateString){
                dict[@"local"] = dateString;
            }
        }
    }
    else {
    if(_local != nil) dict[@"local"] = [(NIKSwaggerObject*)_local asDictionary];
    }
    if(_mapped != nil){
        if([_mapped isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDMapped *mapped in (NSArray*)_mapped) {
                [array addObject:[(NIKSwaggerObject*)mapped asDictionary]];
            }
            dict[@"mapped"] = array;
        }
        else if(_mapped && [_mapped isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_mapped toString];
            if(dateString){
                dict[@"mapped"] = dateString;
            }
        }
    }
    else {
    if(_mapped != nil) dict[@"mapped"] = [(NIKSwaggerObject*)_mapped asDictionary];
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

