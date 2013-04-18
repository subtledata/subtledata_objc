#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDRevenueCenter : NIKSwaggerObject

@property(nonatomic) NSNumber* default_center;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSString* name;
- (id) default_center: (NSNumber*) default_center
     revenue_center_id: (NSNumber*) revenue_center_id
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

