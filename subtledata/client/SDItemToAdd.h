#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDItemToAdd : NIKSwaggerObject

@property(nonatomic) NSNumber* item_id;
@property(nonatomic) NSString* instructions;
@property(nonatomic) NSNumber* quantity;
- (id) item_id: (NSNumber*) item_id
     instructions: (NSString*) instructions
     quantity: (NSNumber*) quantity;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

