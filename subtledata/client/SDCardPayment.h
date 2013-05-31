#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDCardPayment : NIKSwaggerObject

@property(nonatomic) NSString* name_on_card;
@property(nonatomic) NSNumber* tip_amount;
@property(nonatomic) NSString* expiration_year;
@property(nonatomic) NSNumber* amount_before_tip;
@property(nonatomic) NSNumber* tip_type;
@property(nonatomic) NSNumber* card_id;
@property(nonatomic) NSString* expiration_month;
@property(nonatomic) NSString* mag_track_2;
@property(nonatomic) NSString* mag_track_1;
@property(nonatomic) NSString* signature_image;
@property(nonatomic) NSNumber* tender_type_id;
@property(nonatomic) NSString* billing_zip;
@property(nonatomic) NSString* card_number;
- (id) name_on_card: (NSString*) name_on_card
     tip_amount: (NSNumber*) tip_amount
     expiration_year: (NSString*) expiration_year
     amount_before_tip: (NSNumber*) amount_before_tip
     tip_type: (NSNumber*) tip_type
     card_id: (NSNumber*) card_id
     expiration_month: (NSString*) expiration_month
     mag_track_2: (NSString*) mag_track_2
     mag_track_1: (NSString*) mag_track_1
     signature_image: (NSString*) signature_image
     tender_type_id: (NSNumber*) tender_type_id
     billing_zip: (NSString*) billing_zip
     card_number: (NSString*) card_number;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

