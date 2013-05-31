#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDModifier.h"

@interface SDItemToAdd : NIKSwaggerObject

@property(nonatomic) NSNumber* item_id;
@property(nonatomic) NSString* instructions;
@property(nonatomic) NSArray* modifiers;
@property(nonatomic) NSNumber* quantity;
- (id) item_id: (NSNumber*) item_id
     instructions: (NSString*) instructions
     modifiers: (NSArray*) modifiers
     quantity: (NSNumber*) quantity;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

