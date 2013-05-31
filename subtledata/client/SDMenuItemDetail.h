#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDItemImage.h"

@interface SDMenuItemDetail : NIKSwaggerObject

@property(nonatomic) NSString* description;
@property(nonatomic) NSNumber* price;
@property(nonatomic) NSString* name;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSNumber* item_id;
@property(nonatomic) NSArray* item_images;
- (id) description: (NSString*) description
     price: (NSNumber*) price
     name: (NSString*) name
     revenue_center_id: (NSNumber*) revenue_center_id
     item_id: (NSNumber*) item_id
     item_images: (NSArray*) item_images;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

