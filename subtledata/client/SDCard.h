#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDCard : NIKSwaggerObject

@property(nonatomic) NSString* name_on_card;
@property(nonatomic) NSString* card_type;
@property(nonatomic) NSString* expiration_year;
@property(nonatomic) NSNumber* card_id;
@property(nonatomic) NSString* expiration_month;
@property(nonatomic) NSString* nickname;
@property(nonatomic) NSString* last_4_digits;
- (id) name_on_card: (NSString*) name_on_card
     card_type: (NSString*) card_type
     expiration_year: (NSString*) expiration_year
     card_id: (NSNumber*) card_id
     expiration_month: (NSString*) expiration_month
     nickname: (NSString*) nickname
     last_4_digits: (NSString*) last_4_digits;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

