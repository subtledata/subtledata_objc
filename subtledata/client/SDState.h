#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDState : NIKSwaggerObject

@property(nonatomic) NSString* abbreviation;
@property(nonatomic) NSNumber* state_id;
@property(nonatomic) NSNumber* country_id;
- (id) abbreviation: (NSString*) abbreviation
     state_id: (NSNumber*) state_id
     country_id: (NSNumber*) country_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

