#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewPayment : NIKSwaggerObject

@property(nonatomic) NSNumber* tip_amount;
@property(nonatomic) NSNumber* tip_type;
@property(nonatomic) NSNumber* testing;
@property(nonatomic) NSString* card_cvv;
@property(nonatomic) NSNumber* card_id;
@property(nonatomic) NSNumber* amount_before_tip;
@property(nonatomic) NSNumber* user_id;
- (id) tip_amount: (NSNumber*) tip_amount
     tip_type: (NSNumber*) tip_type
     testing: (NSNumber*) testing
     card_cvv: (NSString*) card_cvv
     card_id: (NSNumber*) card_id
     amount_before_tip: (NSNumber*) amount_before_tip
     user_id: (NSNumber*) user_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

