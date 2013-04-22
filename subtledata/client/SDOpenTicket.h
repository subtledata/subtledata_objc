#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDItem.h"

@interface SDOpenTicket : NIKSwaggerObject

@property(nonatomic) NSNumber* employee_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* number_of_guests;
@property(nonatomic) NSArray* items;
@property(nonatomic) NSNumber* tax;
@property(nonatomic) NSNumber* discount;
@property(nonatomic) NSNumber* pos_ticket_id;
@property(nonatomic) NSNumber* remaining_balance;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSNumber* ticket_id;
@property(nonatomic) NSString* date_opened;
@property(nonatomic) NSString* table_name;
@property(nonatomic) NSNumber* total;
@property(nonatomic) NSNumber* subtotal;
@property(nonatomic) NSNumber* service_charge;
- (id) employee_id: (NSNumber*) employee_id
     user_id: (NSNumber*) user_id
     number_of_guests: (NSNumber*) number_of_guests
     items: (NSArray*) items
     tax: (NSNumber*) tax
     discount: (NSNumber*) discount
     pos_ticket_id: (NSNumber*) pos_ticket_id
     remaining_balance: (NSNumber*) remaining_balance
     table_id: (NSNumber*) table_id
     ticket_id: (NSNumber*) ticket_id
     date_opened: (NSString*) date_opened
     table_name: (NSString*) table_name
     total: (NSNumber*) total
     subtotal: (NSNumber*) subtotal
     service_charge: (NSNumber*) service_charge;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

