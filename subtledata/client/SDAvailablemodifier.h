#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDAvailablemodifier : NIKSwaggerObject

@property(nonatomic) NSString* name;
@property(nonatomic) NSString* date_updated;
@property(nonatomic) NSNumber* price;
@property(nonatomic) NSNumber* available_to_order;
@property(nonatomic) NSNumber* modifier_id;
@property(nonatomic) NSString* description;
- (id) name: (NSString*) name
     date_updated: (NSString*) date_updated
     price: (NSNumber*) price
     available_to_order: (NSNumber*) available_to_order
     modifier_id: (NSNumber*) modifier_id
     description: (NSString*) description;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

