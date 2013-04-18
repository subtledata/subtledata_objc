#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDPayment : NIKSwaggerObject

@property(nonatomic) NSNumber* payment_id;
@property(nonatomic) NSString* card_type;
@property(nonatomic) NSNumber* tip_amount;
@property(nonatomic) NSNumber* total_amount;
@property(nonatomic) NSString* expiration_year;
@property(nonatomic) NSString* card_nickname;
@property(nonatomic) NSString* name_on_tender;
@property(nonatomic) NSString* expiration_month;
@property(nonatomic) NSNumber* amount_before_tip;
@property(nonatomic) NSNumber* credit_card_id;
@property(nonatomic) NSString* last_4_digits;
- (id) payment_id: (NSNumber*) payment_id
     card_type: (NSString*) card_type
     tip_amount: (NSNumber*) tip_amount
     total_amount: (NSNumber*) total_amount
     expiration_year: (NSString*) expiration_year
     card_nickname: (NSString*) card_nickname
     name_on_tender: (NSString*) name_on_tender
     expiration_month: (NSString*) expiration_month
     amount_before_tip: (NSNumber*) amount_before_tip
     credit_card_id: (NSNumber*) credit_card_id
     last_4_digits: (NSString*) last_4_digits;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

