#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDMapped.h"
#import "SDLocal.h"

@interface SDModifiertype : NIKSwaggerObject

@property(nonatomic) NSArray* local;
@property(nonatomic) NSArray* mapped;
- (id) local: (NSArray*) local
     mapped: (NSArray*) mapped;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

