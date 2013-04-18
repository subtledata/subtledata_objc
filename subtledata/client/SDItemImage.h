#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDItemImage : NIKSwaggerObject

@property(nonatomic) NSString* image_url;
@property(nonatomic) NSNumber* image_type_id;
- (id) image_url: (NSString*) image_url
     image_type_id: (NSNumber*) image_type_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

