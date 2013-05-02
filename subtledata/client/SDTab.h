#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTab : NIKSwaggerObject

@property(nonatomic) NSNumber* payment_id;
@property(nonatomic) NSString* name_on_card;
@property(nonatomic) NSString* card_type;
@property(nonatomic) NSString* expiration_year;
@property(nonatomic) NSString* card_nickname;
@property(nonatomic) NSNumber* card_id;
@property(nonatomic) NSString* expiration_month;
@property(nonatomic) NSNumber* pos_ticket_id;
@property(nonatomic) NSNumber* table_id;
@property(nonatomic) NSNumber* ticket_id;
@property(nonatomic) NSString* table_name;
@property(nonatomic) NSNumber* pre_auth_amount;
@property(nonatomic) NSString* last_4_digits;
- (id) payment_id: (NSNumber*) payment_id
     name_on_card: (NSString*) name_on_card
     card_type: (NSString*) card_type
     expiration_year: (NSString*) expiration_year
     card_nickname: (NSString*) card_nickname
     card_id: (NSNumber*) card_id
     expiration_month: (NSString*) expiration_month
     pos_ticket_id: (NSNumber*) pos_ticket_id
     table_id: (NSNumber*) table_id
     ticket_id: (NSNumber*) ticket_id
     table_name: (NSString*) table_name
     pre_auth_amount: (NSNumber*) pre_auth_amount
     last_4_digits: (NSString*) last_4_digits;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

