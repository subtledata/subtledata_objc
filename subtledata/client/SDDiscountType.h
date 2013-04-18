#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDDiscountType : NIKSwaggerObject

@property(nonatomic) NSNumber* default_discount;
@property(nonatomic) NSNumber* discount_type_id;
@property(nonatomic) NSString* name;
- (id) default_discount: (NSNumber*) default_discount
     discount_type_id: (NSNumber*) discount_type_id
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

