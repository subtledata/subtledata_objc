#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDPreAuthCard.h"
#import "SDPayment.h"
#import "SDItem.h"
#import "SDConnectedUser.h"
#import "SDExternalPayment.h"
#import "SDPreAuthPayment.h"

@interface SDTicket : NIKSwaggerObject

@property(nonatomic) NSString* date_closed;
@property(nonatomic) NSNumber* tax;
@property(nonatomic) NSString* date_opened;
@property(nonatomic) NSNumber* total;
@property(nonatomic) NSNumber* location_id;
@property(nonatomic) NSNumber* employee_id;
@property(nonatomic) NSNumber* ticket_open;
@property(nonatomic) NSArray* pre_auth_payments;
@property(nonatomic) NSNumber* remaining_balance;
@property(nonatomic) NSNumber* ticket_id;
@property(nonatomic) NSString* table_name;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSArray* pre_auth_cards;
@property(nonatomic) NSNumber* discount;
@property(nonatomic) NSArray* external_payments;
@property(nonatomic) NSNumber* cover_count;
@property(nonatomic) NSNumber* subtotal;
@property(nonatomic) NSNumber* service_charge;
@property(nonatomic) NSString* date_modified;
@property(nonatomic) NSArray* items;
@property(nonatomic) NSNumber* pos_ticket_id;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSArray* payments;
@property(nonatomic) NSArray* connected_users;
- (id) date_closed: (NSString*) date_closed
     tax: (NSNumber*) tax
     date_opened: (NSString*) date_opened
     total: (NSNumber*) total
     location_id: (NSNumber*) location_id
     employee_id: (NSNumber*) employee_id
     ticket_open: (NSNumber*) ticket_open
     pre_auth_payments: (NSArray*) pre_auth_payments
     remaining_balance: (NSNumber*) remaining_balance
     ticket_id: (NSNumber*) ticket_id
     table_name: (NSString*) table_name
     revenue_center_id: (NSNumber*) revenue_center_id
     user_id: (NSNumber*) user_id
     pre_auth_cards: (NSArray*) pre_auth_cards
     discount: (NSNumber*) discount
     external_payments: (NSArray*) external_payments
     cover_count: (NSNumber*) cover_count
     subtotal: (NSNumber*) subtotal
     service_charge: (NSNumber*) service_charge
     date_modified: (NSString*) date_modified
     items: (NSArray*) items
     pos_ticket_id: (NSNumber*) pos_ticket_id
     table_id: (NSNumber*) table_id
     payments: (NSArray*) payments
     connected_users: (NSArray*) connected_users;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

