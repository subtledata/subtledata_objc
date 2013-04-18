#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewTicket : NIKSwaggerObject

@property(nonatomic) NSNumber* employee_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* number_of_people_in_party;
@property(nonatomic) NSString* custom_ticket_name;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSNumber* device_id;
- (id) employee_id: (NSNumber*) employee_id
     user_id: (NSNumber*) user_id
     number_of_people_in_party: (NSNumber*) number_of_people_in_party
     custom_ticket_name: (NSString*) custom_ticket_name
     table_id: (NSNumber*) table_id
     revenue_center_id: (NSNumber*) revenue_center_id
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

