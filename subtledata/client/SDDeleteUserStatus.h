#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDDeleteUserStatus : NIKSwaggerObject

@property(nonatomic) NSString* result;
@property(nonatomic) NSNumber* success;
@property(nonatomic) NSString* error;
- (id) result: (NSString*) result
     success: (NSNumber*) success
     error: (NSString*) error;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

