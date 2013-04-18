#import "NIKDate.h"
#import "SDLocation.h"

@implementation SDLocation

-(id)cross_streets: (NSString*) cross_streets
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
    address_line_1: (NSString*) address_line_1
{
  _cross_streets = cross_streets;
  _receipt_number_instructions = receipt_number_instructions;
  _employee_request_through_app = employee_request_through_app;
  _menu_ordering_available = menu_ordering_available;
  _payment_via_credit_card_available_message = payment_via_credit_card_available_message;
  _postal_code = postal_code;
  _location_id = location_id;
  _app_specials = app_specials;
  _user_rating = user_rating;
  _location_name = location_name;
  _tender_types = tender_types;
  _process_new_credit_cards = process_new_credit_cards;
  _table_number_instructions = table_number_instructions;
  _state = state;
  _color_theme = color_theme;
  _latitude = latitude;
  _logo_url = logo_url;
  _website_url = website_url;
  _revenue_centers = revenue_centers;
  _city = city;
  _ordering_available_message = ordering_available_message;
  _phone = phone;
  _terminals = terminals;
  _location_picture_url = location_picture_url;
  _favorites_ordering_available = favorites_ordering_available;
  _neighborhood_name = neighborhood_name;
  _discount_types = discount_types;
  _longitude = longitude;
  _price_rating = price_rating;
  _process_pre_authed_cards = process_pre_authed_cards;
  _address_line_2 = address_line_2;
  _address_line_1 = address_line_1;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _cross_streets = dict[@"cross_streets"]; 
        _receipt_number_instructions = dict[@"receipt_number_instructions"]; 
        _employee_request_through_app = dict[@"employee_request_through_app"]; 
        _menu_ordering_available = dict[@"menu_ordering_available"]; 
        _payment_via_credit_card_available_message = dict[@"payment_via_credit_card_available_message"]; 
        _postal_code = dict[@"postal_code"]; 
        _location_id = dict[@"location_id"]; 
        _app_specials = dict[@"app_specials"]; 
        _user_rating = dict[@"user_rating"]; 
        _location_name = dict[@"location_name"]; 
        id tender_types_dict = dict[@"tender_types"];
        if([tender_types_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)tender_types_dict count]];

            if([(NSArray*)tender_types_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)tender_types_dict) {
                    SDTenderType* d = [[SDTenderType alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _tender_types = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _tender_types = [[NSArray alloc] init];
            }
        }
        else {
            _tender_types = [[NSArray alloc] init];
        }
        _process_new_credit_cards = dict[@"process_new_credit_cards"]; 
        _table_number_instructions = dict[@"table_number_instructions"]; 
        _state = dict[@"state"]; 
        _color_theme = dict[@"color_theme"]; 
        _latitude = dict[@"latitude"]; 
        _logo_url = dict[@"logo_url"]; 
        _website_url = dict[@"website_url"]; 
        id revenue_centers_dict = dict[@"revenue_centers"];
        if([revenue_centers_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)revenue_centers_dict count]];

            if([(NSArray*)revenue_centers_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)revenue_centers_dict) {
                    SDRevenueCenter* d = [[SDRevenueCenter alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _revenue_centers = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _revenue_centers = [[NSArray alloc] init];
            }
        }
        else {
            _revenue_centers = [[NSArray alloc] init];
        }
        _city = dict[@"city"]; 
        _ordering_available_message = dict[@"ordering_available_message"]; 
        _phone = dict[@"phone"]; 
        id terminals_dict = dict[@"terminals"];
        if([terminals_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)terminals_dict count]];

            if([(NSArray*)terminals_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)terminals_dict) {
                    SDTerminal* d = [[SDTerminal alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _terminals = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _terminals = [[NSArray alloc] init];
            }
        }
        else {
            _terminals = [[NSArray alloc] init];
        }
        _location_picture_url = dict[@"location_picture_url"]; 
        _favorites_ordering_available = dict[@"favorites_ordering_available"]; 
        _neighborhood_name = dict[@"neighborhood_name"]; 
        id discount_types_dict = dict[@"discount_types"];
        if([discount_types_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)discount_types_dict count]];

            if([(NSArray*)discount_types_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)discount_types_dict) {
                    SDDiscountType* d = [[SDDiscountType alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _discount_types = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _discount_types = [[NSArray alloc] init];
            }
        }
        else {
            _discount_types = [[NSArray alloc] init];
        }
        _longitude = dict[@"longitude"]; 
        _price_rating = dict[@"price_rating"]; 
        _process_pre_authed_cards = dict[@"process_pre_authed_cards"]; 
        _address_line_2 = dict[@"address_line_2"]; 
        _address_line_1 = dict[@"address_line_1"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_cross_streets != nil) dict[@"cross_streets"] = _cross_streets ;
    if(_receipt_number_instructions != nil) dict[@"receipt_number_instructions"] = _receipt_number_instructions ;
    if(_employee_request_through_app != nil) dict[@"employee_request_through_app"] = _employee_request_through_app ;
    if(_menu_ordering_available != nil) dict[@"menu_ordering_available"] = _menu_ordering_available ;
    if(_payment_via_credit_card_available_message != nil) dict[@"payment_via_credit_card_available_message"] = _payment_via_credit_card_available_message ;
    if(_postal_code != nil) dict[@"postal_code"] = _postal_code ;
    if(_location_id != nil) dict[@"location_id"] = _location_id ;
    if(_app_specials != nil) dict[@"app_specials"] = _app_specials ;
    if(_user_rating != nil) dict[@"user_rating"] = _user_rating ;
    if(_location_name != nil) dict[@"location_name"] = _location_name ;
    if(_tender_types != nil){
        if([_tender_types isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDTenderType *tender_types in (NSArray*)_tender_types) {
                [array addObject:[(NIKSwaggerObject*)tender_types asDictionary]];
            }
            dict[@"tender_types"] = array;
        }
        else if(_tender_types && [_tender_types isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_tender_types toString];
            if(dateString){
                dict[@"tender_types"] = dateString;
            }
        }
    }
    else {
    if(_tender_types != nil) dict[@"tender_types"] = [(NIKSwaggerObject*)_tender_types asDictionary];
    }
    if(_process_new_credit_cards != nil) dict[@"process_new_credit_cards"] = _process_new_credit_cards ;
    if(_table_number_instructions != nil) dict[@"table_number_instructions"] = _table_number_instructions ;
    if(_state != nil) dict[@"state"] = _state ;
    if(_color_theme != nil) dict[@"color_theme"] = _color_theme ;
    if(_latitude != nil) dict[@"latitude"] = _latitude ;
    if(_logo_url != nil) dict[@"logo_url"] = _logo_url ;
    if(_website_url != nil) dict[@"website_url"] = _website_url ;
    if(_revenue_centers != nil){
        if([_revenue_centers isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDRevenueCenter *revenue_centers in (NSArray*)_revenue_centers) {
                [array addObject:[(NIKSwaggerObject*)revenue_centers asDictionary]];
            }
            dict[@"revenue_centers"] = array;
        }
        else if(_revenue_centers && [_revenue_centers isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_revenue_centers toString];
            if(dateString){
                dict[@"revenue_centers"] = dateString;
            }
        }
    }
    else {
    if(_revenue_centers != nil) dict[@"revenue_centers"] = [(NIKSwaggerObject*)_revenue_centers asDictionary];
    }
    if(_city != nil) dict[@"city"] = _city ;
    if(_ordering_available_message != nil) dict[@"ordering_available_message"] = _ordering_available_message ;
    if(_phone != nil) dict[@"phone"] = _phone ;
    if(_terminals != nil){
        if([_terminals isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDTerminal *terminals in (NSArray*)_terminals) {
                [array addObject:[(NIKSwaggerObject*)terminals asDictionary]];
            }
            dict[@"terminals"] = array;
        }
        else if(_terminals && [_terminals isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_terminals toString];
            if(dateString){
                dict[@"terminals"] = dateString;
            }
        }
    }
    else {
    if(_terminals != nil) dict[@"terminals"] = [(NIKSwaggerObject*)_terminals asDictionary];
    }
    if(_location_picture_url != nil) dict[@"location_picture_url"] = _location_picture_url ;
    if(_favorites_ordering_available != nil) dict[@"favorites_ordering_available"] = _favorites_ordering_available ;
    if(_neighborhood_name != nil) dict[@"neighborhood_name"] = _neighborhood_name ;
    if(_discount_types != nil){
        if([_discount_types isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SDDiscountType *discount_types in (NSArray*)_discount_types) {
                [array addObject:[(NIKSwaggerObject*)discount_types asDictionary]];
            }
            dict[@"discount_types"] = array;
        }
        else if(_discount_types && [_discount_types isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_discount_types toString];
            if(dateString){
                dict[@"discount_types"] = dateString;
            }
        }
    }
    else {
    if(_discount_types != nil) dict[@"discount_types"] = [(NIKSwaggerObject*)_discount_types asDictionary];
    }
    if(_longitude != nil) dict[@"longitude"] = _longitude ;
    if(_price_rating != nil) dict[@"price_rating"] = _price_rating ;
    if(_process_pre_authed_cards != nil) dict[@"process_pre_authed_cards"] = _process_pre_authed_cards ;
    if(_address_line_2 != nil) dict[@"address_line_2"] = _address_line_2 ;
    if(_address_line_1 != nil) dict[@"address_line_1"] = _address_line_1 ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

