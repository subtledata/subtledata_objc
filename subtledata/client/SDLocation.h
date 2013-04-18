#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDTenderType.h"
#import "SDRevenueCenter.h"
#import "SDDiscountType.h"
#import "SDTerminal.h"

@interface SDLocation : NIKSwaggerObject

@property(nonatomic) NSString* cross_streets;
@property(nonatomic) NSString* receipt_number_instructions;
@property(nonatomic) NSNumber* employee_request_through_app;
@property(nonatomic) NSNumber* menu_ordering_available;
@property(nonatomic) NSString* payment_via_credit_card_available_message;
@property(nonatomic) NSString* postal_code;
@property(nonatomic) NSNumber* location_id;
@property(nonatomic) NSNumber* app_specials;
@property(nonatomic) NSString* user_rating;
@property(nonatomic) NSString* location_name;
@property(nonatomic) NSArray* tender_types;
@property(nonatomic) NSNumber* process_new_credit_cards;
@property(nonatomic) NSString* table_number_instructions;
@property(nonatomic) NSString* state;
@property(nonatomic) NSNumber* color_theme;
@property(nonatomic) NSNumber* latitude;
@property(nonatomic) NSString* logo_url;
@property(nonatomic) NSString* website_url;
@property(nonatomic) NSArray* revenue_centers;
@property(nonatomic) NSString* city;
@property(nonatomic) NSString* ordering_available_message;
@property(nonatomic) NSString* phone;
@property(nonatomic) NSArray* terminals;
@property(nonatomic) NSString* location_picture_url;
@property(nonatomic) NSNumber* favorites_ordering_available;
@property(nonatomic) NSString* neighborhood_name;
@property(nonatomic) NSArray* discount_types;
@property(nonatomic) NSNumber* longitude;
@property(nonatomic) NSNumber* price_rating;
@property(nonatomic) NSNumber* process_pre_authed_cards;
@property(nonatomic) NSString* address_line_2;
@property(nonatomic) NSString* address_line_1;
- (id) cross_streets: (NSString*) cross_streets
     receipt_number_instructions: (NSString*) receipt_number_instructions
     employee_request_through_app: (NSNumber*) employee_request_through_app
     menu_ordering_available: (NSNumber*) menu_ordering_available
     payment_via_credit_card_available_message: (NSString*) payment_via_credit_card_available_message
     postal_code: (NSString*) postal_code
     location_id: (NSNumber*) location_id
     app_specials: (NSNumber*) app_specials
     user_rating: (NSString*) user_rating
     location_name: (NSString*) location_name
     tender_types: (NSArray*) tender_types
     process_new_credit_cards: (NSNumber*) process_new_credit_cards
     table_number_instructions: (NSString*) table_number_instructions
     state: (NSString*) state
     color_theme: (NSNumber*) color_theme
     latitude: (NSNumber*) latitude
     logo_url: (NSString*) logo_url
     website_url: (NSString*) website_url
     revenue_centers: (NSArray*) revenue_centers
     city: (NSString*) city
     ordering_available_message: (NSString*) ordering_available_message
     phone: (NSString*) phone
     terminals: (NSArray*) terminals
     location_picture_url: (NSString*) location_picture_url
     favorites_ordering_available: (NSNumber*) favorites_ordering_available
     neighborhood_name: (NSString*) neighborhood_name
     discount_types: (NSArray*) discount_types
     longitude: (NSNumber*) longitude
     price_rating: (NSNumber*) price_rating
     process_pre_authed_cards: (NSNumber*) process_pre_authed_cards
     address_line_2: (NSString*) address_line_2
     address_line_1: (NSString*) address_line_1;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

