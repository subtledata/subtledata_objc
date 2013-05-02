#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDPreAuthPayment : NIKSwaggerObject

@property(nonatomic) NSNumber* status;
@property(nonatomic) NSNumber* tip_amount;
@property(nonatomic) NSNumber* total_amount;
@property(nonatomic) NSNumber* amount_before_tip;
@property(nonatomic) NSString* payment_source;
@property(nonatomic) NSNumber* external_payment_id;
@property(nonatomic) NSString* external_response_field_1;
@property(nonatomic) NSString* tender_type_name;
@property(nonatomic) NSString* external_response_field_2;
@property(nonatomic) NSString* external_response_field_3;
@property(nonatomic) NSString* external_response_field_4;
- (id) status: (NSNumber*) status
     tip_amount: (NSNumber*) tip_amount
     total_amount: (NSNumber*) total_amount
     amount_before_tip: (NSNumber*) amount_before_tip
     payment_source: (NSString*) payment_source
     external_payment_id: (NSNumber*) external_payment_id
     external_response_field_1: (NSString*) external_response_field_1
     tender_type_name: (NSString*) tender_type_name
     external_response_field_2: (NSString*) external_response_field_2
     external_response_field_3: (NSString*) external_response_field_3
     external_response_field_4: (NSString*) external_response_field_4;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

