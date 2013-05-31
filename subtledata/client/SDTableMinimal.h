#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTableMinimal : NIKSwaggerObject

@property(nonatomic) NSString* pos_table_id;
@property(nonatomic) NSNumber* subtledata_id;
@property(nonatomic) NSString* revenue_center_name;
@property(nonatomic) NSString* name;
@property(nonatomic) NSNumber* revenue_center_id;
- (id) pos_table_id: (NSString*) pos_table_id
     subtledata_id: (NSNumber*) subtledata_id
     revenue_center_name: (NSString*) revenue_center_name
     name: (NSString*) name
     revenue_center_id: (NSNumber*) revenue_center_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

