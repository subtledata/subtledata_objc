#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDAvailablemodifier.h"

@interface SDMapped : NIKSwaggerObject

@property(nonatomic) NSNumber* minimum_order;
@property(nonatomic) NSString* name;
@property(nonatomic) NSArray* AvailableModifiers;
@property(nonatomic) NSNumber* maximum_order;
@property(nonatomic) NSNumber* category_id;
@property(nonatomic) NSString* description;
- (id) minimum_order: (NSNumber*) minimum_order
     name: (NSString*) name
     AvailableModifiers: (NSArray*) AvailableModifiers
     maximum_order: (NSNumber*) maximum_order
     category_id: (NSNumber*) category_id
     description: (NSString*) description;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

