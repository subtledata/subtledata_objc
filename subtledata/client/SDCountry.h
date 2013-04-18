#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDCountry : NIKSwaggerObject

@property(nonatomic) NSString* country_name;
@property(nonatomic) NSNumber* country_id;
- (id) country_name: (NSString*) country_name
     country_id: (NSNumber*) country_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

