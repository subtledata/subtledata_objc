#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDModifierList : NIKSwaggerObject

@property(nonatomic) NSNumber* price;
@property(nonatomic) NSString* name;
@property(nonatomic) NSNumber* modifier_id;
@property(nonatomic) NSString* description;
- (id) price: (NSNumber*) price
     name: (NSString*) name
     modifier_id: (NSNumber*) modifier_id
     description: (NSString*) description;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

