#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDCardStatus : NIKSwaggerObject

@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* success;
@property(nonatomic) NSString* card_id;
@property(nonatomic) NSString* result;
@property(nonatomic) NSString* error;
@property(nonatomic) NSNumber* device_id;
- (id) user_id: (NSNumber*) user_id
     success: (NSNumber*) success
     card_id: (NSString*) card_id
     result: (NSString*) result
     error: (NSString*) error
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

