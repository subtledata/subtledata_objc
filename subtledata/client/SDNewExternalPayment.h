#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewExternalPayment : NIKSwaggerObject

@property(nonatomic) NSString* payment_source_name;
@property(nonatomic) NSNumber* tip_amount;
@property(nonatomic) NSString* payment_response_tracking_2;
@property(nonatomic) NSString* payment_response_tracking_3;
@property(nonatomic) NSString* payment_response_tracking_1;
@property(nonatomic) NSString* payment_response_tracking_4;
@property(nonatomic) NSNumber* amount_before_tip;
@property(nonatomic) NSNumber* tender_type_id;
@property(nonatomic) NSNumber* user_id;
@property(nonatomic) NSNumber* device_id;
- (id) payment_source_name: (NSString*) payment_source_name
     tip_amount: (NSNumber*) tip_amount
     payment_response_tracking_2: (NSString*) payment_response_tracking_2
     payment_response_tracking_3: (NSString*) payment_response_tracking_3
     payment_response_tracking_1: (NSString*) payment_response_tracking_1
     payment_response_tracking_4: (NSString*) payment_response_tracking_4
     amount_before_tip: (NSNumber*) amount_before_tip
     tender_type_id: (NSNumber*) tender_type_id
     user_id: (NSNumber*) user_id
     device_id: (NSNumber*) device_id;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

