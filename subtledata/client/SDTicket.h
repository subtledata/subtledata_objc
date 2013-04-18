#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDPayment.h"
#import "SDItem.h"
#import "SDConnectedUser.h"

@interface SDTicket : NIKSwaggerObject

@property(nonatomic) NSNumber* employee_id;
@property(nonatomic) NSNumber* ticket_open;
@property(nonatomic) NSArray* items;
@property(nonatomic) NSNumber* tax;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSNumber* discount;
@property(nonatomic) NSNumber* pos_ticket_id;
@property(nonatomic) NSNumber* remaining_balance;
@property(nonatomic) NSString* table_name;
@property(nonatomic) NSNumber* ticket_id;
@property(nonatomic) NSArray* connected_users;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* total;
@property(nonatomic) NSNumber* subtotal;
@property(nonatomic) NSNumber* service_charge;
@property(nonatomic) NSArray* payments;
- (id) employee_id: (NSNumber*) employee_id
     ticket_open: (NSNumber*) ticket_open
     items: (NSArray*) items
     tax: (NSNumber*) tax
     table_id: (NSNumber*) table_id
     discount: (NSNumber*) discount
     pos_ticket_id: (NSNumber*) pos_ticket_id
     remaining_balance: (NSNumber*) remaining_balance
     table_name: (NSString*) table_name
     ticket_id: (NSNumber*) ticket_id
     connected_users: (NSArray*) connected_users
     user_id: (NSNumber*) user_id
     total: (NSNumber*) total
     subtotal: (NSNumber*) subtotal
     service_charge: (NSNumber*) service_charge
     payments: (NSArray*) payments;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

