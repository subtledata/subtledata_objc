#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDModifier : NIKSwaggerObject

@property(nonatomic) NSNumber* modifier_id;
- (id) modifier_id: (NSNumber*) modifier_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

