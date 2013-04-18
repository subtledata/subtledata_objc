#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDNewCard : NIKSwaggerObject

@property(nonatomic) NSString* name_on_card;
@property(nonatomic) NSString* expiration_year;
@property(nonatomic) NSString* card_nickname;
@property(nonatomic) NSString* billing_zip;
@property(nonatomic) NSString* expiration_month;
@property(nonatomic) NSString* mag_track_2;
@property(nonatomic) NSString* mag_track_1;
@property(nonatomic) NSString* signature_image;
@property(nonatomic) NSString* card_number;
- (id) name_on_card: (NSString*) name_on_card
     expiration_year: (NSString*) expiration_year
     card_nickname: (NSString*) card_nickname
     billing_zip: (NSString*) billing_zip
     expiration_month: (NSString*) expiration_month
     mag_track_2: (NSString*) mag_track_2
     mag_track_1: (NSString*) mag_track_1
     signature_image: (NSString*) signature_image
     card_number: (NSString*) card_number;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

