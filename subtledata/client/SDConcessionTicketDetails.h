#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDItem.h"
#import "SDCardPayment.h"

@interface SDConcessionTicketDetails : NIKSwaggerObject

@property(nonatomic) NSNumber* employee_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* number_of_people_in_party;
@property(nonatomic) NSString* ticket_notes;
@property(nonatomic) NSArray* items;
@property(nonatomic) NSNumber* terminal_id;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSArray* card_payments;
@property(nonatomic) NSNumber* device_id;
- (id) employee_id: (NSNumber*) employee_id
     user_id: (NSNumber*) user_id
     number_of_people_in_party: (NSNumber*) number_of_people_in_party
     ticket_notes: (NSString*) ticket_notes
     items: (NSArray*) items
     terminal_id: (NSNumber*) terminal_id
     table_id: (NSNumber*) table_id
     revenue_center_id: (NSNumber*) revenue_center_id
     card_payments: (NSArray*) card_payments
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

