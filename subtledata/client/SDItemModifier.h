#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDItemModifier : NIKSwaggerObject

@property(nonatomic) NSString* name;
@property(nonatomic) NSNumber* modifier_id;
@property(nonatomic) NSString* instructions;
- (id) name: (NSString*) name
     modifier_id: (NSNumber*) modifier_id
     instructions: (NSString*) instructions;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

