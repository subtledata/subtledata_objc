#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDOpenTicket.h"

@interface SDTableDetails : NIKSwaggerObject

@property(nonatomic) NSString* pos_table_id;
@property(nonatomic) NSNumber* subtledata_id;
@property(nonatomic) NSString* revenue_center_name;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSArray* open_tickets;
@property(nonatomic) NSString* name;
- (id) pos_table_id: (NSString*) pos_table_id
     subtledata_id: (NSNumber*) subtledata_id
     revenue_center_name: (NSString*) revenue_center_name
     revenue_center_id: (NSNumber*) revenue_center_id
     open_tickets: (NSArray*) open_tickets
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

