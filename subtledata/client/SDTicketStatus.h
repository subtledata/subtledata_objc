#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTicketStatus : NIKSwaggerObject

@property(nonatomic) NSString* error;
@property(nonatomic) NSString* ticket_id;
@property(nonatomic) NSNumber* success;
@property(nonatomic) NSString* result;
- (id) error: (NSString*) error
     ticket_id: (NSString*) ticket_id
     success: (NSNumber*) success
     result: (NSString*) result;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

