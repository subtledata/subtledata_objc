#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTableMinimal : NIKSwaggerObject

@property(nonatomic) NSNumber* pos_table_id;
@property(nonatomic) NSNumber* subtledata_id;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSString* name;
- (id) pos_table_id: (NSNumber*) pos_table_id
     subtledata_id: (NSNumber*) subtledata_id
     revenue_center_id: (NSNumber*) revenue_center_id
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

