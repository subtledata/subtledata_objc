#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDItemImage.h"
#import "SDModifiertype.h"

@interface SDMenuItem : NIKSwaggerObject

@property(nonatomic) NSString* sku;
@property(nonatomic) NSNumber* food_flag;
@property(nonatomic) NSNumber* alcohol_flag;
@property(nonatomic) NSString* display_name;
@property(nonatomic) NSString* name;
@property(nonatomic) NSNumber* merchandise_flag;
@property(nonatomic) NSNumber* available_for_order;
@property(nonatomic) NSNumber* price;
@property(nonatomic) NSString* description;
@property(nonatomic) NSString* UPC;
@property(nonatomic) NSArray* ModifierTypes;
@property(nonatomic) NSArray* item_images;
@property(nonatomic) NSNumber* cost;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSNumber* item_id;
@property(nonatomic) NSNumber* local_pos_id;
@property(nonatomic) NSNumber* out_of_stock_flag;
- (id) sku: (NSString*) sku
     food_flag: (NSNumber*) food_flag
     alcohol_flag: (NSNumber*) alcohol_flag
     display_name: (NSString*) display_name
     name: (NSString*) name
     merchandise_flag: (NSNumber*) merchandise_flag
     available_for_order: (NSNumber*) available_for_order
     price: (NSNumber*) price
     description: (NSString*) description
     UPC: (NSString*) UPC
     ModifierTypes: (NSArray*) ModifierTypes
     item_images: (NSArray*) item_images
     cost: (NSNumber*) cost
     revenue_center_id: (NSNumber*) revenue_center_id
     item_id: (NSNumber*) item_id
     local_pos_id: (NSNumber*) local_pos_id
     out_of_stock_flag: (NSNumber*) out_of_stock_flag;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

