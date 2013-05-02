#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDCardStatus : NIKSwaggerObject

@property(nonatomic) NSString* card_id;
@property(nonatomic) NSString* result;
@property(nonatomic) NSNumber* success;
@property(nonatomic) NSString* error;
- (id) card_id: (NSString*) card_id
     result: (NSString*) result
     success: (NSNumber*) success
     error: (NSString*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

