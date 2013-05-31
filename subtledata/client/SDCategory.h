#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDMenuItemDetail.h"
#import "SDCategoryImage.h"

@interface SDCategory : NIKSwaggerObject

@property(nonatomic) NSArray* items;
@property(nonatomic) NSNumber* has_items;
@property(nonatomic) NSString* instructional_text;
@property(nonatomic) NSArray* category_images;
@property(nonatomic) NSNumber* category_id;
@property(nonatomic) NSNumber* has_subcategories;
@property(nonatomic) NSString* category_name;
- (id) items: (NSArray*) items
     has_items: (NSNumber*) has_items
     instructional_text: (NSString*) instructional_text
     category_images: (NSArray*) category_images
     category_id: (NSNumber*) category_id
     has_subcategories: (NSNumber*) has_subcategories
     category_name: (NSString*) category_name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

