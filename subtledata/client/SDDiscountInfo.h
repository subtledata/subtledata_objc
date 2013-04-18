#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDDiscountInfo : NIKSwaggerObject

@property(nonatomic) NSNumber* discount_type;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* discount_amount;
- (id) discount_type: (NSNumber*) discount_type
     user_id: (NSNumber*) user_id
     discount_amount: (NSNumber*) discount_amount;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

