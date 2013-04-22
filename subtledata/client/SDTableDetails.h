#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDOpenTicket.h"

@interface SDTableDetails : NIKSwaggerObject

@property(nonatomic) NSArray* open_tickets;
- (id) open_tickets: (NSArray*) open_tickets;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

